.class public final Lcom/kakao/sdk/common/util/SdkLog;
.super Ljava/lang/Object;
.source "SdkLog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/util/SdkLog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/SdkLog;",
        "",
        "enabled",
        "",
        "(Z)V",
        "dateFormat",
        "Ljava/text/SimpleDateFormat;",
        "getDateFormat",
        "()Ljava/text/SimpleDateFormat;",
        "dateFormat$delegate",
        "Lkotlin/Lazy;",
        "logs",
        "Ljava/util/LinkedList;",
        "",
        "log",
        "",
        "logged",
        "logLevel",
        "Lcom/kakao/sdk/common/util/SdkLogLevel;",
        "Companion",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

.field public static final MAX_SIZE:I = 0x64

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/kakao/sdk/common/util/SdkLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dateFormat$delegate:Lkotlin/Lazy;

.field private final enabled:Z

.field private logs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/common/util/SdkLog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    .line 789
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog$Companion$instance$2;->INSTANCE:Lcom/kakao/sdk/common/util/SdkLog$Companion$instance$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/common/util/SdkLog;->instance$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/kakao/sdk/common/util/SdkLog;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-boolean p1, p0, Lcom/kakao/sdk/common/util/SdkLog;->enabled:Z

    .line 439
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/common/util/SdkLog;->logs:Ljava/util/LinkedList;

    .line 449
    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog$dateFormat$2;->INSTANCE:Lcom/kakao/sdk/common/util/SdkLog$dateFormat$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/kakao/sdk/common/util/SdkLog;->dateFormat$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 419
    sget-object p1, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p1}, Lcom/kakao/sdk/common/KakaoSdk;->getLoggingEnabled()Z

    move-result p1

    .line 409
    :cond_0
    invoke-direct {p0, p1}, Lcom/kakao/sdk/common/util/SdkLog;-><init>(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 409
    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->instance$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getLogs$p(Lcom/kakao/sdk/common/util/SdkLog;)Ljava/util/LinkedList;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/kakao/sdk/common/util/SdkLog;->logs:Ljava/util/LinkedList;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$log(Lcom/kakao/sdk/common/util/SdkLog;Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/common/util/SdkLog;->log(Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/kakao/sdk/common/util/SdkLog;->dateFormat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getInstance()Lcom/kakao/sdk/common/util/SdkLog;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->getInstance()Lcom/kakao/sdk/common/util/SdkLog;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final log()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->log()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final log(Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V
    .locals 3

    .line 869
    invoke-virtual {p2}, Lcom/kakao/sdk/common/util/SdkLogLevel;->getSymbol()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 919
    iget-boolean v0, p0, Lcom/kakao/sdk/common/util/SdkLog;->enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLogLevel;->I:Lcom/kakao/sdk/common/util/SdkLogLevel;

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p2, v0}, Lcom/kakao/sdk/common/util/SdkLogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 929
    iget-object p2, p0, Lcom/kakao/sdk/common/util/SdkLog;->logs:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/kakao/sdk/common/util/SdkLog;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 939
    iget-object p1, p0, Lcom/kakao/sdk/common/util/SdkLog;->logs:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    .line 949
    iget-object p1, p0, Lcom/kakao/sdk/common/util/SdkLog;->logs:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
