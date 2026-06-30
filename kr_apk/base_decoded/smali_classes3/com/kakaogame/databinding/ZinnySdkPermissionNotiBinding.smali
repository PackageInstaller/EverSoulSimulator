.class public final Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;
.super Ljava/lang/Object;
.source "ZinnySdkPermissionNotiBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final zinnySdkNotification:Landroid/widget/LinearLayout;

.field public final zinnySdkPermissionNotiContent:Landroid/widget/TextView;

.field public final zinnySdkPermissionNotiIcon:Landroid/widget/ImageView;

.field public final zinnySdkPermissionNotiScrollview:Landroid/widget/ScrollView;

.field public final zinnySdkPermissionNotiTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ScrollView;Landroid/widget/TextView;)V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->rootView:Landroid/widget/LinearLayout;

    .line 459
    iput-object p2, p0, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->zinnySdkNotification:Landroid/widget/LinearLayout;

    .line 469
    iput-object p3, p0, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->zinnySdkPermissionNotiContent:Landroid/widget/TextView;

    .line 479
    iput-object p4, p0, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->zinnySdkPermissionNotiIcon:Landroid/widget/ImageView;

    .line 489
    iput-object p5, p0, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->zinnySdkPermissionNotiScrollview:Landroid/widget/ScrollView;

    .line 499
    iput-object p6, p0, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->zinnySdkPermissionNotiTitle:Landroid/widget/TextView;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;
    .locals 7

    .line 799
    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    .line 819
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_permission_noti_content:I

    .line 829
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 879
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_permission_noti_icon:I

    .line 889
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 939
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_permission_noti_scrollview:I

    .line 949
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ScrollView;

    if-eqz v5, :cond_0

    .line 999
    sget v0, Lcom/kakaogame/R$id;->zinny_sdk_permission_noti_title:I

    .line 1009
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 1059
    new-instance p0, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v6}, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ScrollView;Landroid/widget/TextView;)V

    return-object p0

    .line 1099
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 1109
    new-instance v0, Ljava/lang/NullPointerException;

    const v1, 0x3362bed3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 609
    invoke-static {p0, v0, v1}, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;
    .locals 2

    .line 669
    sget v0, Lcom/kakaogame/R$layout;->zinny_sdk_permission_noti:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 689
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 709
    :cond_0
    invoke-static {p0}, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->bind(Landroid/view/View;)Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;

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
    invoke-virtual {p0}, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/kakaogame/databinding/ZinnySdkPermissionNotiBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
