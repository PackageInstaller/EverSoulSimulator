.class public Lcom/singular/sdk/internal/ApiGDPRConsent$OnResolveCallback;
.super Ljava/lang/Object;
.source "ApiGDPRConsent.java"

# interfaces
.implements Lcom/singular/sdk/internal/Api$OnApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ApiGDPRConsent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnResolveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ApiGDPRConsent;


# direct methods
.method public constructor <init>(Lcom/singular/sdk/internal/ApiGDPRConsent;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiGDPRConsent$OnResolveCallback;->this$0:Lcom/singular/sdk/internal/ApiGDPRConsent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public handle(Lcom/singular/sdk/internal/SingularInstance;ILjava/lang/String;)Z
    .locals 0

    const/16 p1, 0xc8

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .array-data 1
    .end array-data
.end method
