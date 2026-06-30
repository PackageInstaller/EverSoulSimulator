.class public final synthetic Lcom/kakaogame/kakao/KakaoGameAPI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/kakao/KakaoGameAPI$$ExternalSyntheticLambda3;->f$0:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/kakao/KakaoGameAPI$$ExternalSyntheticLambda3;->f$0:Lcom/kakaogame/util/MutexLock;

    check-cast p1, Lcom/kakao/sdk/talk/model/Friends;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/kakaogame/kakao/KakaoGameAPI;->$r8$lambda$3gdsT1xE1maF-TtmK1Vm17QqaEM(Lcom/kakaogame/util/MutexLock;Lcom/kakao/sdk/talk/model/Friends;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
