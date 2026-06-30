.class public final Lcom/google/android/material/color/utilities/PointProviderLab;
.super Ljava/lang/Object;
.source "PointProviderLab.java"

# interfaces
.implements Lcom/google/android/material/color/utilities/PointProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public distance([D[D)D
    .locals 7

    const/4 v0, 0x0

    .line 57
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    sub-double/2addr v1, v3

    const/4 v0, 0x1

    .line 58
    aget-wide v3, p1, v0

    aget-wide v5, p2, v0

    sub-double/2addr v3, v5

    const/4 v0, 0x2

    .line 59
    aget-wide v5, p1, v0

    aget-wide p1, p2, v0

    sub-double/2addr v5, p1

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    return-wide v1

    .array-data 1
    .end array-data
.end method

.method public fromInt(I)[D
    .locals 4

    .line 37
    invoke-static {p1}, Lcom/google/android/material/color/utilities/ColorUtils;->labFromArgb(I)[D

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 38
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toInt([D)I
    .locals 7

    const/4 v0, 0x0

    .line 44
    aget-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v3, p1, v0

    const/4 v0, 0x2

    aget-wide v5, p1, v0

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromLab(DDD)I

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method
