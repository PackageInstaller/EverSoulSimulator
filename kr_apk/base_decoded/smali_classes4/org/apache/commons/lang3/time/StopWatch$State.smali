.class abstract enum Lorg/apache/commons/lang3/time/StopWatch$State;
.super Ljava/lang/Enum;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/time/StopWatch$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/time/StopWatch$State;

.field public static final enum RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

.field public static final enum STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

.field public static final enum SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

.field public static final enum UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 829
    new-instance v0, Lorg/apache/commons/lang3/time/StopWatch$State$1;

    const v1, 0x5431aae2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/time/StopWatch$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 969
    new-instance v1, Lorg/apache/commons/lang3/time/StopWatch$State$2;

    const v3, -0x2245ed6c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/lang3/time/StopWatch$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 1109
    new-instance v3, Lorg/apache/commons/lang3/time/StopWatch$State$3;

    const v5, 0x5434c022

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/lang3/time/StopWatch$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 1249
    new-instance v5, Lorg/apache/commons/lang3/time/StopWatch$State$4;

    const v7, 0x5d18819f

    invoke-static {v7}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/lang3/time/StopWatch$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/commons/lang3/time/StopWatch$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 809
    sput-object v7, Lorg/apache/commons/lang3/time/StopWatch$State;->$VALUES:[Lorg/apache/commons/lang3/time/StopWatch$State;

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

    .line 809
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/lang3/time/StopWatch$1;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/time/StopWatch$State;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/time/StopWatch$State;
    .locals 1

    .line 809
    const-class v0, Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/time/StopWatch$State;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lorg/apache/commons/lang3/time/StopWatch$State;
    .locals 1

    .line 809
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->$VALUES:[Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/time/StopWatch$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/time/StopWatch$State;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method abstract isStarted()Z
.end method

.method abstract isStopped()Z
.end method

.method abstract isSuspended()Z
.end method
