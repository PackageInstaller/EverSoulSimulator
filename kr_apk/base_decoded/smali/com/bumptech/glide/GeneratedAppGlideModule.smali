.class abstract Lcom/bumptech/glide/GeneratedAppGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "GeneratedAppGlideModule.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method abstract getExcludedModuleClasses()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method

.method getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0

    .array-data 1
    .end array-data
.end method
