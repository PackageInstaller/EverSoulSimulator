.class public final enum Ltwitter4j/Query$ResultType;
.super Ljava/lang/Enum;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltwitter4j/Query$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltwitter4j/Query$ResultType;

.field public static final enum mixed:Ltwitter4j/Query$ResultType;

.field public static final enum popular:Ltwitter4j/Query$ResultType;

.field public static final enum recent:Ltwitter4j/Query$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4459
    new-instance v0, Ltwitter4j/Query$ResultType;

    const v1, 0x5d1b8347

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltwitter4j/Query$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/Query$ResultType;->popular:Ltwitter4j/Query$ResultType;

    new-instance v1, Ltwitter4j/Query$ResultType;

    const v3, 0x7d7baae5

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltwitter4j/Query$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltwitter4j/Query$ResultType;->mixed:Ltwitter4j/Query$ResultType;

    new-instance v3, Ltwitter4j/Query$ResultType;

    const v5, 0x225ea346

    invoke-static {v5}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltwitter4j/Query$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltwitter4j/Query$ResultType;->recent:Ltwitter4j/Query$ResultType;

    const/4 v5, 0x3

    new-array v5, v5, [Ltwitter4j/Query$ResultType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4449
    sput-object v5, Ltwitter4j/Query$ResultType;->$VALUES:[Ltwitter4j/Query$ResultType;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4449
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Ltwitter4j/Query$ResultType;
    .locals 1

    .line 4449
    const-class v0, Ltwitter4j/Query$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltwitter4j/Query$ResultType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Ltwitter4j/Query$ResultType;
    .locals 1

    .line 4449
    sget-object v0, Ltwitter4j/Query$ResultType;->$VALUES:[Ltwitter4j/Query$ResultType;

    invoke-virtual {v0}, [Ltwitter4j/Query$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/Query$ResultType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
