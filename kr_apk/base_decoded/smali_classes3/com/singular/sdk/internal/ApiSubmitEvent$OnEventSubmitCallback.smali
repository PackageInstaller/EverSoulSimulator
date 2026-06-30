.class public Lcom/singular/sdk/internal/ApiSubmitEvent$OnEventSubmitCallback;
.super Ljava/lang/Object;
.source "ApiSubmitEvent.java"

# interfaces
.implements Lcom/singular/sdk/internal/Api$OnApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ApiSubmitEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnEventSubmitCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ApiSubmitEvent;


# direct methods
.method public constructor <init>(Lcom/singular/sdk/internal/ApiSubmitEvent;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiSubmitEvent$OnEventSubmitCallback;->this$0:Lcom/singular/sdk/internal/ApiSubmitEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public handle(Lcom/singular/sdk/internal/SingularInstance;ILjava/lang/String;)Z
    .locals 2

    const/16 p1, 0x19d

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0xc8

    const/4 v1, 0x0

    if-eq p2, p1, :cond_1

    return v1

    .line 719
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    const-string p3, ""

    .line 739
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ok"

    .line 749
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return v0

    :catch_0
    move-exception p1

    .line 789
    invoke-static {}, Lcom/singular/sdk/internal/ApiSubmitEvent;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p2

    const-string p3, "error in handle()"

    invoke-virtual {p2, p3, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v1

    nop

    .array-data 1
    .end array-data
.end method
