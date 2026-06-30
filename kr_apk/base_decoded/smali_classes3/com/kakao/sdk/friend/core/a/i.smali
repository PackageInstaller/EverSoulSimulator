.class public final Lcom/kakao/sdk/friend/core/a/i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/kakao/sdk/friend/core/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/a/i;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/a/i;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/a/i;->a:Lcom/kakao/sdk/friend/core/a/i;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "resultData"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key.selected.totalcount"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key.selected.friends"

    const-class v2, Lcom/kakao/sdk/friend/core/model/SelectedUser;

    invoke-static {p1, v1, v2}, Landroidx/core/os/BundleCompat;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/kakao/sdk/friend/core/model/SelectedUsers;

    invoke-direct {v1, v0, p1}, Lcom/kakao/sdk/friend/core/model/SelectedUsers;-><init>(ILjava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .array-data 1
    .end array-data
.end method
