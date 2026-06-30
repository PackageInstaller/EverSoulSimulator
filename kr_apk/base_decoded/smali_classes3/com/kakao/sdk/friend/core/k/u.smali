.class public abstract Lcom/kakao/sdk/friend/core/k/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Integer;Landroid/content/Context;)Landroid/util/TypedValue;
    .locals 3

    const-string v0, "context"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    rem-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget p1, Lcom/kakao/sdk/friend/core/R$attr;->default_profile_image3:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget p1, Lcom/kakao/sdk/friend/core/R$attr;->default_profile_image2:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget p1, Lcom/kakao/sdk/friend/core/R$attr;->default_profile_image1:I

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
