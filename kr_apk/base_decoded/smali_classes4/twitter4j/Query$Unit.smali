.class public final enum Ltwitter4j/Query$Unit;
.super Ljava/lang/Enum;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltwitter4j/Query$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltwitter4j/Query$Unit;

.field public static final enum km:Ltwitter4j/Query$Unit;

.field public static final enum mi:Ltwitter4j/Query$Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3399
    new-instance v0, Ltwitter4j/Query$Unit;

    const v1, 0x33690e03

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltwitter4j/Query$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/Query$Unit;->mi:Ltwitter4j/Query$Unit;

    new-instance v1, Ltwitter4j/Query$Unit;

    const v3, 0x7d7baa4d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltwitter4j/Query$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltwitter4j/Query$Unit;->km:Ltwitter4j/Query$Unit;

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/Query$Unit;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3389
    sput-object v3, Ltwitter4j/Query$Unit;->$VALUES:[Ltwitter4j/Query$Unit;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3389
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Ltwitter4j/Query$Unit;
    .locals 1

    .line 3389
    const-class v0, Ltwitter4j/Query$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltwitter4j/Query$Unit;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Ltwitter4j/Query$Unit;
    .locals 1

    .line 3389
    sget-object v0, Ltwitter4j/Query$Unit;->$VALUES:[Ltwitter4j/Query$Unit;

    invoke-virtual {v0}, [Ltwitter4j/Query$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/Query$Unit;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
