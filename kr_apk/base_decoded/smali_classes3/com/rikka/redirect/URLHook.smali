.class public final Lcom/rikka/redirect/URLHook;
.super Ljava/lang/Object;
.source "URLHook.java"


# static fields
.field private static final ACCOUNT_SELECT:Ljava/lang/String; = "http://127.0.0.1:9991/account-select"

.field private static final HOSTS:[Ljava/lang/String;

.field private static final LOCAL_HTTP:Ljava/lang/String; = "http://127.0.0.1:9991"

.field private static final LOCAL_WS:Ljava/lang/String; = "ws://127.0.0.1:9991"

.field private static final LOGIN_HOSTS:[Ljava/lang/String;

.field private static final PATCH_CDN_HOST:Ljava/lang/String; = "patch.esoul.kakaogames.com"

.field private static final PATCH_CDN_LIVE_PATH:Ljava/lang/String; = "/Live/"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 32
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "kakaogames.com"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "game.kakao.com"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "zinny3"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/rikka/redirect/URLHook;->HOSTS:[Ljava/lang/String;

    .line 41
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "kauth.kakao.com"

    aput-object v2, v1, v3

    const-string v2, "kapi.kakao.com"

    aput-object v2, v1, v4

    const-string v2, "accounts.kakao.com"

    aput-object v2, v1, v5

    const-string v2, "accounts.google.com"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "facebook.com"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "appleid.apple.com"

    aput-object v2, v1, v0

    sput-object v1, Lcom/rikka/redirect/URLHook;->LOGIN_HOSTS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rebuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 97
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    if-gez v0, :cond_9

    .line 99
    return-object p1

    .line 101
    :cond_9
    add-int/lit8 v0, v0, 0x3

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 103
    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 105
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x23

    if-ne v2, v3, :cond_27

    goto :goto_2a

    .line 103
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 106
    :cond_2a
    :goto_2a
    nop

    .line 107
    move v1, v0

    .line 110
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isPatchCdnLiveUrl(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static redirect(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/rikka/redirect/URLHook;->isPatchCdnLiveUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_patch_cdn_checked

    return-object p0

    :cond_patch_cdn_checked
    sget-object v0, Lcom/rikka/redirect/URLHook;->LOGIN_HOSTS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 60
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 61
    const-string p0, "http://127.0.0.1:9991/account-select"

    return-object p0

    .line 59
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 66
    :cond_19
    const-string v0, ".lockincomp.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_73

    const-string v1, "http://127.0.0.1:9991"

    if-eqz v0, :cond_28

    .line 67
    :try_start_23
    invoke-static {p0, v1}, Lcom/rikka/redirect/URLHook;->rebuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :cond_28
    nop

    .line 71
    sget-object v0, Lcom/rikka/redirect/URLHook;->HOSTS:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_3d

    aget-object v5, v0, v4

    .line 72
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 73
    nop

    .line 74
    const/4 v2, 0x1

    goto :goto_3d

    .line 71
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 77
    :cond_3d
    :goto_3d
    if-nez v2, :cond_40

    .line 78
    return-object p0

    .line 81
    :cond_40
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v2, "wss://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "ws://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    goto :goto_6c

    .line 85
    :cond_55
    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_67

    .line 88
    :cond_66
    return-object p0

    .line 86
    :cond_67
    :goto_67
    invoke-static {p0, v1}, Lcom/rikka/redirect/URLHook;->rebuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_6c
    :goto_6c
    const-string v0, "ws://127.0.0.1:9991"

    invoke-static {p0, v0}, Lcom/rikka/redirect/URLHook;->rebuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_72
    .catchall {:try_start_23 .. :try_end_72} :catchall_73

    return-object p0

    .line 89
    :catchall_73
    move-exception v0

    .line 91
    return-object p0
.end method
