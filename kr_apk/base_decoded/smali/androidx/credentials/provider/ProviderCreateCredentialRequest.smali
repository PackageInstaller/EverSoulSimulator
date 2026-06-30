.class public final Landroidx/credentials/provider/ProviderCreateCredentialRequest;
.super Ljava/lang/Object;
.source "ProviderCreateCredentialRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/credentials/provider/ProviderCreateCredentialRequest;",
        "",
        "callingRequest",
        "Landroidx/credentials/CreateCredentialRequest;",
        "callingAppInfo",
        "Landroidx/credentials/provider/CallingAppInfo;",
        "(Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/provider/CallingAppInfo;)V",
        "getCallingAppInfo",
        "()Landroidx/credentials/provider/CallingAppInfo;",
        "getCallingRequest",
        "()Landroidx/credentials/CreateCredentialRequest;",
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


# instance fields
.field private final callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

.field private final callingRequest:Landroidx/credentials/CreateCredentialRequest;


# direct methods
.method public constructor <init>(Landroidx/credentials/CreateCredentialRequest;Landroidx/credentials/provider/CallingAppInfo;)V
    .locals 1

    const-string v0, "callingRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingAppInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->callingRequest:Landroidx/credentials/CreateCredentialRequest;

    iput-object p2, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCallingAppInfo()Landroidx/credentials/provider/CallingAppInfo;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->callingAppInfo:Landroidx/credentials/provider/CallingAppInfo;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCallingRequest()Landroidx/credentials/CreateCredentialRequest;
    .locals 1

    .line 38
    iget-object v0, p0, Landroidx/credentials/provider/ProviderCreateCredentialRequest;->callingRequest:Landroidx/credentials/CreateCredentialRequest;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
