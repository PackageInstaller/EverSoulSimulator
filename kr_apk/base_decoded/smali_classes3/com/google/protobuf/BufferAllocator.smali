.class abstract Lcom/google/protobuf/BufferAllocator;
.super Ljava/lang/Object;
.source "BufferAllocator.java"


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final UNPOOLED:Lcom/google/protobuf/BufferAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/google/protobuf/BufferAllocator$1;

    invoke-direct {v0}, Lcom/google/protobuf/BufferAllocator$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/BufferAllocator;->UNPOOLED:Lcom/google/protobuf/BufferAllocator;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static unpooled()Lcom/google/protobuf/BufferAllocator;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/protobuf/BufferAllocator;->UNPOOLED:Lcom/google/protobuf/BufferAllocator;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public abstract allocateDirectBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation
.end method

.method public abstract allocateHeapBuffer(I)Lcom/google/protobuf/AllocatedBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation
.end method
