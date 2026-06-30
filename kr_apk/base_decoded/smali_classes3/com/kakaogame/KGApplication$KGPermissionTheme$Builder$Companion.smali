.class public final Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;
.super Ljava/lang/Object;
.source "KGApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;",
        "",
        "<init>",
        "()V",
        "createTheme",
        "Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;",
        "color",
        "Lcom/kakaogame/KGApplication$KGThemeColor;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final createTheme()Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
    .locals 1

    .line 4409
    new-instance v0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;

    invoke-direct {v0}, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;-><init>()V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final createTheme(Lcom/kakaogame/KGApplication$KGThemeColor;)Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const v0, 0x6d0b5590

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4459
    new-instance v0, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;

    invoke-direct {v0, p1}, Lcom/kakaogame/KGApplication$KGPermissionTheme$Builder;-><init>(Lcom/kakaogame/KGApplication$KGThemeColor;)V

    return-object v0

    .array-data 1
    .end array-data
.end method
