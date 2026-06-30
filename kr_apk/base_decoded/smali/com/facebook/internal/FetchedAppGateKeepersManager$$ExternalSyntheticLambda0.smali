.class public final synthetic Lcom/facebook/internal/FetchedAppGateKeepersManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->$r8$lambda$Tw9JXEbPRzoud2mdIxizp6VF2V0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
