.class public final enum Lcom/kakao/sdk/friend/core/j/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/kakao/sdk/friend/core/j/q;

.field public static final enum b:Lcom/kakao/sdk/friend/core/j/q;

.field public static final synthetic c:[Lcom/kakao/sdk/friend/core/j/q;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/kakao/sdk/friend/core/j/q;

    const-string v1, "SEARCHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/j/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/j/q;->a:Lcom/kakao/sdk/friend/core/j/q;

    new-instance v1, Lcom/kakao/sdk/friend/core/j/q;

    const-string v3, "DONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kakao/sdk/friend/core/j/q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/friend/core/j/q;->b:Lcom/kakao/sdk/friend/core/j/q;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/kakao/sdk/friend/core/j/q;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 29
    sput-object v3, Lcom/kakao/sdk/friend/core/j/q;->c:[Lcom/kakao/sdk/friend/core/j/q;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/j/q;
    .locals 1

    .line 19
    const-class v0, Lcom/kakao/sdk/friend/core/j/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/j/q;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/friend/core/j/q;
    .locals 1

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/j/q;->c:[Lcom/kakao/sdk/friend/core/j/q;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/friend/core/j/q;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
