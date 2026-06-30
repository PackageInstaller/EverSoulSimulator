.class public final Landroidx/credentials/GetCredentialResponse;
.super Ljava/lang/Object;
.source "GetCredentialResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/credentials/GetCredentialResponse;",
        "",
        "credential",
        "Landroidx/credentials/Credential;",
        "(Landroidx/credentials/Credential;)V",
        "getCredential",
        "()Landroidx/credentials/Credential;",
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
.field private final credential:Landroidx/credentials/Credential;


# direct methods
.method public constructor <init>(Landroidx/credentials/Credential;)V
    .locals 1

    const-string v0, "credential"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/GetCredentialResponse;->credential:Landroidx/credentials/Credential;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCredential()Landroidx/credentials/Credential;
    .locals 1

    .line 25
    iget-object v0, p0, Landroidx/credentials/GetCredentialResponse;->credential:Landroidx/credentials/Credential;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
