.class public final Lcom/kakaogame/util/json/parser/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/util/json/parser/JSONParser$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 #2\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u001e\u0010\u0015\u001a\u00020\u00012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u001e\u0010\u0015\u001a\u00020\u00012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u0008\u0010\u001a\u001a\u00020\u000fH\u0002J \u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u001a\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001e2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J$\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0007J$\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0007R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lcom/kakaogame/util/json/parser/JSONParser;",
        "",
        "<init>",
        "()V",
        "handlerStatusStack",
        "Ljava/util/LinkedList;",
        "lexer",
        "Lcom/kakaogame/util/json/parser/Yylex;",
        "token",
        "Lcom/kakaogame/util/json/parser/Yytoken;",
        "status",
        "",
        "peekStatus",
        "statusStack",
        "reset",
        "",
        "in",
        "Ljava/io/Reader;",
        "position",
        "getPosition",
        "()I",
        "parse",
        "s",
        "",
        "containerFactory",
        "Lcom/kakaogame/util/json/parser/ContainerFactory;",
        "nextToken",
        "createObjectContainer",
        "",
        "createArrayContainer",
        "",
        "contentHandler",
        "Lcom/kakaogame/util/json/parser/ContentHandler;",
        "isResume",
        "",
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
.field public static final Companion:Lcom/kakaogame/util/json/parser/JSONParser$Companion;

.field public static final S_END:I = 0x6

.field public static final S_INIT:I = 0x0

.field public static final S_IN_ARRAY:I = 0x3

.field public static final S_IN_ERROR:I = -0x1

.field public static final S_IN_FINISHED_VALUE:I = 0x1

.field public static final S_IN_OBJECT:I = 0x2

.field public static final S_IN_PAIR_VALUE:I = 0x5

.field public static final S_PASSED_PAIR_KEY:I = 0x4


# instance fields
.field private handlerStatusStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final lexer:Lcom/kakaogame/util/json/parser/Yylex;

.field private status:I

.field private token:Lcom/kakaogame/util/json/parser/Yytoken;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/util/json/parser/JSONParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/util/json/parser/JSONParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/util/json/parser/JSONParser;->Companion:Lcom/kakaogame/util/json/parser/JSONParser$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Lcom/kakaogame/util/json/parser/Yylex;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/util/json/parser/Yylex;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->lexer:Lcom/kakaogame/util/json/parser/Yylex;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final createArrayContainer(Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/util/json/parser/ContainerFactory;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2419
    new-instance p1, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/kakaogame/util/json/parser/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2429
    new-instance p1, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    check-cast p1, Ljava/util/List;

    :cond_1
    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final createObjectContainer(Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/util/json/parser/ContainerFactory;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2369
    new-instance p1, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/kakaogame/util/json/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2379
    new-instance p1, Lcom/kakaogame/util/json/JSONObject;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    check-cast p1, Ljava/util/Map;

    :cond_1
    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final nextToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2319
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->lexer:Lcom/kakaogame/util/json/parser/Yylex;

    invoke-virtual {v0}, Lcom/kakaogame/util/json/parser/Yylex;->yylex()Lcom/kakaogame/util/json/parser/Yytoken;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    if-nez v0, :cond_0

    .line 2329
    new-instance v0, Lcom/kakaogame/util/json/parser/Yytoken;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContainerFactory;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1029
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/util/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContainerFactory;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 729
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kakaogame/util/json/parser/JSONParser;->parse(Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static synthetic parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContentHandler;ZILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2749
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakaogame/util/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContentHandler;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContentHandler;ZILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2459
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/kakaogame/util/json/parser/JSONParser;->parse(Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContentHandler;Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final peekStatus(Ljava/util/LinkedList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 419
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    const v0, -0x2244dc24

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getPosition()I
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->lexer:Lcom/kakaogame/util/json/parser/Yylex;

    invoke-virtual {v0}, Lcom/kakaogame/util/json/parser/Yylex;->getPosition()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/kakaogame/util/json/parser/JSONParser;->parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContainerFactory;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final parse(Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    .line 1059
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 1069
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 1079
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1109
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->nextToken()V

    .line 1119
    iget v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_18

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v1, :cond_11

    if-eq v1, v3, :cond_f

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v1, v4, :cond_a

    if-eq v1, v5, :cond_4

    if-eq v1, v7, :cond_0

    goto/16 :goto_3

    .line 1539
    :cond_0
    iget-object v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lcom/kakaogame/util/json/parser/Yytoken;->type:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const v6, -0x2244b41c

    invoke-static {v6}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_3

    const v7, 0x5437588a

    invoke-static {v7}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v7

    if-eq v1, v3, :cond_2

    if-eq v1, v5, :cond_1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_15

    .line 1839
    :try_start_1
    iput v2, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_3

    .line 1649
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1659
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 1669
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 1679
    invoke-direct {p0, p2}, Lcom/kakaogame/util/json/parser/JSONParser;->createArrayContainer(Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v6

    .line 1689
    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    iput v5, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 1709
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1719
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1749
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1759
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 1769
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 1779
    invoke-direct {p0, p2}, Lcom/kakaogame/util/json/parser/JSONParser;->createObjectContainer(Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v6

    .line 1789
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    iput v4, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 1809
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1819
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1579
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1589
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 1599
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any?>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 1609
    iget-object v5, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v5, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    invoke-direct {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v1

    iput v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_3

    .line 1859
    :cond_4
    iget-object v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lcom/kakaogame/util/json/parser/Yytoken;->type:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const v8, 0x336cf1f3

    invoke-static {v8}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_15

    .line 2159
    :try_start_2
    iput v2, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_3

    .line 1929
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 1939
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1949
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1959
    invoke-direct {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v1

    goto :goto_1

    :cond_6
    move v1, v3

    .line 1929
    :goto_1
    iput v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_3

    .line 2089
    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2099
    invoke-direct {p0, p2}, Lcom/kakaogame/util/json/parser/JSONParser;->createArrayContainer(Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v4

    .line 2109
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2119
    iput v5, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 2129
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2139
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2009
    :cond_8
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2019
    invoke-direct {p0, p2}, Lcom/kakaogame/util/json/parser/JSONParser;->createObjectContainer(Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v5

    .line 2029
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2039
    iput v4, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 2049
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2059
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1899
    :cond_9
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1909
    iget-object v4, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1339
    :cond_a
    iget-object v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lcom/kakaogame/util/json/parser/Yytoken;->type:I

    if-eqz v1, :cond_d

    if-eq v1, v4, :cond_b

    if-eq v1, v6, :cond_15

    .line 1519
    iput v2, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_3

    .line 1449
    :cond_b
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_c

    .line 1459
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1469
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1479
    invoke-direct {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v1

    goto :goto_2

    :cond_c
    move v1, v3

    .line 1449
    :goto_2
    iput v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_3

    .line 1369
    :cond_d
    iget-object v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 1379
    iget-object v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1389
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1399
    iput v7, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 1409
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    .line 1429
    :cond_e
    iput v2, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto :goto_3

    .line 1309
    :cond_f
    iget-object p1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Lcom/kakaogame/util/json/parser/Yytoken;->type:I

    if-ne p1, v2, :cond_10

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "removeFirst(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_10
    new-instance p1, Lcom/kakaogame/util/json/parser/ParseException;

    .line 1319
    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    .line 1309
    invoke-direct {p1, p2, v3, v0}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 1129
    :cond_11
    iget-object v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lcom/kakaogame/util/json/parser/Yytoken;->type:I

    if-eqz v1, :cond_14

    if-eq v1, v3, :cond_13

    if-eq v1, v5, :cond_12

    .line 1289
    iput v2, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto :goto_3

    .line 1249
    :cond_12
    iput v5, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 1259
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1269
    invoke-direct {p0, p2}, Lcom/kakaogame/util/json/parser/JSONParser;->createArrayContainer(Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    .line 1199
    :cond_13
    iput v4, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 1209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1219
    invoke-direct {p0, p2}, Lcom/kakaogame/util/json/parser/JSONParser;->createObjectContainer(Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_3

    .line 1149
    :cond_14
    iput v3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 1159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1169
    iget-object v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2199
    :cond_15
    :goto_3
    iget v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    if-eq v1, v2, :cond_17

    .line 2229
    iget-object v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Lcom/kakaogame/util/json/parser/Yytoken;->type:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v1, v2, :cond_16

    goto/16 :goto_0

    .line 2269
    :cond_16
    new-instance p1, Lcom/kakaogame/util/json/parser/ParseException;

    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 2209
    :cond_17
    :try_start_3
    new-instance p1, Lcom/kakaogame/util/json/parser/ParseException;

    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 2179
    :cond_18
    new-instance p1, Lcom/kakaogame/util/json/parser/ParseException;

    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 2249
    throw p1

    .array-data 1
    .end array-data
.end method

.method public final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/kakaogame/util/json/parser/JSONParser;->parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContainerFactory;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final parse(Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 779
    :try_start_0
    check-cast v0, Ljava/io/Reader;

    invoke-virtual {p0, v0, p2}, Lcom/kakaogame/util/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 829
    new-instance p2, Lcom/kakaogame/util/json/parser/ParseException;

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1, p1}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p2

    nop

    .array-data 1
    .end array-data
.end method

.method public final parse(Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContentHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    const v0, 0x54375522

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/kakaogame/util/json/parser/JSONParser;->parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContentHandler;ZILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final parse(Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContentHandler;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    const v0, 0x54375522

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 2799
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 2809
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    goto :goto_0

    .line 2829
    :cond_0
    iget-object p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    if-nez p3, :cond_1

    .line 2849
    invoke-virtual {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 2859
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 2889
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    const/4 p3, -0x1

    .line 2919
    :try_start_0
    iget v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    return-void

    .line 3829
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3839
    invoke-direct {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3849
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->endObjectEntry()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3519
    :pswitch_2
    invoke-direct {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->nextToken()V

    .line 3529
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->type:I

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_13

    .line 3759
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 3629
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3639
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3649
    iput v5, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3659
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3669
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3699
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3709
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3719
    iput v4, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3729
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3739
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3569
    :cond_4
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3579
    invoke-direct {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3589
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/kakaogame/util/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 3599
    :cond_5
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->endObjectEntry()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3879
    :pswitch_3
    invoke-direct {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->nextToken()V

    .line 3889
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->type:I

    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_13

    .line 4119
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 3939
    :cond_6
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 3949
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3959
    invoke-direct {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    goto :goto_2

    :cond_7
    move v0, v6

    .line 3939
    :goto_2
    iput v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3999
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->endArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 4079
    :cond_8
    iput v5, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 4089
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4099
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 4029
    :cond_9
    iput v4, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 4039
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4049
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3919
    :cond_a
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/kakaogame/util/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3269
    :pswitch_4
    invoke-direct {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->nextToken()V

    .line 3279
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->type:I

    if-eqz v0, :cond_d

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_13

    .line 3479
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 3399
    :cond_b
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v6, :cond_c

    .line 3409
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3419
    invoke-direct {p0, p1}, Lcom/kakaogame/util/json/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    goto :goto_3

    :cond_c
    move v0, v6

    .line 3399
    :goto_3
    iput v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3459
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->endObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3309
    :cond_d
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 3319
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3329
    iput v2, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3349
    invoke-interface {p2, v0}, Lcom/kakaogame/util/json/parser/ContentHandler;->startObjectEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3369
    :cond_e
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 3159
    :pswitch_5
    invoke-direct {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->nextToken()V

    .line 3169
    iget-object p1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Lcom/kakaogame/util/json/parser/Yytoken;->type:I

    if-ne p1, p3, :cond_f

    .line 3179
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->endJSON()V

    .line 3189
    iput v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    return-void

    .line 3219
    :cond_f
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3229
    new-instance p1, Lcom/kakaogame/util/json/parser/ParseException;

    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {p1, p2, v6, v0}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 2939
    :pswitch_6
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->startJSON()V

    .line 2949
    invoke-direct {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->nextToken()V

    .line 2959
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->type:I

    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_11

    if-eq v0, v5, :cond_10

    .line 3119
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    goto :goto_4

    .line 3079
    :cond_10
    iput v5, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3089
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3099
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 3029
    :cond_11
    iput v4, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 3039
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3049
    invoke-interface {p2}, Lcom/kakaogame/util/json/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 2979
    :cond_12
    iput v6, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 2989
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2999
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/kakaogame/util/json/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 4159
    :pswitch_7
    new-instance p1, Lcom/kakaogame/util/json/parser/ParseException;

    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {p1, p2, v6, v0}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 4179
    :cond_13
    :goto_4
    iget v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    if-eq v0, p3, :cond_15

    .line 4209
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lcom/kakaogame/util/json/parser/Yytoken;->type:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/kakaogame/util/json/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, p3, :cond_14

    goto/16 :goto_1

    .line 4349
    :cond_14
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 4359
    new-instance p1, Lcom/kakaogame/util/json/parser/ParseException;

    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {p1, p2, v6, p3}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 4189
    :cond_15
    :try_start_1
    new-instance p1, Lcom/kakaogame/util/json/parser/ParseException;

    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {p1, p2, v6, v0}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/kakaogame/util/json/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 4319
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 4329
    throw p1

    :catch_1
    move-exception p1

    .line 4289
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 4299
    throw p1

    :catch_2
    move-exception p1

    .line 4259
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 4269
    throw p1

    :catch_3
    move-exception p1

    .line 4229
    iput p3, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 4239
    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public final parse(Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContentHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    const v0, 0x54375522

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/kakaogame/util/json/parser/JSONParser;->parse$default(Lcom/kakaogame/util/json/parser/JSONParser;Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContentHandler;ZILjava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final parse(Ljava/lang/String;Lcom/kakaogame/util/json/parser/ContentHandler;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    const v0, 0x54375522

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2489
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2509
    :try_start_0
    check-cast v0, Ljava/io/Reader;

    invoke-virtual {p0, v0, p2, p3}, Lcom/kakaogame/util/json/parser/JSONParser;->parse(Ljava/io/Reader;Lcom/kakaogame/util/json/parser/ContentHandler;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2559
    new-instance p2, Lcom/kakaogame/util/json/parser/ParseException;

    const/4 p3, -0x1

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0, p1}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p2

    .array-data 1
    .end array-data
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->token:Lcom/kakaogame/util/json/parser/Yytoken;

    const/4 v1, 0x0

    .line 509
    iput v1, p0, Lcom/kakaogame/util/json/parser/JSONParser;->status:I

    .line 519
    iput-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final reset(Ljava/io/Reader;)V
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/JSONParser;->lexer:Lcom/kakaogame/util/json/parser/Yylex;

    invoke-virtual {v0, p1}, Lcom/kakaogame/util/json/parser/Yylex;->yyreset(Ljava/io/Reader;)V

    .line 639
    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/JSONParser;->reset()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
