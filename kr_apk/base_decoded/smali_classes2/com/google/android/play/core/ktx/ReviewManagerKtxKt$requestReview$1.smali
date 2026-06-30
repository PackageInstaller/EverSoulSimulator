.class final Lcom/google/android/play/core/ktx/ReviewManagerKtxKt$requestReview$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "com.google.android.play:review-ktx@@2.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/core/ktx/ReviewManagerKtxKt;->requestReview(Lcom/google/android/play/core/review/ReviewManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.play.core.ktx.ReviewManagerKtxKt"
    f = "ReviewManagerKtx.kt"
    i = {}
    l = {
        0x16
    }
    m = "requestReview"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/play/core/ktx/ReviewManagerKtxKt$requestReview$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/play/core/ktx/ReviewManagerKtxKt$requestReview$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/play/core/ktx/ReviewManagerKtxKt$requestReview$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/play/core/ktx/ReviewManagerKtxKt$requestReview$1;->label:I

    const/4 p1, 0x0

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0}, Lcom/google/android/play/core/ktx/ReviewManagerKtxKt;->requestReview(Lcom/google/android/play/core/review/ReviewManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method
