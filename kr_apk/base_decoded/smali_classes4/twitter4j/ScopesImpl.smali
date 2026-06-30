.class public Ltwitter4j/ScopesImpl;
.super Ljava/lang/Object;
.source "ScopesImpl.java"

# interfaces
.implements Ltwitter4j/Scopes;


# static fields
.field private static final serialVersionUID:J = -0x577498a7eca74fa3L


# instance fields
.field private final placeIds:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 319
    iput-object v0, p0, Ltwitter4j/ScopesImpl;->placeIds:[Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Ltwitter4j/ScopesImpl;->placeIds:[Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getPlaceIds()[Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Ltwitter4j/ScopesImpl;->placeIds:[Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
