.class abstract Ltwitter4j/TwitterResponseImpl;
.super Ljava/lang/Object;
.source "TwitterResponseImpl.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6700d950500789e0L


# instance fields
.field private final transient accessLevel:I

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    const/4 v0, 0x0

    .line 359
    iput v0, p0, Ltwitter4j/TwitterResponseImpl;->accessLevel:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ltwitter4j/HttpResponse;)V
    .locals 1

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 399
    invoke-static {p1}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 409
    invoke-static {p1}, Ltwitter4j/ParseUtil;->toAccessLevel(Ltwitter4j/HttpResponse;)I

    move-result p1

    iput p1, p0, Ltwitter4j/TwitterResponseImpl;->accessLevel:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAccessLevel()I
    .locals 1

    .line 509
    iget v0, p0, Ltwitter4j/TwitterResponseImpl;->accessLevel:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .line 459
    iget-object v0, p0, Ltwitter4j/TwitterResponseImpl;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
