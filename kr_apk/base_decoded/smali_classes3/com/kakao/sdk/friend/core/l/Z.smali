.class public final Lcom/kakao/sdk/friend/core/l/Z;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/kakao/sdk/friend/core/l/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/l/Z;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/l/Z;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/l/Z;->a:Lcom/kakao/sdk/friend/core/l/Z;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 29
    sget-object v0, Lcom/kakao/sdk/friend/core/k/m;->b:Lcom/kakao/sdk/friend/core/k/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/kakao/sdk/friend/core/k/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .array-data 1
    .end array-data
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/l/Z$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/l/Z$$ExternalSyntheticLambda0;-><init>()V

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-static {}, Lcom/kakao/sdk/friend/core/l/Z;->a()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
