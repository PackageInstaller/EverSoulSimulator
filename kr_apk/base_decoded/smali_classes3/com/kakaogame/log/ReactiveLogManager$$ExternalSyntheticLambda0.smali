.class public final synthetic Lcom/kakaogame/log/ReactiveLogManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/log/ReactiveLogManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/kakaogame/log/ReactiveLogManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/log/ReactiveLogManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/kakaogame/log/ReactiveLogManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/kakaogame/log/ReactiveLogManager;->$r8$lambda$-bkJz7-pOcPKdkWJjsGg6D4veyQ(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method
