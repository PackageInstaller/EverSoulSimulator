.class public abstract Lcom/kakao/sdk/friend/core/k/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/kakao/sdk/friend/core/k/l;

.field public static final b:Lcom/kakao/sdk/friend/core/k/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/k/l;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/l;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/k/m;->a:Lcom/kakao/sdk/friend/core/k/l;

    new-instance v0, Lcom/kakao/sdk/friend/core/k/n;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/k/n;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/k/m;->b:Lcom/kakao/sdk/friend/core/k/n;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
