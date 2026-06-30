.class public final synthetic Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/core/CoreManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/core/CoreManager;JLandroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;->f$0:Lcom/kakaogame/core/CoreManager;

    iput-wide p2, p0, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;->f$2:Landroid/app/Activity;

    iput-object p5, p0, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;->f$0:Lcom/kakaogame/core/CoreManager;

    iget-wide v1, p0, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;->f$2:Landroid/app/Activity;

    iget-object v4, p0, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kakaogame/core/CoreManager;->$r8$lambda$_rlONimUlvg0zho6hK5VUJhbl4k(Lcom/kakaogame/core/CoreManager;JLandroid/app/Activity;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
