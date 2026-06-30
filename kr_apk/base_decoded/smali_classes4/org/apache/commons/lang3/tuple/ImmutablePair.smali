.class public final Lorg/apache/commons/lang3/tuple/ImmutablePair;
.super Lorg/apache/commons/lang3/tuple/Pair;
.source "ImmutablePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/tuple/Pair<",
        "T",
        "L;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 419
    invoke-static {v0, v0}, Lorg/apache/commons/lang3/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .line 879
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Pair;-><init>()V

    .line 889
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    .line 899
    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static nullPair()Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 569
    sget-object v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->NULL:Lorg/apache/commons/lang3/tuple/ImmutablePair;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/ImmutablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lorg/apache/commons/lang3/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 779
    new-instance v0, Lorg/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->left:Ljava/lang/Object;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 1209
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .array-data 1
    .end array-data
.end method
