.class public interface abstract Lcom/kakaogame/util/json/parser/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0006H&J\u0012\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\nH&J\u0008\u0010\u000b\u001a\u00020\u0006H&J\u0008\u0010\u000c\u001a\u00020\u0006H&J\u0008\u0010\r\u001a\u00020\u0006H&J\u0012\u0010\u000e\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/kakaogame/util/json/parser/ContentHandler;",
        "",
        "startJSON",
        "",
        "endJSON",
        "startObject",
        "",
        "endObject",
        "startObjectEntry",
        "key",
        "",
        "endObjectEntry",
        "startArray",
        "endArray",
        "primitive",
        "value",
        "common-kakaogames_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract endArray()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endJSON()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endObject()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract endObjectEntry()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract primitive(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startArray()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startJSON()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startObject()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startObjectEntry(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakaogame/util/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
