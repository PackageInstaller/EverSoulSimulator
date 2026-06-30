.class public final Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
.super Ljava/lang/Object;
.source "KGApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGApplication$KGPermissionTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u000fJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u000fJ\u0006\u0010\u0015\u001a\u00020\u0008R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;",
        "",
        "<init>",
        "()V",
        "color",
        "Lcom/kakaogame/KGApplication$KGThemeColor;",
        "(Lcom/kakaogame/KGApplication$KGThemeColor;)V",
        "theme",
        "Lcom/kakaogame/KGApplication$KGPermissionTheme;",
        "getTheme",
        "()Lcom/kakaogame/KGApplication$KGPermissionTheme;",
        "setTheme",
        "(Lcom/kakaogame/KGApplication$KGPermissionTheme;)V",
        "setBackgroundResourceId",
        "resourceId",
        "",
        "setIconResourceId",
        "setBackgroundColor",
        "setTitleTextColor",
        "setContentTextColor",
        "setConfirmTextColor",
        "build",
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
.field public static final Companion:Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;


# instance fields
.field private theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->Companion:Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 3969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3979
    new-instance v0, Lcom/kakaogame/KGApplication$KGPermissionTheme;

    invoke-direct {v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakaogame/KGApplication$KGThemeColor;)V
    .locals 1

    const v0, 0x6d0b5590

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4019
    new-instance v0, Lcom/kakaogame/KGApplication$KGPermissionTheme;

    invoke-direct {v0, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;-><init>(Lcom/kakaogame/KGApplication$KGThemeColor;)V

    iput-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final createTheme(Lcom/kakaogame/KGApplication$KGThemeColor;)Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->Companion:Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;->createTheme(Lcom/kakaogame/KGApplication$KGThemeColor;)Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final build()Lcom/kakaogame/KGApplication$KGPermissionTheme;
    .locals 1

    .line 4359
    iget-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTheme()Lcom/kakaogame/KGApplication$KGPermissionTheme;
    .locals 1

    .line 3949
    iget-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setBackgroundColor(I)Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
    .locals 2

    .line 4159
    iget-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    const v1, 0x5d1761d7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setBackgroundResourceId(I)Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
    .locals 2

    .line 4059
    iget-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    const v1, -0x451e262f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setConfirmTextColor(I)Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
    .locals 2

    .line 4309
    iget-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    const v1, 0x7d774905

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setContentTextColor(I)Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
    .locals 2

    .line 4259
    iget-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    const v1, 0x543e48da

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setIconResourceId(I)Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
    .locals 2

    .line 4109
    iget-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    const v1, 0x6d0b5700

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTheme(Lcom/kakaogame/KGApplication$KGPermissionTheme;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3949
    iput-object p1, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTitleTextColor(I)Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
    .locals 2

    .line 4209
    iget-object v0, p0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;->theme:Lcom/kakaogame/KGApplication$KGPermissionTheme;

    const v1, -0x451e2487

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
