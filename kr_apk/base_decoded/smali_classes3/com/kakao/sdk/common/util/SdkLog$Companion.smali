.class public final Lcom/kakao/sdk/common/util/SdkLog$Companion;
.super Ljava/lang/Object;
.source "SdkLog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/common/util/SdkLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0010\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0011\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001J\u0008\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0015\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u00020\u00068FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/SdkLog$Companion;",
        "",
        "()V",
        "MAX_SIZE",
        "",
        "instance",
        "Lcom/kakao/sdk/common/util/SdkLog;",
        "getInstance$annotations",
        "getInstance",
        "()Lcom/kakao/sdk/common/util/SdkLog;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "clear",
        "",
        "d",
        "logged",
        "e",
        "i",
        "log",
        "",
        "v",
        "w",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic getInstance$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 819
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->getInstance()Lcom/kakao/sdk/common/util/SdkLog;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/sdk/common/util/SdkLog;->access$getLogs$p(Lcom/kakao/sdk/common/util/SdkLog;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    .line 669
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->getInstance()Lcom/kakao/sdk/common/util/SdkLog;

    move-result-object v0

    sget-object v1, Lcom/kakao/sdk/common/util/SdkLogLevel;->D:Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {v0, p1, v1}, Lcom/kakao/sdk/common/util/SdkLog;->access$log(Lcom/kakao/sdk/common/util/SdkLog;Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2

    .line 759
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->getInstance()Lcom/kakao/sdk/common/util/SdkLog;

    move-result-object v0

    sget-object v1, Lcom/kakao/sdk/common/util/SdkLogLevel;->E:Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {v0, p1, v1}, Lcom/kakao/sdk/common/util/SdkLog;->access$log(Lcom/kakao/sdk/common/util/SdkLog;Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final getInstance()Lcom/kakao/sdk/common/util/SdkLog;
    .locals 1

    .line 789
    invoke-static {}, Lcom/kakao/sdk/common/util/SdkLog;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/common/util/SdkLog;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 2

    .line 699
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->getInstance()Lcom/kakao/sdk/common/util/SdkLog;

    move-result-object v0

    sget-object v1, Lcom/kakao/sdk/common/util/SdkLogLevel;->I:Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {v0, p1, v1}, Lcom/kakao/sdk/common/util/SdkLog;->access$log(Lcom/kakao/sdk/common/util/SdkLog;Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final log()Ljava/lang/String;
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 579
    sget-object v0, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApplicationContextInfo;->getAppVer()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n                ==== sdk version: 2.21.6\n                ==== app version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->getInstance()Lcom/kakao/sdk/common/util/SdkLog;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/sdk/common/util/SdkLog;->access$getLogs$p(Lcom/kakao/sdk/common/util/SdkLog;)Ljava/util/LinkedList;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, "\n"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final v(Ljava/lang/Object;)V
    .locals 2

    .line 639
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->getInstance()Lcom/kakao/sdk/common/util/SdkLog;

    move-result-object v0

    sget-object v1, Lcom/kakao/sdk/common/util/SdkLogLevel;->V:Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {v0, p1, v1}, Lcom/kakao/sdk/common/util/SdkLog;->access$log(Lcom/kakao/sdk/common/util/SdkLog;Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 2

    .line 729
    invoke-virtual {p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->getInstance()Lcom/kakao/sdk/common/util/SdkLog;

    move-result-object v0

    sget-object v1, Lcom/kakao/sdk/common/util/SdkLogLevel;->W:Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {v0, p1, v1}, Lcom/kakao/sdk/common/util/SdkLog;->access$log(Lcom/kakao/sdk/common/util/SdkLog;Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V

    return-void

    .array-data 1
    .end array-data
.end method
