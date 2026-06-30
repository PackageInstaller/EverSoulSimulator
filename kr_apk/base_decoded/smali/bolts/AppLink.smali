.class public Lbolts/AppLink;
.super Ljava/lang/Object;
.source "AppLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AppLink$Target;
    }
.end annotation


# instance fields
.field private sourceUrl:Landroid/net/Uri;

.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbolts/AppLink$Target;",
            ">;"
        }
    .end annotation
.end field

.field private webUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lbolts/AppLink$Target;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput-object p1, p0, Lbolts/AppLink;->sourceUrl:Landroid/net/Uri;

    if-nez p2, :cond_0

    .line 939
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 959
    :cond_0
    iput-object p2, p0, Lbolts/AppLink;->targets:Ljava/util/List;

    .line 969
    iput-object p3, p0, Lbolts/AppLink;->webUrl:Landroid/net/Uri;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getSourceUrl()Landroid/net/Uri;
    .locals 1

    .line 1039
    iget-object v0, p0, Lbolts/AppLink;->sourceUrl:Landroid/net/Uri;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbolts/AppLink$Target;",
            ">;"
        }
    .end annotation

    .line 1109
    iget-object v0, p0, Lbolts/AppLink;->targets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getWebUrl()Landroid/net/Uri;
    .locals 1

    .line 1179
    iget-object v0, p0, Lbolts/AppLink;->webUrl:Landroid/net/Uri;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
