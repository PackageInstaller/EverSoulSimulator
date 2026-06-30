.class public final Lcom/kakaogame/util/json/parser/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/util/json/parser/ParseException$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\tB\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"\u0004\u0008\u000f\u0010\tR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/kakaogame/util/json/parser/ParseException;",
        "Ljava/lang/Exception;",
        "position",
        "",
        "errorType",
        "unexpectedObject",
        "",
        "<init>",
        "(IILjava/lang/Object;)V",
        "(I)V",
        "(ILjava/lang/Object;)V",
        "getPosition",
        "()I",
        "setPosition",
        "getErrorType",
        "setErrorType",
        "getUnexpectedObject",
        "()Ljava/lang/Object;",
        "setUnexpectedObject",
        "(Ljava/lang/Object;)V",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
        "Companion",
        "common-kakaogames_release"
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
.field public static final Companion:Lcom/kakaogame/util/json/parser/ParseException$Companion;

.field public static final ERROR_UNEXPECTED_CHAR:I = 0x0

.field public static final ERROR_UNEXPECTED_EXCEPTION:I = 0x2

.field public static final ERROR_UNEXPECTED_TOKEN:I = 0x1

.field private static final serialVersionUID:J = -0x6d5dddf5349df2a3L


# instance fields
.field private errorType:I

.field private position:I

.field private unexpectedObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/util/json/parser/ParseException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/util/json/parser/ParseException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/util/json/parser/ParseException;->Companion:Lcom/kakaogame/util/json/parser/ParseException$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0, v0, p1, v1}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/kakaogame/util/json/parser/ParseException;->position:I

    iput p2, p0, Lcom/kakaogame/util/json/parser/ParseException;->errorType:I

    iput-object p3, p0, Lcom/kakaogame/util/json/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 189
    invoke-direct {p0, v0, p1, p2}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getErrorType()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/kakaogame/util/json/parser/ParseException;->errorType:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 229
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    iget v1, p0, Lcom/kakaogame/util/json/parser/ParseException;->errorType:I

    const v2, 0x22504cc6    # 2.82299E-18f

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const v1, -0x45173f17

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/kakaogame/util/json/parser/ParseException;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const v1, 0x5437539a

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/kakaogame/util/json/parser/ParseException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const v2, 0x543c2ce2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/kakaogame/util/json/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const v1, 0x543750b2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/kakaogame/util/json/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const v3, 0x5437502a

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/kakaogame/util/json/parser/ParseException;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const v1, -0x45173c17

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/kakaogame/util/json/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const v3, 0x225b5a26

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/kakaogame/util/json/parser/ParseException;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x451e20f7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPosition()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/kakaogame/util/json/parser/ParseException;->position:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUnexpectedObject()Ljava/lang/Object;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setErrorType(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/kakaogame/util/json/parser/ParseException;->errorType:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setPosition(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/kakaogame/util/json/parser/ParseException;->position:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setUnexpectedObject(Ljava/lang/Object;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/kakaogame/util/json/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
