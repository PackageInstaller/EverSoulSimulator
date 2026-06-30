.class public final synthetic Lcom/kakaogame/log/ErrorLogManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/log/ErrorLogManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/log/ErrorLogManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0, p1, p2}, Lcom/kakaogame/log/ErrorLogManager;->$r8$lambda$xHiFCGji7JApTA2Pz5H4RgIukV4(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .array-data 1
    .end array-data
.end method
