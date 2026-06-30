.class public final synthetic Lcom/kakaogame/KGKakaoTalkMessage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/KGResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/KGResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/KGKakaoTalkMessage$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/KGResultCallback;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/KGKakaoTalkMessage$$ExternalSyntheticLambda0;->f$0:Lcom/kakaogame/KGResultCallback;

    check-cast p1, Lcom/kakao/sdk/share/model/SharingResult;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/kakaogame/KGKakaoTalkMessage;->$r8$lambda$QKY378JdmiXf300jkI0fiZmkK4I(Lcom/kakaogame/KGResultCallback;Lcom/kakao/sdk/share/model/SharingResult;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
