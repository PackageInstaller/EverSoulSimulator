.class public final synthetic Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda11;->f$0:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/auth/view/LoginUIManager$$ExternalSyntheticLambda11;->f$0:Lcom/kakaogame/util/MutexLock;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/kakaogame/auth/view/LoginUIManager;->$r8$lambda$_U-jtgh4_16Fdd_-3-R2AmuFm88(Lcom/kakaogame/util/MutexLock;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
