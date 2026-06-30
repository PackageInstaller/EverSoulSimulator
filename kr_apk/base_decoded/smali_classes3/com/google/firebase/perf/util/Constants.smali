.class public Lcom/google/firebase/perf/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/util/Constants$CounterNames;,
        Lcom/google/firebase/perf/util/Constants$TraceNames;
    }
.end annotation


# static fields
.field public static final ACTIVITY_ATTRIBUTE_KEY:Ljava/lang/String; = "Hosting_activity"

.field public static final BURST_CAPACITY:I = 0x1f4

.field public static final ENABLE_DISABLE:Ljava/lang/String; = "isEnabled"

.field public static final FROZEN_FRAME_TIME:I = 0x2bc

.field public static final MAX_ATTRIBUTE_KEY_LENGTH:I = 0x28

.field public static final MAX_ATTRIBUTE_VALUE_LENGTH:I = 0x64

.field public static final MAX_CONTENT_TYPE_LENGTH:I = 0x80

.field public static final MAX_COUNTER_ID_LENGTH:I = 0x64

.field public static final MAX_HOST_LENGTH:I = 0xff

.field public static final MAX_SAMPLING_RATE:D = 1.0

.field public static final MAX_SUBTRACE_DEEP:I = 0x1

.field public static final MAX_TRACE_CUSTOM_ATTRIBUTES:I = 0x5

.field public static final MAX_TRACE_ID_LENGTH:I = 0x64

.field public static final MAX_URL_LENGTH:I = 0x7d0

.field public static final MIN_SAMPLING_RATE:D = 0.0

.field public static final PARENT_FRAGMENT_ATTRIBUTE_KEY:Ljava/lang/String; = "Parent_fragment"

.field public static final PARENT_FRAGMENT_ATTRIBUTE_VALUE_NONE:Ljava/lang/String; = "No parent"

.field public static final PREFS_NAME:Ljava/lang/String; = "FirebasePerfSharedPrefs"

.field public static final RATE_PER_MINUTE:I = 0x64

.field public static final SCREEN_TRACE_PREFIX:Ljava/lang/String; = "_st_"

.field public static final SLOW_FRAME_TIME:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
