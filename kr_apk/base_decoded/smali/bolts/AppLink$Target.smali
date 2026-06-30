.class public Lbolts/AppLink$Target;
.super Ljava/lang/Object;
.source "AppLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/AppLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Target"
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lbolts/AppLink$Target;->packageName:Ljava/lang/String;

    .line 429
    iput-object p2, p0, Lbolts/AppLink$Target;->className:Ljava/lang/String;

    .line 439
    iput-object p3, p0, Lbolts/AppLink$Target;->url:Landroid/net/Uri;

    .line 449
    iput-object p4, p0, Lbolts/AppLink$Target;->appName:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lbolts/AppLink$Target;->appName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lbolts/AppLink$Target;->className:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 739
    iget-object v0, p0, Lbolts/AppLink$Target;->packageName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .line 529
    iget-object v0, p0, Lbolts/AppLink$Target;->url:Landroid/net/Uri;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
