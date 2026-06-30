.class public final Landroidx/credentials/provider/BeginCreateCredentialResponse;
.super Ljava/lang/Object;
.source "BeginCreateCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/provider/BeginCreateCredentialResponse$Api34Impl;,
        Landroidx/credentials/provider/BeginCreateCredentialResponse$Builder;,
        Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u000e2\u00020\u0001:\u0003\u000c\r\u000eB!\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/credentials/provider/BeginCreateCredentialResponse;",
        "",
        "createEntries",
        "",
        "Landroidx/credentials/provider/CreateEntry;",
        "remoteEntry",
        "Landroidx/credentials/provider/RemoteEntry;",
        "(Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V",
        "getCreateEntries",
        "()Ljava/util/List;",
        "getRemoteEntry",
        "()Landroidx/credentials/provider/RemoteEntry;",
        "Api34Impl",
        "Builder",
        "Companion",
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
.field public static final Companion:Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;


# instance fields
.field private final createEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/provider/CreateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteEntry:Landroidx/credentials/provider/RemoteEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/credentials/provider/BeginCreateCredentialResponse;->Companion:Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/credentials/provider/BeginCreateCredentialResponse;-><init>(Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/CreateEntry;",
            ">;",
            "Landroidx/credentials/provider/RemoteEntry;",
            ")V"
        }
    .end annotation

    const-string v0, "createEntries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse;->createEntries:Ljava/util/List;

    iput-object p2, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse;->remoteEntry:Landroidx/credentials/provider/RemoteEntry;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/credentials/provider/BeginCreateCredentialResponse;-><init>(Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final asBundle(Landroidx/credentials/provider/BeginCreateCredentialResponse;)Landroid/os/Bundle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/BeginCreateCredentialResponse;->Companion:Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;->asBundle(Landroidx/credentials/provider/BeginCreateCredentialResponse;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialResponse;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/credentials/provider/BeginCreateCredentialResponse;->Companion:Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;

    invoke-virtual {v0, p0}, Landroidx/credentials/provider/BeginCreateCredentialResponse$Companion;->fromBundle(Landroid/os/Bundle;)Landroidx/credentials/provider/BeginCreateCredentialResponse;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getCreateEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/CreateEntry;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse;->createEntries:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRemoteEntry()Landroidx/credentials/provider/RemoteEntry;
    .locals 1

    .line 36
    iget-object v0, p0, Landroidx/credentials/provider/BeginCreateCredentialResponse;->remoteEntry:Landroidx/credentials/provider/RemoteEntry;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
