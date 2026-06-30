.class public Lorg/apache/commons/lang3/tuple/MutableTriple;
.super Lorg/apache/commons/lang3/tuple/Triple;
.source "MutableTriple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/tuple/Triple<",
        "T",
        "L;",
        "TM;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public middle:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TM;TR;)V"
        }
    .end annotation

    .line 759
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    .line 769
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    .line 779
    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    .line 789
    iput-object p3, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/MutableTriple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TM;TR;)",
            "Lorg/apache/commons/lang3/tuple/MutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 579
    new-instance v0, Lorg/apache/commons/lang3/tuple/MutableTriple;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/tuple/MutableTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 879
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getMiddle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

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

    .line 1219
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setLeft(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 969
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setMiddle(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 1139
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public setRight(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1309
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
