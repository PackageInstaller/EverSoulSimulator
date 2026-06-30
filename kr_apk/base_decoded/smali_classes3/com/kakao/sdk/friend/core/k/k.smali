.class public final Lcom/kakao/sdk/friend/core/k/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kakao/sdk/friend/core/k/j;


# instance fields
.field public final a:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Locale;

    const-string v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kakao/sdk/friend/core/k/k;->a:Ljava/util/Locale;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/kakao/sdk/friend/core/k/i;->a(Lcom/kakao/sdk/friend/core/k/j;I)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final a()Ljava/text/Collator;
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/kakao/sdk/friend/core/k/k;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    const-string v1, "getInstance(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final b()Ljava/util/Locale;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/k/k;->a:Ljava/util/Locale;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x5

    return v0

    .array-data 1
    .end array-data
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x1

    return v0

    .array-data 1
    .end array-data
.end method
