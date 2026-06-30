.class Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/text/StrBuilder;)V
    .locals 0

    .line 30569
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    .line 30579
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public flush()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public write(I)V
    .locals 1

    .line 30759
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 30939
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .line 30999
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method public write([C)V
    .locals 1

    .line 30819
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void

    .array-data 1
    .end array-data
.end method

.method public write([CII)V
    .locals 1

    .line 30879
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    return-void

    .array-data 1
    .end array-data
.end method
