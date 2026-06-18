.class public final Lcom/rikka/redirect/URLHook;
.super Ljava/lang/Object;
.source "URLHook.java"


# static fields
.field private static final HOSTS:[Ljava/lang/String;

.field private static final LOCAL_HTTP:Ljava/lang/String; = "http://127.0.0.1:9991"

.field private static final LOCAL_WS:Ljava/lang/String; = "ws://127.0.0.1:9991"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "kakaogames.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "game.kakao.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "zinny3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/rikka/redirect/URLHook;->HOSTS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rebuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 77
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    if-gez v0, :cond_9

    .line 79
    return-object p1

    .line 81
    :cond_9
    add-int/lit8 v0, v0, 0x3

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 83
    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 85
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_2a

    const/16 v3, 0x23

    if-ne v2, v3, :cond_27

    goto :goto_2a

    .line 83
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 86
    :cond_2a
    :goto_2a
    nop

    .line 87
    move v1, v0

    .line 90
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

.method public static redirect(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 40
    if-nez p0, :cond_4

    .line 41
    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_4
    :try_start_4
    const-string v0, ".lockincomp.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_5f

    const-string v1, "http://127.0.0.1:9991"

    if-eqz v0, :cond_13

    .line 47
    :try_start_e
    invoke-static {p0, v1}, Lcom/rikka/redirect/URLHook;->rebuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_13
    nop

    .line 51
    sget-object v0, Lcom/rikka/redirect/URLHook;->HOSTS:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v2, :cond_29

    aget-object v5, v0, v4

    .line 52
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 53
    nop

    .line 54
    const/4 v3, 0x1

    goto :goto_29

    .line 51
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 57
    :cond_29
    :goto_29
    if-nez v3, :cond_2c

    .line 58
    return-object p0

    .line 61
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v2, "wss://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "ws://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_58

    .line 65
    :cond_41
    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_53

    .line 68
    :cond_52
    return-object p0

    .line 66
    :cond_53
    :goto_53
    invoke-static {p0, v1}, Lcom/rikka/redirect/URLHook;->rebuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_58
    :goto_58
    const-string v0, "ws://127.0.0.1:9991"

    invoke-static {p0, v0}, Lcom/rikka/redirect/URLHook;->rebuild(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_5e
    .catchall {:try_start_e .. :try_end_5e} :catchall_5f

    return-object p0

    .line 69
    :catchall_5f
    move-exception v0

    .line 71
    return-object p0
.end method
