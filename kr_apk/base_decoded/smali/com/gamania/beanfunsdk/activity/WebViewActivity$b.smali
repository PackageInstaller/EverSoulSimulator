.class Lcom/gamania/beanfunsdk/activity/WebViewActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamania/beanfunsdk/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gamania/beanfunsdk/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/gamania/beanfunsdk/activity/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/gamania/beanfunsdk/activity/WebViewActivity$b;->a:Lcom/gamania/beanfunsdk/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/gamania/beanfunsdk/activity/WebViewActivity$b;->a:Lcom/gamania/beanfunsdk/activity/WebViewActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .array-data 1
    .end array-data
.end method
