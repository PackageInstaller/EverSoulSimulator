.class public Lkotlinx/serialization/json/internal/Composer;
.super Ljava/lang/Object;
.source "Composers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0010\u000c\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0013J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0014H\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0015H\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0016H\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0017H\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0018H\u0016J\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u0019H\u0016J\u0008\u0010\u001c\u001a\u00020\rH\u0016J\u0008\u0010\u001d\u001a\u00020\rH\u0016R\u0010\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/Composer;",
        "",
        "writer",
        "Lkotlinx/serialization/json/internal/InternalJsonWriter;",
        "(Lkotlinx/serialization/json/internal/InternalJsonWriter;)V",
        "<set-?>",
        "",
        "writingFirst",
        "getWritingFirst",
        "()Z",
        "setWritingFirst",
        "(Z)V",
        "indent",
        "",
        "nextItem",
        "nextItemIfNotFirst",
        "print",
        "v",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "printQuoted",
        "value",
        "space",
        "unIndent",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

.field private writingFirst:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/InternalJsonWriter;)V
    .locals 1

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getWritingFirst()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public indent()V
    .locals 1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public nextItem()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public nextItemIfNotFirst()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public print(B)V
    .locals 3

    .line 40
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final print(C)V
    .locals 1

    .line 36
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeChar(C)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public print(D)V
    .locals 1

    .line 39
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->write(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public print(F)V
    .locals 1

    .line 38
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->write(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public print(I)V
    .locals 3

    .line 42
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public print(J)V
    .locals 1

    .line 43
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {v0, p1, p2}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public final print(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->write(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public print(S)V
    .locals 3

    .line 41
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeLong(J)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public print(Z)V
    .locals 1

    .line 44
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->write(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public printQuoted(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lkotlinx/serialization/json/internal/Composer;->writer:Lkotlinx/serialization/json/internal/InternalJsonWriter;

    invoke-interface {v0, p1}, Lkotlinx/serialization/json/internal/InternalJsonWriter;->writeQuoted(Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method protected final setWritingFirst(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public space()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public unIndent()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method
