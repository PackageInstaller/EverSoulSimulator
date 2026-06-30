.class public final Lcom/kakaogame/KGApplication$KGPermissionTheme;
.super Lcom/kakaogame/KGObject;
.source "KGApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGPermissionTheme"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;,
        Lcom/kakaogame/KGApplication$KGPermissionTheme$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u0000  2\u00020\u0001:\u0002\u001f B!\u0008\u0016\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\t\u0008\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0008B\u0011\u0008\u0014\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0018R\u0011\u0010\u001d\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0018\u00a8\u0006!"
    }
    d2 = {
        "Lcom/kakaogame/KGApplication$KGPermissionTheme;",
        "Lcom/kakaogame/KGObject;",
        "content",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "()V",
        "color",
        "Lcom/kakaogame/KGApplication$KGThemeColor;",
        "(Lcom/kakaogame/KGApplication$KGThemeColor;)V",
        "themeColor",
        "getThemeColor",
        "()Lcom/kakaogame/KGApplication$KGThemeColor;",
        "backgroundResource",
        "Landroid/graphics/drawable/Drawable;",
        "getBackgroundResource",
        "()Landroid/graphics/drawable/Drawable;",
        "iconResource",
        "getIconResource",
        "backgroundColor",
        "",
        "getBackgroundColor",
        "()I",
        "titleTextColor",
        "getTitleTextColor",
        "contentTextColor",
        "getContentTextColor",
        "confirmTextColor",
        "getConfirmTextColor",
        "Builder",
        "Companion",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakaogame/KGApplication$KGPermissionTheme$Companion;

.field private static final KEY_BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field private static final KEY_BACKGROUND_RESOURCE_ID:Ljava/lang/String; = "backgroundResourceId"

.field private static final KEY_CONFIRM_TEXT_COLOR:Ljava/lang/String; = "confirmTextColor"

.field private static final KEY_CONTENT_TEXT_COLOR:Ljava/lang/String; = "contentTextColor"

.field private static final KEY_ICON_RESOURCE_ID:Ljava/lang/String; = "iconResourceId"

.field private static final KEY_THEME_COLOR:Ljava/lang/String; = "themeColor"

.field private static final KEY_TITLE_TEXT_COLOR:Ljava/lang/String; = "titleTextColor"

.field private static final TAG:Ljava/lang/String; = "KGPermissionTheme"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGApplication$KGPermissionTheme$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGApplication$KGPermissionTheme;->Companion:Lcom/kakaogame/KGApplication$KGPermissionTheme$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5179
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5189
    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->CUSTOM:Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-virtual {v0}, Lcom/kakaogame/KGApplication$KGThemeColor;->getCode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d77449d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>(Lcom/kakaogame/KGApplication$KGThemeColor;)V
    .locals 4

    const v0, 0x6d0b5590

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5219
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7d77449d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 5229
    invoke-virtual {p1}, Lcom/kakaogame/KGApplication$KGThemeColor;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5239
    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->WHITE:Lcom/kakaogame/KGApplication$KGThemeColor;

    const v1, 0x7d774905

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543e48da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x451e2487

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x1000000

    .line 5249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 5279
    :cond_0
    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->BLACK:Lcom/kakaogame/KGApplication$KGThemeColor;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->GRAY:Lcom/kakaogame/KGApplication$KGThemeColor;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, -0x1

    .line 5289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5299
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3809
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    const-string p1, "themeColor"

    .line 3819
    invoke-virtual {p0, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3829
    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->WHITE:Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-virtual {v0}, Lcom/kakaogame/KGApplication$KGThemeColor;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7d774905

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543e48da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x451e2487

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    const/high16 p1, -0x1000000

    .line 3839
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3849
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3859
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 3869
    :cond_0
    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->BLACK:Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-virtual {v0}, Lcom/kakaogame/KGApplication$KGThemeColor;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->GRAY:Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-virtual {v0}, Lcom/kakaogame/KGApplication$KGThemeColor;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, -0x1

    .line 3879
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3889
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3899
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 2

    const v0, 0x5d1761d7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 4869
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 4889
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 4899
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 4909
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getBackgroundResource()Landroid/graphics/drawable/Drawable;
    .locals 5

    const v0, -0x451e262f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 4599
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4609
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4619
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4629
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x22524d56

    invoke-static {v4}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, -0x22458d8c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x5d176c07

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4649
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 4659
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4669
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 4689
    :cond_2
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getConfirmTextColor()I
    .locals 2

    const v0, 0x7d774905

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 5109
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 5129
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 5139
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 5149
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getContentTextColor()I
    .locals 2

    const v0, -0x451e2487

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 5029
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 5049
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 5059
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 5069
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getIconResource()Landroid/graphics/drawable/Drawable;
    .locals 4

    const v0, 0x6d0b5700

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 4729
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4739
    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4749
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 4759
    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 4769
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 4779
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 4809
    :cond_2
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    .line 4829
    :cond_3
    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getThemeColor()Lcom/kakaogame/KGApplication$KGThemeColor;
    .locals 2

    const v0, 0x7d77449d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 4529
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4539
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4549
    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->CUSTOM:Lcom/kakaogame/KGApplication$KGThemeColor;

    goto :goto_1

    .line 4559
    :cond_1
    sget-object v1, Lcom/kakaogame/KGApplication$KGThemeColor;->Companion:Lcom/kakaogame/KGApplication$KGThemeColor$Companion;

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGApplication$KGThemeColor$Companion;->get(Ljava/lang/String;)Lcom/kakaogame/KGApplication$KGThemeColor;

    move-result-object v0

    :goto_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getTitleTextColor()I
    .locals 2

    const v0, 0x543e48da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 4949
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 4969
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 4979
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 4989
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method
