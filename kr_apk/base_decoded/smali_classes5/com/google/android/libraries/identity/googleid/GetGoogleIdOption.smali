.class public final Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;
.super Landroidx/credentials/GetCustomCredentialOption;
.source "com.google.android.libraries.identity.googleid:googleid@@1.1.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Builder;,
        Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0010\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000cR\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0019\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0011\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;",
        "Landroidx/credentials/GetCustomCredentialOption;",
        "serverClientId",
        "",
        "nonce",
        "filterByAuthorizedAccounts",
        "",
        "linkedServiceId",
        "idTokenDepositionScopes",
        "",
        "requestVerifiedPhoneNumber",
        "autoSelectEnabled",
        "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZZ)V",
        "getAutoSelectEnabled",
        "()Z",
        "getFilterByAuthorizedAccounts",
        "getIdTokenDepositionScopes",
        "()Ljava/util/List;",
        "getLinkedServiceId",
        "()Ljava/lang/String;",
        "getNonce",
        "getRequestVerifiedPhoneNumber",
        "getServerClientId",
        "Builder",
        "Companion",
        "java.com.google.android.libraries.identity.googleid.granule_granule"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Companion;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Z

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/List;

.field private final zzf:Z

.field private final zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->Companion:Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    move-object v10, p0

    move-object v11, p1

    move/from16 v12, p3

    move/from16 v13, p6

    const-string v0, "serverClientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL"

    .line 1
    invoke-static/range {p1 .. p7}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Companion;->zza(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v2

    .line 2
    invoke-static/range {p1 .. p7}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Companion;->zza(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v0, p0

    move/from16 v5, p7

    .line 3
    invoke-direct/range {v0 .. v9}, Landroidx/credentials/GetCustomCredentialOption;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/util/Set;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, v10, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zza:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzb:Ljava/lang/String;

    iput-boolean v12, v10, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzc:Z

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzd:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zze:Ljava/util/List;

    iput-boolean v13, v10, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzf:Z

    move/from16 v0, p7

    iput-boolean v0, v10, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzg:Z

    .line 4
    move-object v0, v11

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz v12, :cond_1

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true;  the Verified Phone Number feature only works in sign-ups."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serverClientId should not be empty"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->Companion:Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption$Companion;->createFrom(Landroid/os/Bundle;)Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAutoSelectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzg:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFilterByAuthorizedAccounts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzc:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getIdTokenDepositionScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zze:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLinkedServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzd:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNonce()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzb:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRequestVerifiedPhoneNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zzf:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getServerClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/identity/googleid/GetGoogleIdOption;->zza:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
