.class final Lcom/google/type/CalendarPeriod$CalendarPeriodVerifier;
.super Ljava/lang/Object;
.source "CalendarPeriod.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/CalendarPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CalendarPeriodVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Lcom/google/type/CalendarPeriod$CalendarPeriodVerifier;

    invoke-direct {v0}, Lcom/google/type/CalendarPeriod$CalendarPeriodVerifier;-><init>()V

    sput-object v0, Lcom/google/type/CalendarPeriod$CalendarPeriodVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 214
    invoke-static {p1}, Lcom/google/type/CalendarPeriod;->forNumber(I)Lcom/google/type/CalendarPeriod;

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
