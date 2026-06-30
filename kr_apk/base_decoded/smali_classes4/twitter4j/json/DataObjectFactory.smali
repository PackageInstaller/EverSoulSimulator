.class public final Ltwitter4j/json/DataObjectFactory;
.super Ljava/lang/Object;
.source "DataObjectFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    new-instance v0, Ljava/lang/AssertionError;

    const v1, -0x4513fa27

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createAccountTotals(Ljava/lang/String;)Ltwitter4j/AccountTotals;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 789
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createAccountTotals(Ljava/lang/String;)Ltwitter4j/AccountTotals;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createCategory(Ljava/lang/String;)Ltwitter4j/Category;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1749
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createCategory(Ljava/lang/String;)Ltwitter4j/Category;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1509
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createIDs(Ljava/lang/String;)Ltwitter4j/IDs;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createLocation(Ljava/lang/String;)Ltwitter4j/Location;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1879
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createLocation(Ljava/lang/String;)Ltwitter4j/Location;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createOEmbed(Ljava/lang/String;)Ltwitter4j/OEmbed;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 2119
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createOEmbed(Ljava/lang/String;)Ltwitter4j/OEmbed;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 2359
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createPlace(Ljava/lang/String;)Ltwitter4j/Place;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1029
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createPlace(Ljava/lang/String;)Ltwitter4j/Place;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createRateLimitStatus(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1629
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createRateLimitStatus(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createRelationship(Ljava/lang/String;)Ltwitter4j/Relationship;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 909
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createRelationship(Ljava/lang/String;)Ltwitter4j/Relationship;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1149
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 549
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createStatus(Ljava/lang/String;)Ltwitter4j/Status;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createTrend(Ljava/lang/String;)Ltwitter4j/Trend;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1269
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createTrend(Ljava/lang/String;)Ltwitter4j/Trend;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createTrends(Ljava/lang/String;)Ltwitter4j/Trends;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1389
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createTrends(Ljava/lang/String;)Ltwitter4j/Trends;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 669
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createUser(Ljava/lang/String;)Ltwitter4j/User;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createUserList(Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1999
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->createUserList(Ljava/lang/String;)Ltwitter4j/UserList;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getRawJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 429
    invoke-static {p0}, Ltwitter4j/TwitterObjectFactory;->getRawJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
