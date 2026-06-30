.class public final Lcom/kakaogame/log/SDKLogManager;
.super Ljava/lang/Object;
.source "SDKLogManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/log/SDKLogManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSDKLogManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SDKLogManager.kt\ncom/kakaogame/log/SDKLogManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,432:1\n1#2:433\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u000e\u0018\u0000 92\u00020\u0001:\u00019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007H\u0002J\u0008\u0010\u001d\u001a\u00020\u0007H\u0002J\u0008\u0010\u001e\u001a\u00020\u0007H\u0002J\u0008\u0010\u001f\u001a\u00020\u001bH\u0002J\u0008\u0010 \u001a\u00020\u001bH\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002J\u0008\u0010%\u001a\u00020\u001bH\u0002J\u0010\u0010&\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020\tH\u0002J\u0014\u0010(\u001a\u0004\u0018\u00010\t2\u0008\u0010)\u001a\u0004\u0018\u00010\tH\u0002J\u0008\u0010*\u001a\u00020\u001bH\u0002J\u001e\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\t0,2\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020$H\u0002J\u000c\u0010/\u001a\u00020\t*\u00020\tH\u0002J0\u00100\u001a\u00020\t2\u0008\u00101\u001a\u0004\u0018\u00010\t2\u0008\u00102\u001a\u0004\u0018\u00010\t2\u0008\u00103\u001a\u0004\u0018\u00010\t2\u0008\u00104\u001a\u0004\u0018\u00010\tH\u0002J \u00105\u001a\u00020$2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00106\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u000e\u00107\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u00108\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006:"
    }
    d2 = {
        "Lcom/kakaogame/log/SDKLogManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "isSaveOnFile",
        "",
        "fileName",
        "",
        "index",
        "",
        "fileSizeLimit",
        "fileCountLimit",
        "checkKeys",
        "",
        "uploadLock",
        "writeLock",
        "isUpload",
        "encryptKeySet",
        "Lkotlin/Pair;",
        "",
        "rawKeySet",
        "saltSet",
        "isUploadNow",
        "()Z",
        "setIsUpload",
        "",
        "upload",
        "checkSendLogFile",
        "checkSendFilesImmediately",
        "completeSendFilesImmediately",
        "offSaveOnFile",
        "getLevelCode",
        "",
        "level",
        "",
        "setNewFileName",
        "writeLogOnFile",
        "logData",
        "getTokenInsertChar",
        "msg",
        "initSDKLogManager",
        "splitString",
        "",
        "s",
        "length",
        "toObfuscateString",
        "makeHexString",
        "key",
        "keySalt",
        "iv",
        "ivSalt",
        "uploadFile",
        "folder",
        "uploadLogFiles",
        "uploadLogFilesImmediately",
        "Companion",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakaogame/log/SDKLogManager$Companion;

.field private static final FILE_MAX_COUNT:I = 0x14

.field private static final SEND_LOG_FILES_IMMEDIATELY:Ljava/lang/String; = "sendLogImmediately"

.field private static final TAG:Ljava/lang/String; = "SDKLogManager"

.field private static final folderName:Ljava/lang/String; = "KGLog"

.field private static final prefName:Ljava/lang/String; = "kglogIndex"


# instance fields
.field private final checkKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private encryptKeySet:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "[B[B>;"
        }
    .end annotation
.end field

.field private fileCountLimit:J

.field private fileName:Ljava/lang/String;

.field private fileSizeLimit:J

.field private index:J

.field private isSaveOnFile:Z

.field private isUpload:Z

.field private rawKeySet:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private saltSet:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadLock:Ljava/lang/Object;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/log/SDKLogManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/log/SDKLogManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/log/SDKLogManager;->Companion:Lcom/kakaogame/log/SDKLogManager$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 419
    iput-boolean p1, p0, Lcom/kakaogame/log/SDKLogManager;->isSaveOnFile:Z

    const-wide/16 v0, 0x1

    .line 449
    iput-wide v0, p0, Lcom/kakaogame/log/SDKLogManager;->fileSizeLimit:J

    const-wide/16 v0, 0x5

    .line 459
    iput-wide v0, p0, Lcom/kakaogame/log/SDKLogManager;->fileCountLimit:J

    .line 469
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/kakaogame/log/SDKLogManager;->checkKeys:Ljava/util/Set;

    .line 479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->uploadLock:Ljava/lang/Object;

    .line 489
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->writeLock:Ljava/lang/Object;

    const v0, -0x4514f35f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 4229
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v0, 0x6d018128

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 4239
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v0, 0x7d7d9d95

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 4249
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v0, -0x224f54ec

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 4259
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v0, -0x4514f13f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 4269
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v0, 0x5d1db727

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 4279
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v0, 0x5d1db7b7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 4289
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v0, 0x336f3bbb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 4299
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4309
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->initSDKLogManager()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$completeSendFilesImmediately(Lcom/kakaogame/log/SDKLogManager;)V
    .locals 0

    .line 409
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->completeSendFilesImmediately()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getEncryptKeySet$p(Lcom/kakaogame/log/SDKLogManager;)Lkotlin/Pair;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/kakaogame/log/SDKLogManager;->encryptKeySet:Lkotlin/Pair;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getLevelCode(Lcom/kakaogame/log/SDKLogManager;I)C
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/kakaogame/log/SDKLogManager;->getLevelCode(I)C

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getTokenInsertChar(Lcom/kakaogame/log/SDKLogManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/kakaogame/log/SDKLogManager;->getTokenInsertChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$isSaveOnFile$p(Lcom/kakaogame/log/SDKLogManager;)Z
    .locals 0

    .line 409
    iget-boolean p0, p0, Lcom/kakaogame/log/SDKLogManager;->isSaveOnFile:Z

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setIsUpload(Lcom/kakaogame/log/SDKLogManager;Z)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/kakaogame/log/SDKLogManager;->setIsUpload(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setNewFileName(Lcom/kakaogame/log/SDKLogManager;)V
    .locals 0

    .line 409
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->setNewFileName()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$uploadFile(Lcom/kakaogame/log/SDKLogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 409
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/log/SDKLogManager;->uploadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$writeLogOnFile(Lcom/kakaogame/log/SDKLogManager;Ljava/lang/String;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/kakaogame/log/SDKLogManager;->writeLogOnFile(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final checkSendFilesImmediately()Z
    .locals 3

    .line 889
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x6d018240

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGLocalPlayer;->getCustomProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x22546766

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 919
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method private final checkSendLogFile()Z
    .locals 4

    .line 669
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 679
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, -0x224fc404

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGLocalPlayer;->getCustomProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x22546766

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 699
    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 749
    :goto_0
    sget-object v2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->sendLogFile()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    const-wide/16 v2, 0x14

    goto :goto_2

    .line 809
    :cond_2
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLogFileCount()J

    move-result-wide v2

    .line 779
    :goto_2
    iput-wide v2, p0, Lcom/kakaogame/log/SDKLogManager;->fileCountLimit:J

    .line 829
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLogFileSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kakaogame/log/SDKLogManager;->fileSizeLimit:J

    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method private final completeSendFilesImmediately()V
    .locals 3

    .line 1009
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1019
    sget-object v0, Lcom/kakaogame/KGLocalPlayer;->Companion:Lcom/kakaogame/KGLocalPlayer$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGLocalPlayer$Companion;->getCurrentPlayer()Lcom/kakaogame/KGLocalPlayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x6d018240

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x2247ce84

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/KGLocalPlayer;->saveCustomProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final getLevelCode(I)C
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x64

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    const/16 v1, 0x77

    goto :goto_0

    :cond_2
    const/16 v1, 0x69

    :cond_3
    :goto_0
    return v1

    .array-data 1
    .end array-data
.end method

.method private final getTokenInsertChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1649
    iget-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->checkKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1659
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v4, v9, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v4, v2

    .line 1669
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0xa

    .line 1679
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 1699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const v5, -0x451ae527

    invoke-static {v5}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x78

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1

    .array-data 1
    .end array-data
.end method

.method private final initSDKLogManager()V
    .locals 7

    .line 1779
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->checkSendLogFile()Z

    .line 1789
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->offWriteLogToFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1799
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->offSaveOnFile()V

    .line 1819
    :cond_0
    sget-object v1, Lcom/kakaogame/auth/DataKeyManager;->INSTANCE:Lcom/kakaogame/auth/DataKeyManager;

    iget-object v2, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getAppId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/kakaogame/auth/DataKeyManager;->getKeysInKeystore$default(Lcom/kakaogame/auth/DataKeyManager;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->encryptKeySet:Lkotlin/Pair;

    .line 1829
    sget-object v0, Lcom/kakaogame/auth/DataKeyManager;->INSTANCE:Lcom/kakaogame/auth/DataKeyManager;

    iget-object v1, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/auth/DataKeyManager;->getRawKeySet(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->rawKeySet:Lkotlin/Pair;

    .line 1839
    sget-object v0, Lcom/kakaogame/auth/DataKeyManager;->INSTANCE:Lcom/kakaogame/auth/DataKeyManager;

    iget-object v1, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/auth/DataKeyManager;->getSaltSet(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->saltSet:Lkotlin/Pair;

    .line 1859
    iget-object v1, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    const v2, 0x225891ee

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/kakaogame/log/SDKLogManager;->fileCountLimit:J

    iget-wide v5, p0, Lcom/kakaogame/log/SDKLogManager;->fileSizeLimit:J

    invoke-static/range {v1 .. v6}, Lcom/kakaogame/util/FileUtil;->checkFolder(Landroid/content/Context;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->fileName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1879
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->setNewFileName()V

    .line 1889
    iget-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->rawKeySet:Lkotlin/Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const v0, -0x4514f757

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1899
    iget-object v3, p0, Lcom/kakaogame/log/SDKLogManager;->saltSet:Lkotlin/Pair;

    if-nez v3, :cond_2

    const v3, 0x2258911e

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1909
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7d7d99ad

    invoke-static {v5}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/kakaogame/log/SDKLogManager;->makeHexString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakaogame/log/SDKLogManager;->writeLogOnFile(Ljava/lang/String;)V

    .line 1929
    :cond_3
    iget-boolean v0, p0, Lcom/kakaogame/log/SDKLogManager;->isSaveOnFile:Z

    if-eqz v0, :cond_4

    .line 1939
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kakaogame/util/DateUtil;->convertLongToFormattedString(J)Ljava/lang/String;

    move-result-object v0

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x4514f6bf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1db39f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakaogame/log/SDKLogManager;->writeLogOnFile(Ljava/lang/String;)V

    .line 1969
    :cond_4
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Lcom/kakaogame/log/SDKLogManager$initSDKLogManager$1;

    invoke-direct {v1, p0}, Lcom/kakaogame/log/SDKLogManager$initSDKLogManager$1;-><init>(Lcom/kakaogame/log/SDKLogManager;)V

    check-cast v1, Lcom/kakaogame/Logger$LoggingEventListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/Logger;->addLoggingEventListener(Lcom/kakaogame/Logger$LoggingEventListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final isUploadNow()Z
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->uploadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/kakaogame/log/SDKLogManager;->isUpload:Z

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .array-data 1
    .end array-data
.end method

.method private final makeHexString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2499
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_6

    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/16 v0, 0xb

    .line 2529
    invoke-direct {p0, p1, v0}, Lcom/kakaogame/log/SDKLogManager;->splitString(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x6

    .line 2539
    invoke-direct {p0, p3, v0}, Lcom/kakaogame/log/SDKLogManager;->splitString(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    .line 2559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2569
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_5

    .line 2579
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2609
    :cond_5
    sget-object p1, Lcom/kakaogame/util/StringUtil;->INSTANCE:Lcom/kakaogame/util/StringUtil;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const v0, -0x451e20f7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/kakaogame/util/StringUtil;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kakaogame/log/SDKLogManager;->toObfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2619
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_4
    const-string p1, ""

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final offSaveOnFile()V
    .locals 2

    const/4 v0, 0x0

    .line 1069
    iput-boolean v0, p0, Lcom/kakaogame/log/SDKLogManager;->isSaveOnFile:Z

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x225891ee

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private final setIsUpload(Z)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->uploadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/kakaogame/log/SDKLogManager;->isUpload:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .array-data 1
    .end array-data
.end method

.method private final setNewFileName()V
    .locals 10

    .line 1259
    iget-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    const v1, 0x5d1db207

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lcom/kakaogame/util/PreferenceUtil;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kakaogame/log/SDKLogManager;->index:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    .line 1279
    iput-wide v2, p0, Lcom/kakaogame/log/SDKLogManager;->index:J

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/kakaogame/log/SDKLogManager;->index:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/kakaogame/log/SDKLogManager;->index:J

    invoke-static {v0, v1, v1, v2, v3}, Lcom/kakaogame/util/PreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1309
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kakaogame/util/DateUtil;->convertLongToFormattedString(J)Ljava/lang/String;

    move-result-object v0

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/kakaogame/log/SDKLogManager;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x5d1db2e7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/log/SDKLogManager;->fileName:Ljava/lang/String;

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7d7d9b5d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/log/SDKLogManager;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x22588af6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .array-data 1
    .end array-data
.end method

.method private final splitString(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2289
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final toObfuscateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2329
    new-instance v0, Lkotlin/ranges/CharRange;

    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 2339
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224f5d24

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x22588af6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    sget-object v1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/4 v2, 0x4

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result v1

    .line 2359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2379
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v3, :cond_1

    .line 2389
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 2399
    rem-int v5, v4, v1

    if-nez v5, :cond_0

    .line 2409
    sget-object v5, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lkotlin/random/Random$Default;->nextInt(I)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    .line 2419
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 2449
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2459
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, -0x451e20f7

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final uploadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const v0, 0x7d738a05

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x22588af6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 2669
    :try_start_0
    invoke-static {p2, p3}, Lcom/kakaogame/infodesk/InfodeskService;->createUploadUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 2679
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    .line 2709
    :cond_0
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "KGLog"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2729
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2739
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    const/16 p1, 0xc8

    return p1

    .line 2779
    :cond_1
    new-instance p1, Ljava/net/URL;

    invoke-static {p2}, Lcom/rikka/redirect/URLHook;->redirect(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2789
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/URLConnection;

    const-string v3, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v3, 0x4e20

    .line 2799
    invoke-virtual {p2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 2809
    invoke-virtual {p2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 2819
    invoke-static {p1}, Lcom/kakaogame/server/ServerSecurityManager;->getHostnameVerifier(Ljava/net/URL;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 2829
    invoke-static {}, Lcom/kakaogame/server/ServerSecurityManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    const/4 p1, 0x1

    .line 2839
    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    .line 2849
    invoke-virtual {p2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string v3, "close"

    .line 2859
    invoke-virtual {p2, p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    const/4 v3, 0x0

    .line 2919
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2939
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p3, 0x800

    :try_start_2
    new-array v3, p3, [B

    .line 2959
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v2, :cond_2

    const/4 v5, 0x0

    .line 2969
    invoke-virtual {p1, v3, v5, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception p2

    move-object v3, v4

    goto :goto_2

    .line 3059
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 3069
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :catch_1
    if-eqz v3, :cond_4

    .line 3119
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 3159
    :catch_2
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3179
    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_4

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_3
    move-exception p2

    .line 3019
    :goto_2
    :try_start_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3059
    :try_start_7
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 3069
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :catch_4
    if-eqz v3, :cond_5

    .line 3119
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 3159
    :catch_5
    :cond_5
    :try_start_9
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    return v2

    .line 3059
    :goto_3
    :try_start_a
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 3069
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :catch_6
    if-eqz v3, :cond_6

    .line 3119
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 3159
    :catch_7
    :cond_6
    :try_start_c
    invoke-static {}, Ljava/lang/System;->gc()V

    throw p2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :catch_8
    move-exception p1

    .line 3199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v2

    nop

    .array-data 1
    .end array-data
.end method

.method private final writeLogOnFile(Ljava/lang/String;)V
    .locals 11

    const v0, 0x7d7d99ad

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 1369
    iget-object v1, p0, Lcom/kakaogame/log/SDKLogManager;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1389
    :try_start_0
    iget-object v2, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    const-string v3, "KGLog"

    .line 1409
    iget-object v4, p0, Lcom/kakaogame/log/SDKLogManager;->fileName:Ljava/lang/String;

    .line 1429
    iget-wide v6, p0, Lcom/kakaogame/log/SDKLogManager;->fileSizeLimit:J

    move-object v5, p1

    .line 1379
    invoke-static/range {v2 .. v7}, Lcom/kakaogame/util/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1469
    iget-object p1, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/kakaogame/log/SDKLogManager;->uploadLogFiles(Landroid/content/Context;)V

    .line 1479
    iget-object v2, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    const-string v3, "KGLog"

    iget-wide v4, p0, Lcom/kakaogame/log/SDKLogManager;->fileCountLimit:J

    iget-wide v6, p0, Lcom/kakaogame/log/SDKLogManager;->fileSizeLimit:J

    invoke-static/range {v2 .. v7}, Lcom/kakaogame/util/FileUtil;->checkFolder(Landroid/content/Context;Ljava/lang/String;JJ)Ljava/lang/String;

    .line 1489
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->setNewFileName()V

    .line 1499
    iget-object p1, p0, Lcom/kakaogame/log/SDKLogManager;->rawKeySet:Lkotlin/Pair;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "rawKeySet"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1509
    iget-object v4, p0, Lcom/kakaogame/log/SDKLogManager;->saltSet:Lkotlin/Pair;

    if-nez v4, :cond_1

    const-string v4, "saltSet"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1529
    iget-object v5, p0, Lcom/kakaogame/log/SDKLogManager;->context:Landroid/content/Context;

    const-string v6, "KGLog"

    .line 1549
    iget-object v7, p0, Lcom/kakaogame/log/SDKLogManager;->fileName:Ljava/lang/String;

    .line 1559
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, p1, v2}, Lcom/kakaogame/log/SDKLogManager;->makeHexString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1569
    iget-wide v9, p0, Lcom/kakaogame/log/SDKLogManager;->fileSizeLimit:J

    .line 1519
    invoke-static/range {v5 .. v10}, Lcom/kakaogame/util/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1599
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final uploadLogFiles(Landroid/content/Context;)V
    .locals 7

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3259
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->checkSendFilesImmediately()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3279
    invoke-virtual {p0, p1}, Lcom/kakaogame/log/SDKLogManager;->uploadLogFilesImmediately(Landroid/content/Context;)V

    return-void

    .line 3309
    :cond_0
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->checkSendLogFile()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3349
    :cond_1
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->isUploadNow()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3379
    :cond_2
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 3409
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/log/SDKLogManager$uploadLogFiles$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/kakaogame/log/SDKLogManager$uploadLogFiles$1;-><init>(Lcom/kakaogame/log/SDKLogManager;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final uploadLogFilesImmediately(Landroid/content/Context;)V
    .locals 7

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3739
    invoke-direct {p0}, Lcom/kakaogame/log/SDKLogManager;->isUploadNow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3769
    :cond_0
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SDKLogManager"

    const v0, 0x22589d46

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 3779
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3809
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/log/SDKLogManager$uploadLogFilesImmediately$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/kakaogame/log/SDKLogManager$uploadLogFilesImmediately$1;-><init>(Lcom/kakaogame/log/SDKLogManager;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
