.class public final Lcom/kakao/sdk/friend/core/l/y;
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
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/y;->a:Lcom/kakao/sdk/friend/core/l/S;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 19
    new-instance v8, Lcom/kakao/sdk/friend/core/b/d;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/y;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v0

    .line 29
    iget-boolean v1, v0, Lcom/kakao/sdk/friend/core/m/i;->j:Z

    .line 39
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/y;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v0

    .line 49
    iget-object v2, v0, Lcom/kakao/sdk/friend/core/m/i;->k:Lcom/kakao/sdk/friend/core/internal/PickerViewType;

    .line 59
    new-instance v3, Lcom/kakao/sdk/friend/core/l/t;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/y;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/kakao/sdk/friend/core/l/t;-><init>(Lcom/kakao/sdk/friend/core/m/i;)V

    new-instance v4, Lcom/kakao/sdk/friend/core/l/u;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/y;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-static {v0}, Lcom/kakao/sdk/friend/core/l/S;->access$getViewModel(Lcom/kakao/sdk/friend/core/l/S;)Lcom/kakao/sdk/friend/core/m/i;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/kakao/sdk/friend/core/l/u;-><init>(Lcom/kakao/sdk/friend/core/m/i;)V

    new-instance v5, Lcom/kakao/sdk/friend/core/l/v;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/y;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-direct {v5, v0}, Lcom/kakao/sdk/friend/core/l/v;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    new-instance v6, Lcom/kakao/sdk/friend/core/l/w;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/y;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-direct {v6, v0}, Lcom/kakao/sdk/friend/core/l/w;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    new-instance v7, Lcom/kakao/sdk/friend/core/l/x;

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/y;->a:Lcom/kakao/sdk/friend/core/l/S;

    invoke-direct {v7, v0}, Lcom/kakao/sdk/friend/core/l/x;-><init>(Lcom/kakao/sdk/friend/core/l/S;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/kakao/sdk/friend/core/b/d;-><init>(ZLcom/kakao/sdk/friend/core/internal/PickerViewType;Lcom/kakao/sdk/friend/core/l/t;Lcom/kakao/sdk/friend/core/l/u;Lcom/kakao/sdk/friend/core/l/v;Lcom/kakao/sdk/friend/core/l/w;Lcom/kakao/sdk/friend/core/l/x;)V

    return-object v8

    .array-data 1
    .end array-data
.end method
