.class public final Lcom/kakao/sdk/friend/core/a/l;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final a:Lcom/kakao/sdk/friend/core/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/kakao/sdk/friend/core/a/l;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/a/l;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/a/l;->a:Lcom/kakao/sdk/friend/core/a/l;

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
    new-instance v0, Lcom/kakao/sdk/friend/core/PickerClient;

    invoke-direct {v0}, Lcom/kakao/sdk/friend/core/PickerClient;-><init>()V

    return-object v0

    .array-data 1
    .end array-data
.end method
