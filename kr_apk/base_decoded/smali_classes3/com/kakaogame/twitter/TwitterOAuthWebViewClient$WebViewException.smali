.class public final Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;
.super Ljava/lang/Exception;
.source "TwitterOAuthWebViewClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WebViewException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B%\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "errorCode",
        "",
        "description",
        "",
        "failingUrl",
        "<init>",
        "(Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;ILjava/lang/String;Ljava/lang/String;)V",
        "getErrorCode",
        "()I",
        "getFailingUrl",
        "()Ljava/lang/String;",
        "getDescription",
        "idp_twitter_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final errorCode:I

.field private final failingUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;


# direct methods
.method public constructor <init>(Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1069
    iput-object p1, p0, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;->this$0:Lcom/kakaogame/twitter/TwitterOAuthWebViewClient;

    .line 1109
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1079
    iput p2, p0, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;->errorCode:I

    .line 1099
    iput-object p4, p0, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;->failingUrl:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1129
    invoke-virtual {p0}, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getErrorCode()I
    .locals 1

    .line 1079
    iget v0, p0, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;->errorCode:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFailingUrl()Ljava/lang/String;
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/kakaogame/twitter/TwitterOAuthWebViewClient$WebViewException;->failingUrl:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
