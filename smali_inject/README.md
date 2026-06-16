# URLHook Smali 주입 가이드

Java 계층의 URL 리다이렉트를 `classes4.dex`에 직접 주입합니다.
순수 Smali 방식이며, native `.so` 의존성은 없습니다.
이전 LIAPP 우회 코드와 동일한 DEX 안에 배치합니다.

## 단계 1: URLHook.smali 배치

`smali_inject/com/rikka/redirect/URLHook.smali` 파일을
디컴파일된 `classes4.dex`의 smali 디렉터리 안으로 복사합니다.

복사 위치:

```text
smali/com/rikka/redirect/URLHook.smali
```

## 단계 2: java.net.URL 생성자 패치

### 2a. java.net.URL.<init>(String)

대상 파일:

```text
smali/java/net/URL.smali
```

대상 메서드:

```smali
.method public constructor <init>(Ljava/lang/String;)V
```

`.locals` 선언 바로 아래, 첫 번째 명령어 이전에 다음 코드를 삽입합니다.

```smali
invoke-static {p1}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
```

### 2b. java.net.URL.<init>(URL, String)

대상 파일:

```text
smali/java/net/URL.smali
```

대상 메서드:

```smali
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
```

`.locals` 선언 바로 아래, 첫 번째 명령어 이전에 다음 코드를 삽입합니다.

```smali
invoke-static {p2}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
move-result-object p2
```

### 2c. java.net.URL.<init>(URL, String, URLStreamHandler)

대상 파일:

```text
smali/java/net/URL.smali
```

대상 메서드:

```smali
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
```

`.locals` 선언 바로 아래, 첫 번째 명령어 이전에 다음 코드를 삽입합니다.

```smali
invoke-static {p2}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
move-result-object p2
```

## 단계 3: APK 재컴파일

다음 순서로 APK를 다시 빌드합니다.

```text
smali assemble → classes4.dex 생성 → APK에 다시 교체 → 서명 → 설치
```
