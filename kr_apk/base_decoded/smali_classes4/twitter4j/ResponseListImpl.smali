.class Ltwitter4j/ResponseListImpl;
.super Ljava/util/ArrayList;
.source "ResponseListImpl.java"

# interfaces
.implements Ltwitter4j/ResponseList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;",
        "Ltwitter4j/ResponseList<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7e5ed61656096958L


# instance fields
.field private transient accessLevel:I

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method constructor <init>(ILtwitter4j/HttpResponse;)V
    .locals 0

    .line 369
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x0

    .line 279
    iput-object p1, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 379
    invoke-direct {p0, p2}, Ltwitter4j/ResponseListImpl;->init(Ltwitter4j/HttpResponse;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/HttpResponse;)V
    .locals 1

    .line 319
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 329
    invoke-direct {p0, p1}, Ltwitter4j/ResponseListImpl;->init(Ltwitter4j/HttpResponse;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/RateLimitStatus;I)V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    iput-object p1, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 439
    iput p2, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private init(Ltwitter4j/HttpResponse;)V
    .locals 1

    .line 479
    invoke-static {p1}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 489
    invoke-static {p1}, Ltwitter4j/ParseUtil;->toAccessLevel(Ltwitter4j/HttpResponse;)I

    move-result p1

    iput p1, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAccessLevel()I
    .locals 1

    .line 589
    iget v0, p0, Ltwitter4j/ResponseListImpl;->accessLevel:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .line 539
    iget-object v0, p0, Ltwitter4j/ResponseListImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
