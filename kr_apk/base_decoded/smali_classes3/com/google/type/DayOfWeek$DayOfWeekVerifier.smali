.class final Lcom/google/type/DayOfWeek$DayOfWeekVerifier;
.super Ljava/lang/Object;
.source "DayOfWeek.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/DayOfWeek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DayOfWeekVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 201
    new-instance v0, Lcom/google/type/DayOfWeek$DayOfWeekVerifier;

    invoke-direct {v0}, Lcom/google/type/DayOfWeek$DayOfWeekVerifier;-><init>()V

    sput-object v0, Lcom/google/type/DayOfWeek$DayOfWeekVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 204
    invoke-static {p1}, Lcom/google/type/DayOfWeek;->forNumber(I)Lcom/google/type/DayOfWeek;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method
