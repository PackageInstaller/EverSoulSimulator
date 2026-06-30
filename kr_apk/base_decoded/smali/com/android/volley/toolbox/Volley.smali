.class public Lcom/android/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static newRequestQueue(Landroid/content/Context;I)Lcom/android/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;I)Lcom/android/volley/RequestQueue;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;I)Lcom/android/volley/RequestQueue;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;I)Lcom/android/volley/RequestQueue;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const v1, -0x451cca8f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {p1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    :cond_0
    if-eqz p1, :cond_2

    new-instance p0, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    const/4 p1, -0x1

    if-gt p2, p1, :cond_1

    new-instance p1, Lcom/android/volley/RequestQueue;

    new-instance p2, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {p2, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2, p0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v1, v0, p2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    invoke-direct {p1, v1, p0}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->start()V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No HttpStack available!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .array-data 1
    .end array-data
.end method
