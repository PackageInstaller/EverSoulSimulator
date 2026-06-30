.class public Lcom/kakaogame/server/KeyBaseResult;
.super Ljava/util/LinkedHashMap;
.source "KeyBaseResult.kt"

# interfaces
.implements Lcom/kakaogame/util/json/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/server/KeyBaseResult$Companion;,
        Lcom/kakaogame/server/KeyBaseResult$ResultCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/kakaogame/util/json/JSONAware;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0016\u0018\u0000 $*\u0004\u0008\u0000\u0010\u00012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00022\u00020\u0005:\u0002#$B\t\u0008\u0012\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B!\u0008\u0014\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0006\u0010\nJK\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00032\u001a\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0010\u0018\u00010\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00018\u0000H\u0002\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010!\u001a\u00020\u0003H\u0016J\n\u0010\"\u001a\u0004\u0018\u00010\u0003H\u0016R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u000e\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001aR\u0013\u0010\u0011\u001a\u0004\u0018\u00018\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR%\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0010\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Lcom/kakaogame/server/KeyBaseResult;",
        "T",
        "Ljava/util/LinkedHashMap;",
        "",
        "",
        "Lcom/kakaogame/util/json/JSONAware;",
        "<init>",
        "()V",
        "m",
        "",
        "(Ljava/util/Map;)V",
        "setResult",
        "code",
        "",
        "description",
        "headers",
        "",
        "content",
        "(ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;",
        "isSuccess",
        "",
        "()Z",
        "isNotSuccess",
        "getCode",
        "()I",
        "getDescription",
        "()Ljava/lang/String;",
        "defaultDecription",
        "getDefaultDecription",
        "getContent",
        "()Ljava/lang/Object;",
        "getHeaders",
        "()Ljava/util/Map;",
        "toString",
        "toJSONString",
        "ResultCode",
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
.field public static final Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

.field public static final KEY_CODE:Ljava/lang/String; = "code"

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_DESC:Ljava/lang/String; = "desc"

.field public static final KEY_HEADER:Ljava/lang/String; = "header"

.field public static final KEY_SERVER_ERROR_CODE:Ljava/lang/String; = "serverErrorCode"

.field private static final serialVersionUID:J = -0x73e10101e572b8eeL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/server/KeyBaseResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/server/KeyBaseResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
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

    .line 219
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/kakaogame/server/KeyBaseResult;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setResult(Lcom/kakaogame/server/KeyBaseResult;ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/server/KeyBaseResult;->setResult(ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final getDefaultDecription()Ljava/lang/String;
    .locals 5

    .line 409
    :try_start_0
    const-class v0, Lcom/kakaogame/server/KeyBaseResult$ResultCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 419
    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 439
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v3

    instance-of v4, v2, Ljava/lang/Integer;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 459
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    const-string v0, ""

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getResult(I)Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getResult(ILjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getResult(ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;TT;)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getResult(Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getSuccessResult()Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult()Lcom/kakaogame/server/KeyBaseResult;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getSuccessResult(Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult(Ljava/util/Map;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getSuccessResult(Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;TT;)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getSuccessResult(Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final setResult(ILjava/lang/String;Ljava/util/Map;Ljava/lang/Object;)Lcom/kakaogame/server/KeyBaseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;TT;)",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 109
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    const v2, 0x6d0b76e8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x7d71bb15

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "desc"

    .line 159
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "header"

    .line 169
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "content"

    .line 179
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 79
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kakaogame/server/KeyBaseResult;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 79
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kakaogame/server/KeyBaseResult;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCode()I
    .locals 2

    const v0, 0x6d0b76e8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p0, v0}, Lcom/kakaogame/server/KeyBaseResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244dc24

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const v0, 0x2250096e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {p0, v0}, Lcom/kakaogame/server/KeyBaseResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 2

    const v0, -0x4518d287

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Lcom/kakaogame/server/KeyBaseResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/kakaogame/server/KeyBaseResult;->getDefaultDecription()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 79
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const v0, -0x224d8d8c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-virtual {p0, v0}, Lcom/kakaogame/server/KeyBaseResult;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 669
    :cond_0
    :try_start_0
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 79
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/server/KeyBaseResult;->getOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public bridge getOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge getSize()I
    .locals 1

    .line 79
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isNotSuccess()Z
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final isSuccess()Z
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 79
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kakaogame/server/KeyBaseResult;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 79
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/server/KeyBaseResult;->remove(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge remove(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge size()I
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getSize()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .line 819
    invoke-static {p0}, Lcom/kakaogame/util/json/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 739
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x5d1f6c7f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x225a4c26

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, -0x22437c0c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/kakaogame/server/KeyBaseResult;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
