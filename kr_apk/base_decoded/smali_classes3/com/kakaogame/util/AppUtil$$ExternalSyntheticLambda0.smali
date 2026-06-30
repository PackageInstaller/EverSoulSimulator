.class public final synthetic Lcom/kakaogame/util/AppUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(JLandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/kakaogame/util/AppUtil$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/kakaogame/util/AppUtil$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lcom/kakaogame/util/AppUtil$$ExternalSyntheticLambda0;->f$0:J

    iget-object v2, p0, Lcom/kakaogame/util/AppUtil$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/kakaogame/util/AppUtil;->$r8$lambda$WdeZl1JfrJ88QvGrKUZ3jhIysg8(JLandroid/app/Activity;)V

    return-void

    .array-data 1
    .end array-data
.end method
