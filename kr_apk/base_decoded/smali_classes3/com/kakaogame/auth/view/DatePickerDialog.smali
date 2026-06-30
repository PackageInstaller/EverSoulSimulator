.class public final Lcom/kakaogame/auth/view/DatePickerDialog;
.super Landroid/app/Dialog;
.source "DatePickerDialog.kt"

# interfaces
.implements Lcom/kakaogame/KGActivityManager$ConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/auth/view/DatePickerDialog$Companion;,
        Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0018\u0000 *2\u00020\u00012\u00020\u0002:\u0002)*B\u001b\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0007\u0010\u000cB/\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0007\u0010\u0010J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u001bH\u0002J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u000eH\u0002J\u0008\u0010 \u001a\u00020\u001bH\u0014J\u0008\u0010!\u001a\u00020\u001bH\u0016J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\'H\u0002J\u0008\u0010(\u001a\u00020\'H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006+"
    }
    d2 = {
        "Lcom/kakaogame/auth/view/DatePickerDialog;",
        "Landroid/app/Dialog;",
        "Lcom/kakaogame/KGActivityManager$ConfigChangeListener;",
        "activity",
        "Landroid/app/Activity;",
        "callbackListener",
        "Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;",
        "<init>",
        "(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;)V",
        "listener",
        "age",
        "",
        "(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;I)V",
        "title",
        "",
        "subTitle",
        "(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;Ljava/lang/String;Ljava/lang/String;)V",
        "binding",
        "Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;",
        "limitAge",
        "preOrientation",
        "dateOnlyView",
        "",
        "date",
        "getDate",
        "()Ljava/lang/String;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initView",
        "showSelectedDate",
        "onStart",
        "dismiss",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "loadDate",
        "savedDate",
        "",
        "saveDate",
        "DatePickerListener",
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
.field public static final Companion:Lcom/kakaogame/auth/view/DatePickerDialog$Companion;

.field private static final TAG:Ljava/lang/String; = "DatePickerDialog"


# instance fields
.field private binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

.field private final callbackListener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

.field private dateOnlyView:Z

.field private limitAge:I

.field private preOrientation:I

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$SzN535hdYZG2uwDmqrr38Rs2QW4(Lcom/kakaogame/auth/view/DatePickerDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/kakaogame/auth/view/DatePickerDialog;->onCreate$lambda$1(Lcom/kakaogame/auth/view/DatePickerDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$cNscSfi75CACd7htAfVdjx4B2SY(Lcom/kakaogame/auth/view/DatePickerDialog;Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/DatePickerDialog;->initView$lambda$4$lambda$2(Lcom/kakaogame/auth/view/DatePickerDialog;Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$fCoJvN3Na9-p1B9zoFq_x_mthnU(Lcom/kakaogame/auth/view/DatePickerDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kakaogame/auth/view/DatePickerDialog;->showSelectedDate$lambda$6(Lcom/kakaogame/auth/view/DatePickerDialog;Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$gcOqDf2ImTCjjOlJEGRgqDynQDQ(Lcom/kakaogame/auth/view/DatePickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/DatePickerDialog;->initView$lambda$4$lambda$3(Lcom/kakaogame/auth/view/DatePickerDialog;Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$msiftstRnuh0NciY2nIYsqaXspg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/kakaogame/auth/view/DatePickerDialog;->showSelectedDate$lambda$7(Landroid/content/DialogInterface;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/auth/view/DatePickerDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/auth/view/DatePickerDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/auth/view/DatePickerDialog;->Companion:Lcom/kakaogame/auth/view/DatePickerDialog$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;)V
    .locals 2

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 339
    sget v1, Landroidx/appcompat/R$style;->Base_AlertDialog_AppCompat:I

    .line 319
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->callbackListener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    const/4 p2, -0x1

    .line 389
    iput p2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->preOrientation:I

    .line 669
    invoke-virtual {p0, p1}, Lcom/kakaogame/auth/view/DatePickerDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;I)V
    .locals 1

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/auth/view/DatePickerDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;)V

    .line 719
    iput p3, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->limitAge:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/auth/view/DatePickerDialog;-><init>(Landroid/app/Activity;Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;)V

    const/4 p1, 0x1

    .line 769
    iput-boolean p1, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->dateOnlyView:Z

    .line 779
    iput-object p3, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->title:Ljava/lang/String;

    .line 789
    iput-object p4, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->subTitle:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final getDate()Ljava/lang/String;
    .locals 9

    .line 459
    iget-object v0, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    const/4 v1, 0x0

    const v2, -0x45198e67

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    .line 469
    iget-object v3, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    iget-object v3, v3, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 479
    iget-object v4, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-static {}, Lcom/kakaogame/KGSystem;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    const v6, 0x3362455b

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\ub144 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\uc6d4 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xc77c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 529
    :cond_3
    :try_start_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MMM-dd-yyyy"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 539
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 549
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 559
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 569
    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 589
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 599
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object v0, v2

    goto :goto_1

    .line 619
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final initView()V
    .locals 11

    .line 1049
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x224228cc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d10c8af

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    const/4 v1, 0x0

    const v3, -0x45198e67

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    .line 1079
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 1089
    :cond_0
    sget-object v4, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1099
    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskData;->getServerCalendarOnPST()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    .line 1109
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    .line 1119
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    .line 1129
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1149
    iget-object v8, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    sget-object v9, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v9}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 1159
    iget-object v8, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v8, v6, v7, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 1179
    sget-object v8, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x6d0cff50

    invoke-static {v10}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const v9, -0x45198def

    invoke-static {v9}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, -0x45198c3f

    invoke-static {v7}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-boolean v2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->dateOnlyView:Z

    if-eqz v2, :cond_3

    .line 1209
    iget-object v2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->title:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1219
    iget-object v2, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->title:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    :cond_1
    iget-object v2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->subTitle:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1249
    iget-object v2, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDesc:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->subTitle:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1269
    :cond_2
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v4, 0x5439e1ca

    invoke-static {v4}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1279
    iget-object v4, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDesc:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    :goto_0
    iget-object v2, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaButton:Landroid/widget/Button;

    new-instance v4, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0}, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/auth/view/DatePickerDialog;Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1399
    :cond_3
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->limitAge:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x6d0ce1b8

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1409
    iget-object v4, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDesc:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1419
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaButton:Landroid/widget/Button;

    new-instance v2, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/auth/view/DatePickerDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1449
    :goto_1
    iget-object v0, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kakaogame/auth/view/DatePickerDialog;->setContentView(Landroid/view/View;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final initView$lambda$4$lambda$2(Lcom/kakaogame/auth/view/DatePickerDialog;Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;Landroid/view/View;)V
    .locals 2

    .line 1309
    iget-object p2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->callbackListener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    if-eqz p2, :cond_0

    .line 1319
    iget-object p2, p1, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p2}, Landroid/widget/DatePicker;->getYear()I

    move-result p2

    .line 1329
    iget-object v0, p1, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1339
    iget-object p1, p1, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p1

    .line 1349
    iget-object v1, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->callbackListener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    invoke-interface {v1, p2, v0, p1}, Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;->onDatePick(III)V

    .line 1369
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->dismiss()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final initView$lambda$4$lambda$3(Lcom/kakaogame/auth/view/DatePickerDialog;Landroid/view/View;)V
    .locals 0

    .line 1419
    invoke-direct {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getDate()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kakaogame/auth/view/DatePickerDialog;->showSelectedDate(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final loadDate([I)V
    .locals 4

    .line 2089
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x2255f4b6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d10c8af

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    iget-object v0, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    if-nez v0, :cond_0

    const v0, -0x45198e67

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/DatePicker;->updateDate(III)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final onCreate$lambda$1(Lcom/kakaogame/auth/view/DatePickerDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 899
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 919
    iget-object p1, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->callbackListener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;->onUserCanceled()V

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->dismiss()V

    return p3

    :cond_1
    const/4 p0, 0x0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final saveDate()[I
    .locals 5

    .line 2149
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5d10c8af

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224234ac

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2169
    iget-object v1, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    const/4 v2, 0x0

    const v3, -0x45198e67

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    const/4 v4, 0x0

    aput v1, v0, v4

    .line 2179
    iget-object v1, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    .line 2189
    iget-object v1, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iget-object v1, v2, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final showSelectedDate(Ljava/lang/String;)V
    .locals 4

    .line 1489
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5d10d74f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d10c8af

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x2255f77e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1519
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v3, 0x2255f62e

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kakaogame/util/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/kakaogame/ui/DialogManager;->createAlertDialogBuilder(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1539
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1559
    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_yes:I

    new-instance v1, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/kakaogame/auth/view/DatePickerDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1649
    sget v0, Lcom/kakaogame/R$string;->kakao_game_sdk_no:I

    new-instance v1, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1679
    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 1689
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1699
    invoke-static {p1}, Lcom/liapp/y;->ڱڱحֱح(Landroid/app/AlertDialog;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x1030002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1709
    invoke-static {p1}, Lcom/liapp/y;->ڱڱحֱح(Landroid/app/AlertDialog;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1729
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final showSelectedDate$lambda$6(Lcom/kakaogame/auth/view/DatePickerDialog;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1569
    iget-object p2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->callbackListener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    if-eqz p2, :cond_1

    .line 1579
    iget-object p2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    if-nez p2, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    iget-object p2, p2, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->kakaoGameCoppaDatePicker:Landroid/widget/DatePicker;

    .line 1589
    iget-object v0, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->callbackListener:Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;

    invoke-virtual {p2}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {p2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p2

    invoke-interface {v0, v1, v2, p2}, Lcom/kakaogame/auth/view/DatePickerDialog$DatePickerListener;->onDatePick(III)V

    .line 1619
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1629
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final showSelectedDate$lambda$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1649
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 1859
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1879
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5d10c8af

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d70f9e5

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->removeConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const v0, 0x7d77683d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1939
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x224230c4

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x5d10d32f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->preOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x5d10c8af

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    invoke-direct {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->saveDate()[I

    move-result-object v0

    .line 1979
    iget v1, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->preOrientation:I

    if-ltz v1, :cond_0

    .line 1989
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->preOrientation:I

    if-eq v1, v2, :cond_2

    .line 1999
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    move-result-object v1

    iput-object v1, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->binding:Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;

    if-nez v1, :cond_1

    const v1, -0x45198e67

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 2009
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1}, Lcom/kakaogame/databinding/KakaoGameSdkCoppaBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/kakaogame/auth/view/DatePickerDialog;->setContentView(Landroid/view/View;)V

    .line 2019
    invoke-direct {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->initView()V

    .line 2029
    invoke-direct {p0, v0}, Lcom/kakaogame/auth/view/DatePickerDialog;->loadDate([I)V

    .line 2049
    :cond_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/kakaogame/auth/view/DatePickerDialog;->preOrientation:I

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 829
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 849
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x5d10c8af

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x2255f37e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 869
    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x1030002

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 879
    invoke-virtual {p0, v1}, Lcom/kakaogame/auth/view/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 889
    new-instance p1, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/kakaogame/auth/view/DatePickerDialog$$ExternalSyntheticLambda4;-><init>(Lcom/kakaogame/auth/view/DatePickerDialog;)V

    invoke-virtual {p0, p1}, Lcom/kakaogame/auth/view/DatePickerDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 999
    invoke-direct {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->initView()V

    .line 1009
    sget-object p1, Lcom/kakaogame/util/DisplayUtil;->INSTANCE:Lcom/kakaogame/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/auth/view/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/kakaogame/util/DisplayUtil;->setFullScreenView(Landroid/app/Activity;Landroid/view/Window;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected onStart()V
    .locals 3

    .line 1779
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1799
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x5d10c8af

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2255f32e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    sget-object v0, Lcom/kakaogame/KGActivityManager;->Companion:Lcom/kakaogame/KGActivityManager$Companion;

    move-object v1, p0

    check-cast v1, Lcom/kakaogame/KGActivityManager$ConfigChangeListener;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGActivityManager$Companion;->addConfigChangeListener(Lcom/kakaogame/KGActivityManager$ConfigChangeListener;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
