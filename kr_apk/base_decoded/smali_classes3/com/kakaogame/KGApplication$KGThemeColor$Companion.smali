.class public final Lcom/kakaogame/KGApplication$KGThemeColor$Companion;
.super Ljava/lang/Object;
.source "KGApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGApplication$KGThemeColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0086\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/KGApplication$KGThemeColor$Companion;",
        "",
        "<init>",
        "()V",
        "get",
        "Lcom/kakaogame/KGApplication$KGThemeColor;",
        "code",
        "",
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

    .line 5499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/KGApplication$KGThemeColor$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lcom/kakaogame/KGApplication$KGThemeColor;
    .locals 2

    .line 5529
    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->WHITE:Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-virtual {v0}, Lcom/kakaogame/KGApplication$KGThemeColor;->getCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5539
    sget-object p1, Lcom/kakaogame/KGApplication$KGThemeColor;->WHITE:Lcom/kakaogame/KGApplication$KGThemeColor;

    goto :goto_0

    .line 5559
    :cond_0
    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->BLACK:Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-virtual {v0}, Lcom/kakaogame/KGApplication$KGThemeColor;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5569
    sget-object p1, Lcom/kakaogame/KGApplication$KGThemeColor;->BLACK:Lcom/kakaogame/KGApplication$KGThemeColor;

    goto :goto_0

    .line 5589
    :cond_1
    sget-object v0, Lcom/kakaogame/KGApplication$KGThemeColor;->GRAY:Lcom/kakaogame/KGApplication$KGThemeColor;

    invoke-virtual {v0}, Lcom/kakaogame/KGApplication$KGThemeColor;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5599
    sget-object p1, Lcom/kakaogame/KGApplication$KGThemeColor;->GRAY:Lcom/kakaogame/KGApplication$KGThemeColor;

    goto :goto_0

    .line 5619
    :cond_2
    sget-object p1, Lcom/kakaogame/KGApplication$KGThemeColor;->CUSTOM:Lcom/kakaogame/KGApplication$KGThemeColor;

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
