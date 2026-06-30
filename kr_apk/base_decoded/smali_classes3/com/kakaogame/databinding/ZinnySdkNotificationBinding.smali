.class public final Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;
.super Ljava/lang/Object;
.source "ZinnySdkNotificationBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final zinnySdkNotification:Landroid/widget/LinearLayout;

.field public final zinnySdkNotificationContent:Landroid/widget/TextView;

.field public final zinnySdkNotificationIcon:Landroid/widget/ImageView;

.field public final zinnySdkNotificationTime:Landroid/widget/TextView;

.field public final zinnySdkNotificationTitle:Landroid/widget/TextView;

.field public final zinnySdkNotificationTop:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->rootView:Landroid/widget/LinearLayout;

    .line 489
    iput-object p2, p0, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->zinnySdkNotification:Landroid/widget/LinearLayout;

    .line 499
    iput-object p3, p0, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->zinnySdkNotificationContent:Landroid/widget/TextView;

    .line 509
    iput-object p4, p0, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->zinnySdkNotificationIcon:Landroid/widget/ImageView;

    .line 519
    iput-object p5, p0, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->zinnySdkNotificationTime:Landroid/widget/TextView;

    .line 529
    iput-object p6, p0, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->zinnySdkNotificationTitle:Landroid/widget/TextView;

    .line 539
    iput-object p7, p0, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->zinnySdkNotificationTop:Landroid/widget/RelativeLayout;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;
    .locals 8

    .line 839
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 859
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_notification_content:I

    .line 869
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 919
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_notification_icon:I

    .line 929
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 979
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_notification_time:I

    .line 989
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 1039
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_notification_title:I

    .line 1049
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1099
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_notification_top:I

    .line 1109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    .line 1159
    new-instance p0, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V

    return-object p0

    .line 1199
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1209
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 649
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;
    .locals 2

    .line 709
    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_notification:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 729
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 749
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/kakaogame/databinding/ZinnySdkNotificationBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
