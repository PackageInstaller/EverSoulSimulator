.class public final Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor$Companion;
.super Ljava/lang/Object;
.source "WebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;
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
        "Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor$Companion;",
        "",
        "<init>",
        "()V",
        "get",
        "Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;",
        "name",
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

    .line 9389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor$Companion;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;
    .locals 2

    .line 9409
    sget-object v0, Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;->BLACK:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

    invoke-static {v0}, Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;->access$getValue$p(Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9419
    sget-object p1, Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;->BLACK:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

    return-object p1

    .line 9429
    :cond_0
    sget-object v0, Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;->GREY:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

    invoke-static {v0}, Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;->access$getValue$p(Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9439
    sget-object p1, Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;->GREY:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

    return-object p1

    .line 9459
    :cond_1
    sget-object p1, Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;->BLACK:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

    return-object p1

    .array-data 1
    .end array-data
.end method
