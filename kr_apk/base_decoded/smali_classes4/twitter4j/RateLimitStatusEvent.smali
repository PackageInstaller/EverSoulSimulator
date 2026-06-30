.class public final Ltwitter4j/RateLimitStatusEvent;
.super Ljava/util/EventObject;
.source "RateLimitStatusEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x34086d57354c712eL


# instance fields
.field private final isAccountRateLimitStatus:Z

.field private final rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ltwitter4j/RateLimitStatus;Z)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 349
    iput-object p2, p0, Ltwitter4j/RateLimitStatusEvent;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 359
    iput-boolean p3, p0, Ltwitter4j/RateLimitStatusEvent;->isAccountRateLimitStatus:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .line 399
    iget-object v0, p0, Ltwitter4j/RateLimitStatusEvent;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isAccountRateLimitStatus()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Ltwitter4j/RateLimitStatusEvent;->isAccountRateLimitStatus:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isIPRateLimitStatus()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Ltwitter4j/RateLimitStatusEvent;->isAccountRateLimitStatus:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    nop

    .array-data 1
    .end array-data
.end method
