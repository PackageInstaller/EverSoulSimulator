.class public final Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException$Companion;
.super Ljava/lang/Object;
.source "GetPublicKeyCredentialDomException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetPublicKeyCredentialDomException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetPublicKeyCredentialDomException.kt\nandroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException$Companion\n+ 2 DomExceptionUtils.kt\nandroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion\n*L\n1#1,67:1\n67#2,75:68\n*S KotlinDebug\n*F\n+ 1 GetPublicKeyCredentialDomException.kt\nandroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException$Companion\n*L\n53#1:68,75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException$Companion;",
        "",
        "()V",
        "TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION",
        "",
        "createFrom",
        "Landroidx/credentials/exceptions/GetCredentialException;",
        "type",
        "msg",
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final createFrom(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :try_start_0
    sget-object v0, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils;->Companion:Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;

    .line 57
    new-instance v1, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;

    new-instance v2, Landroidx/credentials/exceptions/domerrors/UnknownError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/UnknownError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Landroidx/credentials/exceptions/publickeycredential/GetPublicKeyCredentialDomException;-><init>(Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/CharSequence;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ABORT_ERROR"

    .line 69
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    new-instance v2, Landroidx/credentials/exceptions/domerrors/AbortError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/AbortError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_CONSTRAINT_ERROR"

    .line 71
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    new-instance v2, Landroidx/credentials/exceptions/domerrors/ConstraintError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/ConstraintError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_CLONE_ERROR"

    .line 73
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    new-instance v2, Landroidx/credentials/exceptions/domerrors/DataCloneError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/DataCloneError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_DATA_ERROR"

    .line 75
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    new-instance v2, Landroidx/credentials/exceptions/domerrors/DataError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/DataError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_ENCODING_ERROR"

    .line 77
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 78
    new-instance v2, Landroidx/credentials/exceptions/domerrors/EncodingError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/EncodingError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_HIERARCHY_REQUEST_ERROR"

    .line 79
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 82
    new-instance v2, Landroidx/credentials/exceptions/domerrors/HierarchyRequestError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/HierarchyRequestError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_IN_USE_ATTRIBUTE_ERROR"

    .line 83
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 85
    new-instance v2, Landroidx/credentials/exceptions/domerrors/InUseAttributeError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/InUseAttributeError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_CHARACTER_ERROR"

    .line 86
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 89
    new-instance v2, Landroidx/credentials/exceptions/domerrors/InvalidCharacterError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/InvalidCharacterError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_MODIFICATION_ERROR"

    .line 90
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 93
    new-instance v2, Landroidx/credentials/exceptions/domerrors/InvalidModificationError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/InvalidModificationError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_NODE_TYPE_ERROR"

    .line 94
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 97
    new-instance v2, Landroidx/credentials/exceptions/domerrors/InvalidNodeTypeError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/InvalidNodeTypeError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_INVALID_STATE_ERROR"

    .line 98
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 99
    new-instance v2, Landroidx/credentials/exceptions/domerrors/InvalidStateError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/InvalidStateError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NAMESPACE_ERROR"

    .line 100
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 101
    new-instance v2, Landroidx/credentials/exceptions/domerrors/NamespaceError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/NamespaceError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NETWORK_ERROR"

    .line 102
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 103
    new-instance v2, Landroidx/credentials/exceptions/domerrors/NetworkError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/NetworkError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NO_MODIFICATION_ALLOWED_ERROR"

    .line 104
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 107
    new-instance v2, Landroidx/credentials/exceptions/domerrors/NoModificationAllowedError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/NoModificationAllowedError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_ALLOWED_ERROR"

    .line 108
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 109
    new-instance v2, Landroidx/credentials/exceptions/domerrors/NotAllowedError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/NotAllowedError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_FOUND_ERROR"

    .line 110
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 111
    new-instance v2, Landroidx/credentials/exceptions/domerrors/NotFoundError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/NotFoundError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_READABLE_ERROR"

    .line 112
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 113
    new-instance v2, Landroidx/credentials/exceptions/domerrors/NotReadableError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/NotReadableError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_NOT_SUPPORTED_ERROR"

    .line 114
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 115
    new-instance v2, Landroidx/credentials/exceptions/domerrors/NotSupportedError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/NotSupportedError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPERATION_ERROR"

    .line 116
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 117
    new-instance v2, Landroidx/credentials/exceptions/domerrors/OperationError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/OperationError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_12
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_OPT_OUT_ERROR"

    .line 118
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 119
    new-instance v2, Landroidx/credentials/exceptions/domerrors/OptOutError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/OptOutError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_QUOTA_EXCEEDED_ERROR"

    .line 120
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 122
    new-instance v2, Landroidx/credentials/exceptions/domerrors/QuotaExceededError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/QuotaExceededError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_14
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_READ_ONLY_ERROR"

    .line 123
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 124
    new-instance v2, Landroidx/credentials/exceptions/domerrors/ReadOnlyError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/ReadOnlyError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_15
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SECURITY_ERROR"

    .line 125
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 126
    new-instance v2, Landroidx/credentials/exceptions/domerrors/SecurityError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/SecurityError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_16
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_SYNTAX_ERROR"

    .line 127
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 128
    new-instance v2, Landroidx/credentials/exceptions/domerrors/SyntaxError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/SyntaxError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_17
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TIMEOUT_ERROR"

    .line 129
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 130
    new-instance v2, Landroidx/credentials/exceptions/domerrors/TimeoutError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/TimeoutError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_18
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_TRANSACTION_INACTIVE_ERROR"

    .line 131
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 134
    new-instance v2, Landroidx/credentials/exceptions/domerrors/TransactionInactiveError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/TransactionInactiveError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_19
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_UNKNOWN_ERROR"

    .line 135
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 136
    new-instance v2, Landroidx/credentials/exceptions/domerrors/UnknownError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/UnknownError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1a
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_VERSION_ERROR"

    .line 137
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 138
    new-instance v2, Landroidx/credentials/exceptions/domerrors/VersionError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/VersionError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1b
    const-string v2, "androidx.credentials.TYPE_GET_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION/androidx.credentials.TYPE_WRONG_DOCUMENT_ERROR"

    .line 139
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 141
    new-instance v2, Landroidx/credentials/exceptions/domerrors/WrongDocumentError;

    invoke-direct {v2}, Landroidx/credentials/exceptions/domerrors/WrongDocumentError;-><init>()V

    check-cast v2, Landroidx/credentials/exceptions/domerrors/DomError;

    invoke-static {v0, v2, p2, v1}, Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;->access$generateException(Landroidx/credentials/exceptions/publickeycredential/DomExceptionUtils$Companion;Landroidx/credentials/exceptions/domerrors/DomError;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    :goto_0
    check-cast v0, Landroidx/credentials/exceptions/GetCredentialException;

    goto :goto_1

    .line 142
    :cond_1c
    new-instance v0, Landroidx/credentials/internal/FrameworkClassParsingException;

    invoke-direct {v0}, Landroidx/credentials/internal/FrameworkClassParsingException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroidx/credentials/internal/FrameworkClassParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    new-instance v0, Landroidx/credentials/exceptions/GetCredentialCustomException;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {v0, p1, p2}, Landroidx/credentials/exceptions/GetCredentialCustomException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    check-cast v0, Landroidx/credentials/exceptions/GetCredentialException;

    :goto_1
    return-object v0

    .array-data 1
    .end array-data
.end method
