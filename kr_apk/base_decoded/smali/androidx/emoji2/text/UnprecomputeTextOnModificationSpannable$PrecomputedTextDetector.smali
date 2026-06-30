.class Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;
.super Ljava/lang/Object;
.source "UnprecomputeTextOnModificationSpannable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrecomputedTextDetector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method isPrecomputedText(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 168
    instance-of p1, p1, Landroidx/core/text/PrecomputedTextCompat;

    return p1

    nop

    .array-data 1
    .end array-data
.end method
