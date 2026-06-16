# URLHook Smali 注入指南
#
# 将 Java 层 URL 重定向直接注入 classes4.dex（纯 Smali，零 native so 依赖）
# 和之前的 LIAPP 绕过放在同一个 DEX 中。

## 步骤 1: 放入 URLHook.smali

将 smali_inject/com/rikka/redirect/URLHook.smali 复制到
反编译的 classes4.dex 的 smali 目录中：
  smali/com/rikka/redirect/URLHook.smali

## 步骤 2: Patch java.net.URL 构造函数

### 2a. java.net.URL.<init>(String)
目标文件: smali/java/net/URL.smali
找到方法: .method public constructor <init>(Ljava/lang/String;)V

在 .locals 声明之后、第一条指令之前插入：
    invoke-static {p1}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1

### 2b. java.net.URL.<init>(URL, String)  
目标文件: smali/java/net/URL.smali
找到方法: .method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V

在 .locals 声明之后、第一条指令之前插入：
    invoke-static {p2}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2

### 2c. java.net.URL.<init>(URL, String, URLStreamHandler)
目标文件: smali/java/net/URL.smali
找到方法: .method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

在 .locals 声明之后、第一条指令之前插入：
    invoke-static {p2}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2

## 步骤 3: 重新编译 APK

smali assemble → classes4.dex → 替换回 APK → 签名 → 安装
