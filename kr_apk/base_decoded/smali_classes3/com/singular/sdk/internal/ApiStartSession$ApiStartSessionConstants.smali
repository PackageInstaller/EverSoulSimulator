.class Lcom/singular/sdk/internal/ApiStartSession$ApiStartSessionConstants;
.super Ljava/lang/Object;
.source "ApiStartSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ApiStartSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApiStartSessionConstants"
.end annotation


# static fields
.field static final STRING_REFERRER:Ljava/lang/String; = "referrer"


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ApiStartSession;


# direct methods
.method private constructor <init>(Lcom/singular/sdk/internal/ApiStartSession;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiStartSession$ApiStartSessionConstants;->this$0:Lcom/singular/sdk/internal/ApiStartSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
