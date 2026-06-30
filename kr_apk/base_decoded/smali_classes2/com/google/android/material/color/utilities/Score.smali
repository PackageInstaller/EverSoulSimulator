.class public final Lcom/google/android/material/color/utilities/Score;
.super Ljava/lang/Object;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/Score$ScoredComparator;,
        Lcom/google/android/material/color/utilities/Score$ScoredHCT;
    }
.end annotation


# static fields
.field private static final BLUE_500:I = -0xbd7a0c

.field private static final CUTOFF_CHROMA:D = 5.0

.field private static final CUTOFF_EXCITED_PROPORTION:D = 0.01

.field private static final MAX_COLOR_COUNT:I = 0x4

.field private static final TARGET_CHROMA:D = 48.0

.field private static final WEIGHT_CHROMA_ABOVE:D = 0.3

.field private static final WEIGHT_CHROMA_BELOW:D = 0.1

.field private static final WEIGHT_PROPORTION:D = 0.7


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static score(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, -0xbd7a0c

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 53
    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static score(Ljava/util/Map;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, -0xbd7a0c

    const/4 v1, 0x1

    .line 57
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static score(Ljava/util/Map;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static score(Ljava/util/Map;IIZ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x168

    new-array v3, v2, [I

    .line 90
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v8

    .line 92
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 94
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 95
    aget v9, v3, v8

    add-int/2addr v9, v7

    aput v9, v3, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    goto :goto_0

    :cond_0
    new-array v4, v2, [D

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v2, :cond_2

    .line 102
    aget v9, v3, v8

    int-to-double v9, v9

    div-double/2addr v9, v5

    add-int/lit8 v11, v8, -0xe

    :goto_2
    add-int/lit8 v12, v8, 0x10

    if-ge v11, v12, :cond_1

    .line 104
    invoke-static {v11}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v12

    .line 105
    aget-wide v13, v4, v12

    add-double/2addr v13, v9

    aput-wide v13, v4, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 111
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/color/utilities/Hct;

    .line 113
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v5

    .line 114
    aget-wide v5, v4, v5

    if-eqz p3, :cond_4

    .line 115
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v8

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_3

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v8, v5, v8

    if-gtz v8, :cond_4

    goto :goto_3

    :cond_4
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v8

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v5, v8

    .line 121
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v8

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    const-wide v8, 0x3fb999999999999aL    # 0.1

    goto :goto_4

    :cond_5
    const-wide v8, 0x3fd3333333333333L    # 0.3

    .line 122
    :goto_4
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v12

    sub-double/2addr v12, v10

    mul-double/2addr v12, v8

    add-double/2addr v5, v12

    .line 124
    new-instance v8, Lcom/google/android/material/color/utilities/Score$ScoredHCT;

    invoke-direct {v8, v3, v5, v6}, Lcom/google/android/material/color/utilities/Score$ScoredHCT;-><init>(Lcom/google/android/material/color/utilities/Hct;D)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 127
    :cond_6
    new-instance v1, Lcom/google/android/material/color/utilities/Score$ScoredComparator;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/Score$ScoredComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x5a

    :goto_5
    const/16 v4, 0xf

    if-lt v3, v4, :cond_d

    .line 135
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 136
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/utilities/Score$ScoredHCT;

    .line 137
    iget-object v5, v5, Lcom/google/android/material/color/utilities/Score$ScoredHCT;->hct:Lcom/google/android/material/color/utilities/Hct;

    .line 139
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/color/utilities/Hct;

    .line 140
    invoke-virtual {v5}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v9

    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lcom/google/android/material/color/utilities/MathUtils;->differenceDegrees(DD)D

    move-result-wide v8

    int-to-double v10, v3

    cmpg-double v8, v8, v10

    if-gez v8, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    move v6, v7

    :goto_6
    if-nez v6, :cond_a

    .line 146
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v0, :cond_7

    .line 152
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v0, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 156
    :cond_d
    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 158
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 161
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/Hct;

    .line 162
    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
