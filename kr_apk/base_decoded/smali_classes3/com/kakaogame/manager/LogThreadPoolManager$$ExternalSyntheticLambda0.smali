.class public final synthetic Lcom/kakaogame/manager/LogThreadPoolManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/manager/LogThreadPoolManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/manager/LogThreadPoolManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/kakaogame/manager/LogThreadPoolManager;->$r8$lambda$jjbMRamqHG6UhvXeuE5vsDiAdAc(Ljava/lang/Runnable;)V

    return-void

    .array-data 1
    .end array-data
.end method
