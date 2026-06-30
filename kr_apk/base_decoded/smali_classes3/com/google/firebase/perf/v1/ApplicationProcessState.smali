.class public final enum Lcom/google/firebase/perf/v1/ApplicationProcessState;
.super Ljava/lang/Enum;
.source "ApplicationProcessState.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/ApplicationProcessState$ApplicationProcessStateVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/v1/ApplicationProcessState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/v1/ApplicationProcessState;

.field public static final enum APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/v1/ApplicationProcessState;

.field public static final APPLICATION_PROCESS_STATE_UNKNOWN_VALUE:I = 0x0

.field public static final enum BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

.field public static final BACKGROUND_VALUE:I = 0x2

.field public static final enum FOREGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

.field public static final enum FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

.field public static final FOREGROUND_BACKGROUND_VALUE:I = 0x3

.field public static final FOREGROUND_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/perf/v1/ApplicationProcessState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/firebase/perf/v1/ApplicationProcessState;

    const/4 v1, 0x0

    .line 14
    sget-object v2, Lcom/google/firebase/perf/v1/ApplicationProcessState;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/firebase/perf/v1/ApplicationProcessState;->BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    const-string v1, "APPLICATION_PROCESS_STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/ApplicationProcessState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 31
    new-instance v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    const-string v1, "FOREGROUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/ApplicationProcessState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 39
    new-instance v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/ApplicationProcessState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 48
    new-instance v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    const-string v1, "FOREGROUND_BACKGROUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/perf/v1/ApplicationProcessState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 14
    invoke-static {}, Lcom/google/firebase/perf/v1/ApplicationProcessState;->$values()[Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->$VALUES:[Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 116
    new-instance v0, Lcom/google/firebase/perf/v1/ApplicationProcessState$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/ApplicationProcessState$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static forNumber(I)Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_0
    sget-object p0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-object p0

    .line 105
    :cond_1
    sget-object p0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->BACKGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-object p0

    .line 104
    :cond_2
    sget-object p0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-object p0

    .line 103
    :cond_3
    sget-object p0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/perf/v1/ApplicationProcessState;",
            ">;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 126
    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState$ApplicationProcessStateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(I)Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-static {p0}, Lcom/google/firebase/perf/v1/ApplicationProcessState;->forNumber(I)Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 1

    .line 14
    const-class v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->$VALUES:[Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/v1/ApplicationProcessState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
