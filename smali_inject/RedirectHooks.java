package com.rikka.eversouloffline;

// LSPlant callback 컨테이너.
// urlInit1~3, okhttpBuilderUrl: RegisterNatives로 C++ native 바인딩.
// C++에서 redirect_url_cpp(spec/url) → LSPlant backup 원본 메서드 직접 invoke.
public final class RedirectHooks {

    // LSPlant hooker_object 인스턴스 생성용
    public RedirectHooks() {}

    // java.net.URL.<init>(String spec)
    // args[0]=this(URL), args[1]=spec(String)
    public native Object urlInit1(Object[] args);

    // java.net.URL.<init>(URL context, String spec)
    // args[0]=this(URL), args[1]=context(URL), args[2]=spec(String)
    public native Object urlInit2(Object[] args);

    // java.net.URL.<init>(URL context, String spec, URLStreamHandler handler)
    // args[0]=this(URL), args[1]=context(URL), args[2]=spec(String), args[3]=handler
    public native Object urlInit3(Object[] args);

    // okhttp3.Request$Builder.url(String url)
    // args[0]=this(Builder), args[1]=url(String)
    public native Object okhttpBuilderUrl(Object[] args);

    // android.os.Process.killProcess(int pid) — 게임 자기 종료 차단
    // static 메서드이므로 args[0]=pid(Integer)
    public Object hookKillProcess(Object[] args) { return null; }

    // com.kakaogame.util.HmacSHA256Util.verifySignature(String, String)
    // args[0]=this, args[1]=signature, args[2]=requestBody
    public Object hookVerifySignature(Object[] args) { return Boolean.TRUE; }
}
