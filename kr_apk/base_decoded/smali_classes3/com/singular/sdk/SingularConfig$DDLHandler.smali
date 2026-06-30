.class public Lcom/singular/sdk/SingularConfig$DDLHandler;
.super Ljava/lang/Object;
.source "SingularConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/SingularConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DDLHandler"
.end annotation


# instance fields
.field public handler:Lcom/singular/sdk/DeferredDeepLinkHandler;

.field public timeoutInSec:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3c

    .line 789
    iput-wide v0, p0, Lcom/singular/sdk/SingularConfig$DDLHandler;->timeoutInSec:J

    return-void

    .array-data 1
    .end array-data
.end method
