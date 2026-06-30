.class public final Lcom/kakaogame/util/json/JSONArray;
.super Ljava/util/ArrayList;
.source "JSONArray.kt"

# interfaces
.implements Lcom/kakaogame/util/json/JSONAware;
.implements Lcom/kakaogame/util/json/JSONStreamAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/util/json/JSONArray$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/kakaogame/util/json/JSONAware;",
        "Lcom/kakaogame/util/json/JSONStreamAware;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u000b2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\u00020\u0004:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/kakaogame/util/json/JSONArray;",
        "Ljava/util/ArrayList;",
        "",
        "Lcom/kakaogame/util/json/JSONAware;",
        "Lcom/kakaogame/util/json/JSONStreamAware;",
        "<init>",
        "()V",
        "writeJSONString",
        "",
        "toJSONString",
        "toString",
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
.field public static final Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

.field private static final serialVersionUID:J = 0x36ed996451b68eedL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/util/json/JSONArray$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/util/json/JSONArray$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final toJSONString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/util/json/JSONArray$Companion;->toJSONString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge getSize()I
    .locals 1

    .line 199
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/json/JSONArray;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge removeAt(I)Ljava/lang/Object;
    .locals 0

    .line 199
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final bridge size()I
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/kakaogame/util/json/JSONArray;->getSize()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 2

    .line 269
    sget-object v0, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONArray$Companion;->toJSONString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/kakaogame/util/json/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public writeJSONString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/kakaogame/util/json/JSONArray;->Companion:Lcom/kakaogame/util/json/JSONArray$Companion;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONArray$Companion;->writeJSONString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
