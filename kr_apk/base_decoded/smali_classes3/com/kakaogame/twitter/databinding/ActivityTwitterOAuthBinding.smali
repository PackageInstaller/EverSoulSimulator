.class public final Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;
.super Ljava/lang/Object;
.source "ActivityTwitterOAuthBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final twSpinner:Landroid/widget/ProgressBar;

.field public final twWebView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/webkit/WebView;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 329
    iput-object p2, p0, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->twSpinner:Landroid/widget/ProgressBar;

    .line 339
    iput-object p3, p0, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->twWebView:Landroid/webkit/WebView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;
    .locals 3

    .line 639
    sget v0, Lcom/kakaogame/twitter/R$id;->tw__spinner:I

    .line 649
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 699
    sget v0, Lcom/kakaogame/twitter/R$id;->tw__web_view:I

    .line 709
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 759
    new-instance v0, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/webkit/WebView;)V

    return-object v0

    .line 779
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 789
    new-instance v0, Ljava/lang/NullPointerException;

    const v1, 0x3362bed3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 449
    invoke-static {p0, v0, v1}, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;
    .locals 2

    .line 509
    sget v0, Lcom/kakaogame/twitter/R$layout;->activity_twitter_o_auth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 529
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 549
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->bind(Landroid/view/View;)Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/kakaogame/twitter/databinding/ActivityTwitterOAuthBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
