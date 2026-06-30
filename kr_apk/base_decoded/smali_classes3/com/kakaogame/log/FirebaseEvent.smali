.class public final Lcom/kakaogame/log/FirebaseEvent;
.super Ljava/lang/Object;
.source "FirebaseEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/log/FirebaseEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseEvent.kt\ncom/kakaogame/log/FirebaseEvent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0019\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0014\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0016J\u0012\u0010\u0017\u001a\u00020\u00142\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0016J\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/kakaogame/log/FirebaseEvent;",
        "",
        "className",
        "",
        "function",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getClassName",
        "()Ljava/lang/String;",
        "setClassName",
        "(Ljava/lang/String;)V",
        "getFunction",
        "setFunction",
        "traceId",
        "",
        "getTraceId",
        "()I",
        "setTraceId",
        "(I)V",
        "setResult",
        "",
        "result",
        "Lcom/kakaogame/KGResult;",
        "setTraceResult",
        "addMetric",
        "name",
        "Companion",
        "gamesdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;


# instance fields
.field private className:Ljava/lang/String;

.field private function:Ljava/lang/String;

.field private traceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/log/FirebaseEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/log/FirebaseEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x2258b066

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x22410d5c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/log/FirebaseEvent;->className:Ljava/lang/String;

    iput-object p2, p0, Lcom/kakaogame/log/FirebaseEvent;->function:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getFirebaseTrace(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/kakaogame/log/FirebaseEvent$Companion;->getFirebaseTrace(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/log/FirebaseEvent;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final sendEvent(Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/KGResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResult<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/log/FirebaseEvent;->Companion:Lcom/kakaogame/log/FirebaseEvent$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/kakaogame/log/FirebaseEvent$Companion;->sendEvent(Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/KGResult;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final addMetric(Ljava/lang/String;)V
    .locals 2

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    iget v1, p0, Lcom/kakaogame/log/FirebaseEvent;->traceId:I

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/core/CoreManager;->addTraceMetric(ILjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/kakaogame/log/FirebaseEvent;->className:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFunction()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/kakaogame/log/FirebaseEvent;->function:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTraceId()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/kakaogame/log/FirebaseEvent;->traceId:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setClassName(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/kakaogame/log/FirebaseEvent;->className:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setFunction(Ljava/lang/String;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/kakaogame/log/FirebaseEvent;->function:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setResult(Lcom/kakaogame/KGResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 149
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kakaogame/log/FirebaseEvent;->className:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakaogame/log/FirebaseEvent;->function:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/core/CoreManager;->sendLogFirebase(Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/KGResult;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final setTraceId(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/kakaogame/log/FirebaseEvent;->traceId:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTraceResult(Lcom/kakaogame/KGResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "*>;)V"
        }
    .end annotation

    const v0, 0x543e8a9a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/kakaogame/server/KeyBaseResult;->Companion:Lcom/kakaogame/server/KeyBaseResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kakaogame/server/KeyBaseResult$Companion;->getResult(I)Lcom/kakaogame/server/KeyBaseResult;

    move-result-object p1

    .line 199
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    iget v1, p0, Lcom/kakaogame/log/FirebaseEvent;->traceId:I

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/core/CoreManager;->stopFirebaseTrace(ILcom/kakaogame/server/KeyBaseResult;)V

    return-void

    .array-data 1
    .end array-data
.end method
