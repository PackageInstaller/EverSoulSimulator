"use strict";

function log(msg) {
    console.log(`[${new Date().toISOString()}] ${msg}`);
}

// 1. 注册进程级异常处理器（捕获 SIGSEGV / 内存越界等硬件/软件崩溃）
Process.setExceptionHandler(function (details) {
    log("\n[!!!] ================== 捕获到程序崩溃 (EXCEPTION) ================== [!!!]");
    log(`[*] 异常类型: ${details.type}`);
    log(`[*] 错误地址: ${details.address}`);
    
    // 打印当时的寄存器状态
    const ctx = details.context;
    log("[*] 寄存器状态:");
    log(`    pc: ${ctx.pc}  lr: ${ctx.lr}  sp: ${ctx.sp}`);
    
    // 定位崩溃发生在哪一个 .so 中
    const module = Process.findModuleByAddress(ctx.pc);
    if (module) {
        const offset = ctx.pc.sub(module.base);
        log(`[*] 崩溃发生在模块: ${module.name} (基址: ${module.base}, 偏移量: 0x${offset.toString(16)})`);
    } else {
        log(`[*] 崩溃发生在未知内存区域（可能是动态生成的代码或 PC 寄存器已被损坏）`);
    }

    // 尝试解析崩溃时的调用栈 (Backtrace)
    try {
        log("[*] 正在解析崩溃调用栈...");
        // 使用 FUZZY 模糊追踪（对抗加壳或去符号的库容错率更高）
        const backtrace = Thread.backtrace(ctx, Backtracer.FUZZY); 
        const resolved = backtrace.map(addr => {
            try {
                const sym = DebugSymbol.fromAddress(addr);
                return `    - ${addr} : ${sym.name} (${sym.moduleName}+0x${addr.sub(sym.address).toString(16)})`;
            } catch (e) {
                const mod = Process.findModuleByAddress(addr);
                if (mod) {
                    return `    - ${addr} : ${mod.name}+0x${addr.sub(mod.base).toString(16)}`;
                }
                return `    - ${addr}`;
            }
        }).join("\n");
        console.log(resolved);
    } catch (e) {
        log(`[-] 无法生成崩溃调用栈: ${e.message}`);
    }
    return false; // 返回 false，交由系统默认的处理器继续处理
});

// 2. 拦截 libc.so 中所有的主动退出和终止函数
const exitFunctions = [
    { name: "exit" },
    { name: "_exit" },
    { name: "abort" },
    { name: "kill" },
    { name: "tgkill" }
];

exitFunctions.forEach(item => {
    const addr = Module.findExportByName("libc.so", item.name);
    if (addr) {
        Interceptor.attach(addr, {
            onEnter: function (args) {
                log(`\n[!!!] ================== 检测到主动退出调用: ${item.name} ================== [!!!]`);
                
                // 打印是谁调用了 exit/abort
                const caller = this.context.lr;
                const mod = Process.findModuleByAddress(caller);
                if (mod) {
                    log(`[*] 调用源模块: ${mod.name} (基址: ${mod.base}, 偏移量: 0x${caller.sub(mod.base).toString(16)})`);
                } else {
                    log(`[*] 调用源处于未知内存: ${caller}`);
                }

                // 打印调用栈
                try {
                    log("[*] 导致退出的调用栈 (Backtrace):");
                    const bt = Thread.backtrace(this.context, Backtracer.FUZZY);
                    const resolved = bt.map(addr => {
                        try {
                            const sym = DebugSymbol.fromAddress(addr);
                            return `    - ${addr} : ${sym.name} (${sym.moduleName}+0x${addr.sub(sym.address).toString(16)})`;
                        } catch (e) {
                            const mod = Process.findModuleByAddress(addr);
                            if (mod) {
                                return `    - ${addr} : ${mod.name}+0x${addr.sub(mod.base).toString(16)}`;
                            }
                            return `    - ${addr}`;
                        }
                    }).join("\n");
                    console.log(resolved);
                } catch (e) {
                    log(`[-] 无法生成退出调用栈: ${e.message}`);
                }
            }
        });
        log(`[+] 已挂钩退出监控点: ${item.name}`);
    }
});

// 3. 监控模块动态加载路径
const dlopen = Module.findExportByName("libc.so", "dlopen");
const android_dlopen_ext = Module.findExportByName("libc.so", "android_dlopen_ext");

const dlHook = {
    onEnter: function (args) {
        this.path = args[0].readCString();
        log(`[Loading] 尝试加载: ${this.path}`);
    },
    onLeave: function (retval) {
        if (!retval.isNull()) {
            // log(`[Loaded] 加载完成: ${this.path}`);
        }
    }
};

if (dlopen) Interceptor.attach(dlopen, dlHook);
if (android_dlopen_ext) Interceptor.attach(android_dlopen_ext, dlHook);

log("[*] 崩溃前日志抓取脚本启动完毕。");