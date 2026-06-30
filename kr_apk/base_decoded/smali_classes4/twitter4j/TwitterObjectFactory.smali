.class public final Ltwitter4j/TwitterObjectFactory;
.super Ljava/lang/Object;
.source "TwitterObjectFactory.java"


# static fields
.field private static final rawJsonMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private static registeredAtleastOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Ltwitter4j/TwitterObjectFactory$1;

    invoke-direct {v0}, Ltwitter4j/TwitterObjectFactory$1;-><init>()V

    sput-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    .line 3339
    sput-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/AssertionError;

    const v1, -0x4513fa27

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method static clearThreadLocalMap()V
    .locals 1

    .line 3309
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static createAccountTotals(Ljava/lang/String;)Ltwitter4j/AccountTotals;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 879
    :try_start_0
    new-instance v0, Ltwitter4j/AccountTotalsJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/AccountTotalsJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 899
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createCategory(Ljava/lang/String;)Ltwitter4j/Category;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 2079
    :try_start_0
    new-instance v0, Ltwitter4j/CategoryJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/CategoryJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2099
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createDirectMessage(Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 2239
    :try_start_0
    new-instance v0, Ltwitter4j/DirectMessageJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2259
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createIDs(Ljava/lang/String;)Ltwitter4j/IDs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1789
    new-instance v0, Ltwitter4j/IDsJSONImpl;

    invoke-direct {v0, p0}, Ltwitter4j/IDsJSONImpl;-><init>(Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static createLocation(Ljava/lang/String;)Ltwitter4j/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 2399
    :try_start_0
    new-instance v0, Ltwitter4j/LocationJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/LocationJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2419
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createOEmbed(Ljava/lang/String;)Ltwitter4j/OEmbed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 2719
    :try_start_0
    new-instance v0, Ltwitter4j/OEmbedJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/OEmbedJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2739
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 2989
    :try_start_0
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2999
    invoke-static {v0}, Ltwitter4j/JSONObjectType;->determine(Ltwitter4j/JSONObject;)Ltwitter4j/JSONObjectType$Type;

    move-result-object p0

    .line 3009
    sget-object v1, Ltwitter4j/TwitterObjectFactory$2;->$SwitchMap$twitter4j$JSONObjectType$Type:[I

    invoke-virtual {p0}, Ltwitter4j/JSONObjectType$Type;->ordinal()I

    move-result p0

    aget p0, v1, p0
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const v2, 0x5d1b3b9f

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    return-object v0

    .line 3089
    :cond_0
    :try_start_1
    new-instance p0, Ltwitter4j/StatusDeletionNoticeImpl;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/StatusDeletionNoticeImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3069
    :cond_1
    new-instance p0, Ltwitter4j/DirectMessageJSONImpl;

    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3049
    :cond_2
    new-instance p0, Ltwitter4j/StatusJSONImpl;

    invoke-direct {p0, v0}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3029
    :cond_3
    new-instance p0, Ltwitter4j/DirectMessageJSONImpl;

    invoke-virtual {v0, v2}, Ltwitter4j/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/DirectMessageJSONImpl;-><init>(Ltwitter4j/JSONObject;)V

    invoke-static {p0, v0}, Ltwitter4j/TwitterObjectFactory;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ltwitter4j/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3209
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createPlace(Ljava/lang/String;)Ltwitter4j/Place;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1199
    :try_start_0
    new-instance v0, Ltwitter4j/PlaceJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/PlaceJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1219
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createRateLimitStatus(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
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

    .line 1919
    :try_start_0
    new-instance v0, Ltwitter4j/JSONObject;

    invoke-direct {v0, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ltwitter4j/RateLimitStatusJSONImpl;->createRateLimitStatuses(Ltwitter4j/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1939
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static createRelationship(Ljava/lang/String;)Ltwitter4j/Relationship;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1039
    :try_start_0
    new-instance v0, Ltwitter4j/RelationshipJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/RelationshipJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1059
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1359
    :try_start_0
    new-instance v0, Ltwitter4j/SavedSearchJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/SavedSearchJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1379
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 559
    :try_start_0
    new-instance v0, Ltwitter4j/StatusJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/StatusJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 579
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createTrend(Ljava/lang/String;)Ltwitter4j/Trend;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1519
    :try_start_0
    new-instance v0, Ltwitter4j/TrendJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TrendJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1539
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createTrends(Ljava/lang/String;)Ltwitter4j/Trends;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 1669
    new-instance v0, Ltwitter4j/TrendsJSONImpl;

    invoke-direct {v0, p0}, Ltwitter4j/TrendsJSONImpl;-><init>(Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static createUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 719
    :try_start_0
    new-instance v0, Ltwitter4j/UserJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/UserJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 739
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static createUserList(Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .line 2559
    :try_start_0
    new-instance v0, Ltwitter4j/UserListJSONImpl;

    new-instance v1, Ltwitter4j/JSONObject;

    invoke-direct {v1, p0}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/UserListJSONImpl;-><init>(Ltwitter4j/JSONObject;)V
    :try_end_0
    .catch Ltwitter4j/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2579
    new-instance v0, Ltwitter4j/TwitterException;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .array-data 1
    .end array-data
.end method

.method public static getRawJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 319
    sget-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    if-eqz v0, :cond_2

    .line 349
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 359
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 369
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 399
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const v0, 0x336832c3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    .array-data 1
    .end array-data
.end method

.method static registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 3419
    sput-boolean v0, Ltwitter4j/TwitterObjectFactory;->registeredAtleastOnce:Z

    .line 3429
    sget-object v0, Ltwitter4j/TwitterObjectFactory;->rawJsonMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
