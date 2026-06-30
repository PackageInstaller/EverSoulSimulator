.class public final Lcom/liapp/q;
.super Ljava/lang/Object;
.source "\u05b3\u0772\u0671\u062d\u06a9.java"


# static fields
.field public static final synthetic ۲ܭׯײٮ:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1129
    const-class v0, Lcom/liapp/x;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/liapp/q;->۲ܭׯײٮ:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic ۱٬ڱܯޫ(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1129
    invoke-static {p0, p1, p2}, Lcom/liapp/q;->ݱزݴڭܩ(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)I

    move-result p0

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method private static synthetic ۱٬ڱܯޫ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1178
    :try_start_0
    const-string v0, "BOGJ{O\\GbBABF@T\u001c"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1183
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    return-object p0

    .line 1185
    :catchall_0
    move-exception p0

    .line 1186
    const/4 p0, 0x0

    .line 1188
    return-object p0

    .array-data 1
    .end array-data
.end method

.method private static synthetic ݱزݴڭܩ(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1137
    nop

    .line 1139
    const-string v0, "_OXGgG[\u001b"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1140
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v1, p2, v0}, Lcom/liapp/q;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object p1

    .line 1145
    if-nez p1, :cond_0

    .line 1146
    const/4 p0, -0x1

    return p0

    .line 1149
    :cond_0
    const-string p2, "@@_aL@NABQ\u001c"

    invoke-static {p2}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_4

    .line 1152
    sget-boolean p1, Lcom/liapp/q;->۲ܭׯײٮ:Z

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1153
    :cond_2
    :goto_0
    const-string p1, "TTKuXTZUVEHcIAOBEBPU@t_SMA_YC_\u001c"

    invoke-static {p1}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/liapp/x;->۱٬ڱܯޫ(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1154
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/IOException;

    check-cast v1, [Ljava/io/IOException;

    .line 1155
    if-nez v1, :cond_3

    .line 1156
    new-array v1, p2, [Ljava/io/IOException;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;

    goto :goto_1

    .line 1159
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/io/IOException;

    .line 1160
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1161
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v3, v1

    invoke-static {v1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1162
    nop

    .line 1164
    move-object v0, v2

    :goto_1
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1168
    :cond_4
    return p2

    .array-data 1
    .end array-data
.end method
