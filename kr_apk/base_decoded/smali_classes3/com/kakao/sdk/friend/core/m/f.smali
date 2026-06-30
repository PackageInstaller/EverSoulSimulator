.class public final Lcom/kakao/sdk/friend/core/m/f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/m/i;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/m/i;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/m/f;->a:Lcom/kakao/sdk/friend/core/m/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/util/Map;

    const-string v0, "scopeMap"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/f;->a:Lcom/kakao/sdk/friend/core/m/i;

    .line 29
    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, v0, Lcom/kakao/sdk/friend/core/m/i;->k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    .line 49
    sget-object v2, Lcom/kakao/sdk/friend/core/internal/PickerViewType;->EMBED:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    if-ne v1, v2, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/m/f;->a:Lcom/kakao/sdk/friend/core/m/i;

    .line 79
    iget-object v0, v0, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    .line 89
    new-instance v1, Lcom/kakao/sdk/friend/core/j/h;

    new-instance v2, Lcom/kakao/sdk/friend/core/model/SelectedUsers;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lcom/kakao/sdk/friend/core/model/SelectedUsers;-><init>(ILjava/util/List;)V

    invoke-direct {v1, v2}, Lcom/kakao/sdk/friend/core/j/h;-><init>(Lcom/kakao/sdk/friend/core/model/SelectedUsers;)V

    invoke-virtual {v0, v1}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/kakao/sdk/friend/core/m/i;->a(Lcom/kakao/sdk/friend/core/m/i;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/kakao/sdk/friend/core/m/f;->a:Lcom/kakao/sdk/friend/core/m/i;

    .line 99
    iget-object p1, p1, Lcom/kakao/sdk/friend/core/m/i;->q:Lcom/kakao/sdk/friend/core/k/v;

    .line 109
    sget-object v0, Lcom/kakao/sdk/friend/core/j/i;->a:Lcom/kakao/sdk/friend/core/j/i;

    invoke-virtual {p1, v0}, Lcom/kakao/sdk/friend/core/k/v;->setValue(Ljava/lang/Object;)V

    .line 119
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
