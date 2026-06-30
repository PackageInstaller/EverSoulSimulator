.class public final Landroidx/credentials/provider/CallingAppInfo;
.super Ljava/lang/Object;
.source "CallingAppInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/CallingAppInfo$Companion;,
        Landroidx/credentials/provider/CallingAppInfo$SignatureVerifierApi28;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallingAppInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallingAppInfo.kt\nandroidx/credentials/provider/CallingAppInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0002\u0016\u0017B#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0006\u0010\r\u001a\u00020\u0003J\u0016\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0016\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0014H\u0002J\u0006\u0010\u0015\u001a\u00020\u000fR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/credentials/provider/CallingAppInfo;",
        "",
        "packageName",
        "",
        "signingInfo",
        "Landroid/content/pm/SigningInfo;",
        "origin",
        "(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V",
        "getOrigin",
        "()Ljava/lang/String;",
        "getPackageName",
        "getSigningInfo",
        "()Landroid/content/pm/SigningInfo;",
        "privilegedAllowlist",
        "isAppPrivileged",
        "",
        "candidateApps",
        "",
        "Landroidx/credentials/provider/utils/PrivilegedApp;",
        "candidateFingerprints",
        "",
        "isOriginPopulated",
        "Companion",
        "SignatureVerifierApi28",
        "credentials_release"
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
.field public static final Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

.field private static final TAG:Ljava/lang/String; = "CallingAppInfo"


# instance fields
.field private final origin:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final signingInfo:Landroid/content/pm/SigningInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/provider/CallingAppInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/CallingAppInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/CallingAppInfo;->Companion:Landroidx/credentials/provider/CallingAppInfo$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signingInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signingInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 49
    iput-object p3, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    .line 155
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageName must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 46
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/credentials/provider/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final isAppPrivileged(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/utils/PrivilegedApp;",
            ">;)Z"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/credentials/provider/utils/PrivilegedApp;

    .line 138
    invoke-virtual {v0}, Landroidx/credentials/provider/utils/PrivilegedApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v0}, Landroidx/credentials/provider/utils/PrivilegedApp;->getFingerprints()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/credentials/provider/CallingAppInfo;->isAppPrivileged(Ljava/util/Set;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final isAppPrivileged(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 147
    new-instance v0, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifierApi28;

    iget-object v1, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-direct {v0, v1}, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifierApi28;-><init>(Landroid/content/pm/SigningInfo;)V

    .line 148
    invoke-virtual {v0, p1}, Landroidx/credentials/provider/CallingAppInfo$SignatureVerifierApi28;->verifySignatureFingerprints(Ljava/util/Set;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getOrigin()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOrigin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "privilegedAllowlist"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Landroidx/credentials/provider/utils/RequestValidationUtil;->Companion:Landroidx/credentials/provider/utils/RequestValidationUtil$Companion;

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/utils/RequestValidationUtil$Companion;->isValidJSON(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object v0

    .line 112
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/credentials/provider/utils/PrivilegedApp;->Companion:Landroidx/credentials/provider/utils/PrivilegedApp$Companion;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/credentials/provider/utils/PrivilegedApp$Companion;->extractPrivilegedApps$credentials_release(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Landroidx/credentials/provider/CallingAppInfo;->isAppPrivileged(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 120
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Origin is not being returned as the calling app did notmatch the privileged allowlist"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "privilegedAllowlist must be formatted properly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "privilegedAllowlist must not be empty, and must be a valid JSON"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .array-data 1
    .end array-data
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->packageName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSigningInfo()Landroid/content/pm/SigningInfo;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isOriginPopulated()Z
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/credentials/provider/CallingAppInfo;->origin:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method
