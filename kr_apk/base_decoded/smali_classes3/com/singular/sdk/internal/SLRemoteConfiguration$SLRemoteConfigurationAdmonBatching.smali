.class Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;
.super Ljava/lang/Object;
.source "SLRemoteConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/SLRemoteConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SLRemoteConfigurationAdmonBatching"
.end annotation


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private aggregateAdmonEvents:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AggregateAdmonEvents"
    .end annotation
.end field

.field private debug:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "debug"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 219
    const-class v0, Lcom/singular/sdk/internal/SLRemoteConfiguration;

    const-string v0, "SLRemoteConfiguration"

    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->aggregateAdmonEvents:Z

    .line 199
    iput-boolean v0, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->debug:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 419
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 429
    :cond_2
    check-cast p1, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;

    .line 439
    iget-boolean v2, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->aggregateAdmonEvents:Z

    iget-boolean v3, p1, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->aggregateAdmonEvents:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->debug:Z

    iget-boolean p1, p1, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->debug:Z

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 269
    iget-boolean v1, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->aggregateAdmonEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public isAggregateAdmonEvents()Z
    .locals 1

    .line 519
    iget-boolean v0, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->aggregateAdmonEvents:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isDebug()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/singular/sdk/internal/SLRemoteConfiguration$SLRemoteConfigurationAdmonBatching;->debug:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method
