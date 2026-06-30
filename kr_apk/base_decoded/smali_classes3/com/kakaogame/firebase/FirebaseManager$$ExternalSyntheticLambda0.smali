.class public final synthetic Lcom/kakaogame/firebase/FirebaseManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/kakaogame/firebase/FirebaseManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/kakaogame/firebase/FirebaseManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/firebase/FirebaseManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/kakaogame/firebase/FirebaseManager$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/firebase/FirebaseManager;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/firebase/FirebaseManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/kakaogame/firebase/FirebaseManager$$ExternalSyntheticLambda0;->f$1:Lcom/kakaogame/firebase/FirebaseManager;

    invoke-static {v0, v1, p1}, Lcom/kakaogame/firebase/FirebaseManager;->$r8$lambda$QiMkSne7lWlGbs2WmmXFfDLhUIk(Landroid/content/Context;Lcom/kakaogame/firebase/FirebaseManager;Lcom/google/android/gms/tasks/Task;)V

    return-void

    .array-data 1
    .end array-data
.end method
