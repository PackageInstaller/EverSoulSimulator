.class public final Landroidx/credentials/internal/FrameworkImplHelper$Companion;
.super Ljava/lang/Object;
.source "FrameworkImplHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/internal/FrameworkImplHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/credentials/internal/FrameworkImplHelper$Companion;",
        "",
        "()V",
        "getFinalCreateCredentialData",
        "Landroid/os/Bundle;",
        "request",
        "Landroidx/credentials/CreateCredentialRequest;",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/credentials/internal/FrameworkImplHelper$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getFinalCreateCredentialData(Landroidx/credentials/CreateCredentialRequest;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getCredentialData()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Landroidx/credentials/CreateCredentialRequest;->getDisplayInfo()Landroidx/credentials/CreateCredentialRequest$DisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/credentials/CreateCredentialRequest$DisplayInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 47
    instance-of v2, p1, Landroidx/credentials/CreatePasswordRequest;

    if-eqz v2, :cond_0

    sget p1, Landroidx/credentials/R$drawable;->ic_password:I

    goto :goto_0

    .line 48
    :cond_0
    instance-of p1, p1, Landroidx/credentials/CreatePublicKeyCredentialRequest;

    if-eqz p1, :cond_1

    sget p1, Landroidx/credentials/R$drawable;->ic_passkey:I

    goto :goto_0

    .line 49
    :cond_1
    sget p1, Landroidx/credentials/R$drawable;->ic_other_sign_in:I

    .line 44
    :goto_0
    invoke-static {p2, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    const-string p2, "androidx.credentials.BUNDLE_KEY_CREDENTIAL_TYPE_ICON"

    .line 42
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "androidx.credentials.BUNDLE_KEY_REQUEST_DISPLAY_INFO"

    .line 53
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
