.class public final Lcom/kakaogame/ui/font/Text;
.super Lcom/kakaogame/util/json/JSONObject;
.source "StyleText.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStyleText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StyleText.kt\ncom/kakaogame/ui/font/Text\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1855#2,2:115\n*S KotlinDebug\n*F\n+ 1 StyleText.kt\ncom/kakaogame/ui/font/Text\n*L\n87#1:115,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakaogame/ui/font/Text;",
        "Lcom/kakaogame/util/json/JSONObject;",
        "text",
        "",
        "styleList",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;)V",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, -0x4515b29f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x336c9fc3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    invoke-direct {p0}, Lcom/kakaogame/util/json/JSONObject;-><init>()V

    .line 849
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 859
    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/ui/font/Text;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    new-instance p1, Lcom/kakaogame/util/json/JSONArray;

    invoke-direct {p1}, Lcom/kakaogame/util/json/JSONArray;-><init>()V

    .line 879
    check-cast p2, Ljava/lang/Iterable;

    .line 1159
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 879
    invoke-virtual {p1, v0}, Lcom/kakaogame/util/json/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p2, "style"

    .line 889
    invoke-virtual {p0, p2, p1}, Lcom/kakaogame/ui/font/Text;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method
