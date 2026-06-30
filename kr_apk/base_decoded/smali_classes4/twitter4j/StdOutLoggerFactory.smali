.class final Ltwitter4j/StdOutLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "StdOutLoggerFactory.java"


# static fields
.field private static final SINGLETON:Ltwitter4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    new-instance v0, Ltwitter4j/StdOutLogger;

    invoke-direct {v0}, Ltwitter4j/StdOutLogger;-><init>()V

    sput-object v0, Ltwitter4j/StdOutLoggerFactory;->SINGLETON:Ltwitter4j/Logger;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ltwitter4j/LoggerFactory;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ltwitter4j/Logger;"
        }
    .end annotation

    .line 289
    sget-object p1, Ltwitter4j/StdOutLoggerFactory;->SINGLETON:Ltwitter4j/Logger;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
