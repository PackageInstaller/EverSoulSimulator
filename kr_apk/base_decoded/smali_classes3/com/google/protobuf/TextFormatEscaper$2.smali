.class Lcom/google/protobuf/TextFormatEscaper$2;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/google/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/TextFormatEscaper;->escapeBytes([B)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$input:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$input"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/google/protobuf/TextFormatEscaper$2;->val$input:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public byteAt(I)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/protobuf/TextFormatEscaper$2;->val$input:[B

    aget-byte p1, v0, p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public size()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/protobuf/TextFormatEscaper$2;->val$input:[B

    array-length v0, v0

    return v0

    .array-data 1
    .end array-data
.end method
