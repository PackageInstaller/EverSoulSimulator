.class public final synthetic Lcom/kakaogame/security/ProtectionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/security/ProtectionManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kakaogame/security/ProtectionManager$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/security/ProtectionManager$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kakaogame/security/ProtectionManager$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/util/MutexLock;

    invoke-static {v0, v1}, Lcom/kakaogame/security/ProtectionManager;->$r8$lambda$_5iBbLXDmr5mBPNltqZ2KnpscSI(Landroid/app/Activity;Lcom/kakaogame/util/MutexLock;)V

    return-void

    .array-data 1
    .end array-data
.end method
