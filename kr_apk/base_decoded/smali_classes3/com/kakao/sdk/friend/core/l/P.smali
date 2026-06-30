.class public final Lcom/kakao/sdk/friend/core/l/P;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/S;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/S;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/P;->a:Lcom/kakao/sdk/friend/core/l/S;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/P;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key.picker.setting"

    .line 29
    const-class v2, Lcom/kakao/sdk/friend/core/i/o;

    invoke-static {v0, v1, v2}, Landroidx/core/os/BundleCompat;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/friend/core/i/o;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
