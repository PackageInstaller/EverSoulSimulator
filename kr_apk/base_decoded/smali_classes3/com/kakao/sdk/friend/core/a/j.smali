.class public final Lcom/kakao/sdk/friend/core/a/j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/kakao/sdk/friend/core/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/a/j;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/a/j;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/a/j;->a:Lcom/kakao/sdk/friend/core/a/j;

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


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-static {}, Lcom/kakao/sdk/friend/core/k/a;->a()V

    .line 29
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .array-data 1
    .end array-data
.end method
