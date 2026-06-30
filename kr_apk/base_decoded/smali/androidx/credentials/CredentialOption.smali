.class public abstract Landroidx/credentials/CredentialOption;
.super Ljava/lang/Object;
.source "CredentialOption.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CredentialOption$Companion;,
        Landroidx/credentials/CredentialOption$PriorityHints;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008&\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bBE\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/credentials/CredentialOption;",
        "",
        "type",
        "",
        "requestData",
        "Landroid/os/Bundle;",
        "candidateQueryData",
        "isSystemProviderRequired",
        "",
        "isAutoSelectAllowed",
        "allowedProviders",
        "",
        "Landroid/content/ComponentName;",
        "typePriorityHint",
        "",
        "(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/util/Set;I)V",
        "getAllowedProviders",
        "()Ljava/util/Set;",
        "getCandidateQueryData",
        "()Landroid/os/Bundle;",
        "()Z",
        "getRequestData",
        "getType",
        "()Ljava/lang/String;",
        "getTypePriorityHint",
        "()I",
        "Companion",
        "PriorityHints",
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
.field public static final BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"

.field public static final BUNDLE_KEY_TYPE_PRIORITY_VALUE:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE"

.field public static final Companion:Landroidx/credentials/CredentialOption$Companion;

.field public static final PRIORITY_DEFAULT:I = 0x7d0

.field public static final PRIORITY_OIDC_OR_SIMILAR:I = 0x1f4

.field public static final PRIORITY_PASSKEY_OR_SIMILAR:I = 0x64

.field public static final PRIORITY_PASSWORD_OR_SIMILAR:I = 0x3e8


# instance fields
.field private final allowedProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final candidateQueryData:Landroid/os/Bundle;

.field private final isAutoSelectAllowed:Z

.field private final isSystemProviderRequired:Z

.field private final requestData:Landroid/os/Bundle;

.field private final type:Ljava/lang/String;

.field private final typePriorityHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/CredentialOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/CredentialOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/CredentialOption;->Companion:Landroidx/credentials/CredentialOption$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/util/Set;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "ZZ",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidateQueryData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowedProviders"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroidx/credentials/CredentialOption;->type:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroidx/credentials/CredentialOption;->requestData:Landroid/os/Bundle;

    .line 67
    iput-object p3, p0, Landroidx/credentials/CredentialOption;->candidateQueryData:Landroid/os/Bundle;

    .line 68
    iput-boolean p4, p0, Landroidx/credentials/CredentialOption;->isSystemProviderRequired:Z

    .line 69
    iput-boolean p5, p0, Landroidx/credentials/CredentialOption;->isAutoSelectAllowed:Z

    .line 70
    iput-object p6, p0, Landroidx/credentials/CredentialOption;->allowedProviders:Ljava/util/Set;

    .line 71
    iput p7, p0, Landroidx/credentials/CredentialOption;->typePriorityHint:I

    const-string p1, "androidx.credentials.BUNDLE_KEY_IS_AUTO_SELECT_ALLOWED"

    .line 75
    invoke-virtual {p2, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p3, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "androidx.credentials.BUNDLE_KEY_TYPE_PRIORITY_VALUE"

    .line 77
    invoke-virtual {p2, p1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    invoke-virtual {p3, p1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final createFrom(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLjava/util/Set;)Landroidx/credentials/CredentialOption;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroidx/credentials/CredentialOption;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/CredentialOption;->Companion:Landroidx/credentials/CredentialOption$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/credentials/CredentialOption$Companion;->createFrom(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLjava/util/Set;)Landroidx/credentials/CredentialOption;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAllowedProviders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/credentials/CredentialOption;->allowedProviders:Ljava/util/Set;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCandidateQueryData()Landroid/os/Bundle;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/credentials/CredentialOption;->candidateQueryData:Landroid/os/Bundle;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRequestData()Landroid/os/Bundle;
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/credentials/CredentialOption;->requestData:Landroid/os/Bundle;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/credentials/CredentialOption;->type:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTypePriorityHint()I
    .locals 1

    .line 71
    iget v0, p0, Landroidx/credentials/CredentialOption;->typePriorityHint:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isAutoSelectAllowed()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Landroidx/credentials/CredentialOption;->isAutoSelectAllowed:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isSystemProviderRequired()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Landroidx/credentials/CredentialOption;->isSystemProviderRequired:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method
