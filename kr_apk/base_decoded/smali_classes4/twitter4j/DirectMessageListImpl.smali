.class Ltwitter4j/DirectMessageListImpl;
.super Ltwitter4j/ResponseListImpl;
.source "DirectMessageListImpl.java"

# interfaces
.implements Ltwitter4j/DirectMessageList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltwitter4j/ResponseListImpl<",
        "Ltwitter4j/DirectMessage;",
        ">;",
        "Ltwitter4j/DirectMessageList;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x711ad5167f9afd8cL


# instance fields
.field private final nextCursor:Ljava/lang/String;


# direct methods
.method constructor <init>(ILtwitter4j/HttpResponse;)V
    .locals 0

    .line 379
    invoke-direct {p0, p1, p2}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    const/4 p1, 0x0

    .line 389
    iput-object p1, p0, Ltwitter4j/DirectMessageListImpl;->nextCursor:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>(ILtwitter4j/JSONObject;Ltwitter4j/HttpResponse;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1, p3}, Ltwitter4j/ResponseListImpl;-><init>(ILtwitter4j/HttpResponse;)V

    const-string p1, "next_cursor"

    .line 349
    invoke-static {p1, p2}, Ltwitter4j/ParseUtil;->getRawString(Ljava/lang/String;Ltwitter4j/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltwitter4j/DirectMessageListImpl;->nextCursor:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>(Ltwitter4j/RateLimitStatus;I)V
    .locals 0

    .line 289
    invoke-direct {p0, p1, p2}, Ltwitter4j/ResponseListImpl;-><init>(Ltwitter4j/RateLimitStatus;I)V

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Ltwitter4j/DirectMessageListImpl;->nextCursor:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getNextCursor()Ljava/lang/String;
    .locals 1

    .line 439
    iget-object v0, p0, Ltwitter4j/DirectMessageListImpl;->nextCursor:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
