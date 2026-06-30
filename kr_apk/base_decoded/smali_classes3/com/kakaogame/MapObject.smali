.class public abstract Lcom/kakaogame/MapObject;
.super Ljava/lang/Object;
.source "MapObject.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/kakaogame/util/json/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/MapObject$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B#\u0008\u0004\u0012\u0018\u0008\u0002\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u0086\u0002J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0014J\u001e\u0010\u0013\u001a\u00020\u00112\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000eH\u0004J\u0010\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0017\u001a\u00020\u0005H\u0016J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u0016R$\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR!\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/kakaogame/MapObject;",
        "Ljava/io/Serializable;",
        "Lcom/kakaogame/util/json/JSONAware;",
        "content",
        "",
        "",
        "",
        "<init>",
        "(Ljava/util/Map;)V",
        "getContent",
        "()Ljava/util/Map;",
        "get",
        "key",
        "object",
        "",
        "getObject",
        "put",
        "",
        "value",
        "putAll",
        "m",
        "containsKey",
        "",
        "toString",
        "toJSONString",
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
.field public static final Companion:Lcom/kakaogame/MapObject$Companion;

.field private static final serialVersionUID:J = 0x38e5a685d563e26cL


# instance fields
.field private final content:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/MapObject$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/MapObject$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/MapObject;->Companion:Lcom/kakaogame/MapObject$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/MapObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/MapObject;->content:Ljava/util/Map;

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 99
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    :cond_0
    invoke-direct {p0, p1}, Lcom/kakaogame/MapObject;-><init>(Ljava/util/Map;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/kakaogame/MapObject;->content:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/kakaogame/MapObject;->content:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method protected final getContent()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/kakaogame/MapObject;->content:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getObject()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/kakaogame/MapObject;->content:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method protected put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const v0, 0x543dc3ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/kakaogame/MapObject;->content:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method protected final putAll(Ljava/util/Map;)V
    .locals 1
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

    const v0, -0x22451ed4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/kakaogame/MapObject;->content:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/kakaogame/MapObject;->content:Ljava/util/Map;

    invoke-static {v0}, Lcom/kakaogame/util/json/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/kakaogame/MapObject;->content:Ljava/util/Map;

    invoke-static {v0}, Lcom/kakaogame/util/json/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
