.class public final enum Lcom/google/firebase/perf/util/Constants$CounterNames;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CounterNames"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/util/Constants$CounterNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/util/Constants$CounterNames;

.field public static final enum FRAMES_FROZEN:Lcom/google/firebase/perf/util/Constants$CounterNames;

.field public static final enum FRAMES_SLOW:Lcom/google/firebase/perf/util/Constants$CounterNames;

.field public static final enum FRAMES_TOTAL:Lcom/google/firebase/perf/util/Constants$CounterNames;

.field public static final enum NETWORK_TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/Constants$CounterNames;

.field public static final enum TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/Constants$CounterNames;

.field public static final enum TRACE_STARTED_NOT_STOPPED:Lcom/google/firebase/perf/util/Constants$CounterNames;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/google/firebase/perf/util/Constants$CounterNames;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/firebase/perf/util/Constants$CounterNames;

    const/4 v1, 0x0

    .line 93
    sget-object v2, Lcom/google/firebase/perf/util/Constants$CounterNames;->TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/Constants$CounterNames;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/firebase/perf/util/Constants$CounterNames;->NETWORK_TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/Constants$CounterNames;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/firebase/perf/util/Constants$CounterNames;->TRACE_STARTED_NOT_STOPPED:Lcom/google/firebase/perf/util/Constants$CounterNames;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/firebase/perf/util/Constants$CounterNames;->FRAMES_TOTAL:Lcom/google/firebase/perf/util/Constants$CounterNames;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/firebase/perf/util/Constants$CounterNames;->FRAMES_SLOW:Lcom/google/firebase/perf/util/Constants$CounterNames;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/firebase/perf/util/Constants$CounterNames;->FRAMES_FROZEN:Lcom/google/firebase/perf/util/Constants$CounterNames;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 94
    new-instance v0, Lcom/google/firebase/perf/util/Constants$CounterNames;

    const/4 v1, 0x0

    const-string v2, "_fstec"

    const-string v3, "TRACE_EVENT_RATE_LIMITED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$CounterNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/Constants$CounterNames;

    .line 95
    new-instance v0, Lcom/google/firebase/perf/util/Constants$CounterNames;

    const/4 v1, 0x1

    const-string v2, "_fsntc"

    const-string v3, "NETWORK_TRACE_EVENT_RATE_LIMITED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$CounterNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->NETWORK_TRACE_EVENT_RATE_LIMITED:Lcom/google/firebase/perf/util/Constants$CounterNames;

    .line 96
    new-instance v0, Lcom/google/firebase/perf/util/Constants$CounterNames;

    const/4 v1, 0x2

    const-string v2, "_tsns"

    const-string v3, "TRACE_STARTED_NOT_STOPPED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$CounterNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->TRACE_STARTED_NOT_STOPPED:Lcom/google/firebase/perf/util/Constants$CounterNames;

    .line 97
    new-instance v0, Lcom/google/firebase/perf/util/Constants$CounterNames;

    const/4 v1, 0x3

    const-string v2, "_fr_tot"

    const-string v3, "FRAMES_TOTAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$CounterNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->FRAMES_TOTAL:Lcom/google/firebase/perf/util/Constants$CounterNames;

    .line 98
    new-instance v0, Lcom/google/firebase/perf/util/Constants$CounterNames;

    const/4 v1, 0x4

    const-string v2, "_fr_slo"

    const-string v3, "FRAMES_SLOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$CounterNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->FRAMES_SLOW:Lcom/google/firebase/perf/util/Constants$CounterNames;

    .line 99
    new-instance v0, Lcom/google/firebase/perf/util/Constants$CounterNames;

    const/4 v1, 0x5

    const-string v2, "_fr_fzn"

    const-string v3, "FRAMES_FROZEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/perf/util/Constants$CounterNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->FRAMES_FROZEN:Lcom/google/firebase/perf/util/Constants$CounterNames;

    .line 93
    invoke-static {}, Lcom/google/firebase/perf/util/Constants$CounterNames;->$values()[Lcom/google/firebase/perf/util/Constants$CounterNames;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->$VALUES:[Lcom/google/firebase/perf/util/Constants$CounterNames;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput-object p3, p0, Lcom/google/firebase/perf/util/Constants$CounterNames;->mName:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/util/Constants$CounterNames;
    .locals 1

    .line 93
    const-class v0, Lcom/google/firebase/perf/util/Constants$CounterNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/util/Constants$CounterNames;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/google/firebase/perf/util/Constants$CounterNames;
    .locals 1

    .line 93
    sget-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->$VALUES:[Lcom/google/firebase/perf/util/Constants$CounterNames;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/util/Constants$CounterNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/util/Constants$CounterNames;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/firebase/perf/util/Constants$CounterNames;->mName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
