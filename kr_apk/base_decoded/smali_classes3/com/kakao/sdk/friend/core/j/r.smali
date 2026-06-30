.class public final enum Lcom/kakao/sdk/friend/core/j/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/kakao/sdk/friend/core/j/r;

.field public static final enum b:Lcom/kakao/sdk/friend/core/j/r;

.field public static final enum c:Lcom/kakao/sdk/friend/core/j/r;

.field public static final enum d:Lcom/kakao/sdk/friend/core/j/r;

.field public static final synthetic e:[Lcom/kakao/sdk/friend/core/j/r;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/kakao/sdk/friend/core/j/r;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/friend/core/j/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/friend/core/j/r;->a:Lcom/kakao/sdk/friend/core/j/r;

    new-instance v1, Lcom/kakao/sdk/friend/core/j/r;

    const-string v3, "DONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/kakao/sdk/friend/core/j/r;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kakao/sdk/friend/core/j/r;->b:Lcom/kakao/sdk/friend/core/j/r;

    new-instance v3, Lcom/kakao/sdk/friend/core/j/r;

    const-string v5, "CANCELED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/kakao/sdk/friend/core/j/r;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/kakao/sdk/friend/core/j/r;->c:Lcom/kakao/sdk/friend/core/j/r;

    new-instance v5, Lcom/kakao/sdk/friend/core/j/r;

    const-string v7, "CLEARED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/kakao/sdk/friend/core/j/r;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/kakao/sdk/friend/core/j/r;->d:Lcom/kakao/sdk/friend/core/j/r;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/kakao/sdk/friend/core/j/r;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 29
    sput-object v7, Lcom/kakao/sdk/friend/core/j/r;->e:[Lcom/kakao/sdk/friend/core/j/r;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/friend/core/j/r;
    .locals 1

    .line 19
    const-class v0, Lcom/kakao/sdk/friend/core/j/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/friend/core/j/r;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/friend/core/j/r;
    .locals 1

    .line 19
    sget-object v0, Lcom/kakao/sdk/friend/core/j/r;->e:[Lcom/kakao/sdk/friend/core/j/r;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/friend/core/j/r;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
