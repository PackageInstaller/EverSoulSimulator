.class public final Lcom/facebook/gamingservices/ContextSwitchDialog$Result;
.super Ljava/lang/Object;
.source "ContextSwitchDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/ContextSwitchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContextSwitchDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextSwitchDialog.kt\ncom/facebook/gamingservices/ContextSwitchDialog$Result\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/gamingservices/ContextSwitchDialog$Result;",
        "",
        "contextID",
        "",
        "(Ljava/lang/String;)V",
        "response",
        "Lcom/facebook/GraphResponse;",
        "(Lcom/facebook/GraphResponse;)V",
        "getContextID",
        "()Ljava/lang/String;",
        "setContextID",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private contextID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/GraphResponse;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data"

    .line 157
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->setContextID(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->contextID:Ljava/lang/String;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "contextID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->contextID:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getContextID()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->contextID:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setContextID(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/facebook/gamingservices/ContextSwitchDialog$Result;->contextID:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
