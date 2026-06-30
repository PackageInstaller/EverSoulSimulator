.class public Lcom/google/firebase/crashlytics/internal/common/SystemCurrentTimeProvider;
.super Ljava/lang/Object;
.source "SystemCurrentTimeProvider.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getCurrentTimeMillis()J
    .locals 2

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method
