.class final Lcom/kakaogame/idp/KGKakao2Auth$Item;
.super Ljava/lang/Object;
.source "KGKakao2Auth.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/idp/KGKakao2Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/kakaogame/idp/KGKakao2Auth$Item;",
        "",
        "text",
        "",
        "icon",
        "",
        "authType",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getText",
        "()Ljava/lang/String;",
        "getIcon",
        "()I",
        "getAuthType",
        "idp_kakao_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final authType:Ljava/lang/String;

.field private final icon:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const v0, 0x33619deb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/idp/KGKakao2Auth$Item;->text:Ljava/lang/String;

    iput p2, p0, Lcom/kakaogame/idp/KGKakao2Auth$Item;->icon:I

    iput-object p3, p0, Lcom/kakaogame/idp/KGKakao2Auth$Item;->authType:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getAuthType()Ljava/lang/String;
    .locals 1

    .line 6239
    iget-object v0, p0, Lcom/kakaogame/idp/KGKakao2Auth$Item;->authType:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getIcon()I
    .locals 1

    .line 6239
    iget v0, p0, Lcom/kakaogame/idp/KGKakao2Auth$Item;->icon:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 6239
    iget-object v0, p0, Lcom/kakaogame/idp/KGKakao2Auth$Item;->text:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
