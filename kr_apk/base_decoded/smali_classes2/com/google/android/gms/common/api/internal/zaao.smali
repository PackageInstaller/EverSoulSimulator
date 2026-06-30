.class final Lcom/google/android/gms/common/api/internal/zaao;
.super Lcom/google/android/gms/common/api/internal/zaas;
.source "com.google.android.gms:play-services-base@@18.6.0"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaau;

.field private final zac:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaao;->zaa:Lcom/google/android/gms/common/api/internal/zaau;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zaau;Lcom/google/android/gms/common/api/internal/zaat;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaao;->zac:Ljava/util/ArrayList;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final zaa()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaao;->zaa:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaau;->zak(Lcom/google/android/gms/common/api/internal/zaau;)Lcom/google/android/gms/common/api/internal/zabg;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zabg;->zag:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaau;->zao(Lcom/google/android/gms/common/api/internal/zaau;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zabc;->zad:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaao;->zac:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaao;->zaa:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaau;->zam(Lcom/google/android/gms/common/api/internal/zaau;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaau;->zak(Lcom/google/android/gms/common/api/internal/zaau;)Lcom/google/android/gms/common/api/internal/zabg;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabg;->zag:Lcom/google/android/gms/common/api/internal/zabc;

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/zabc;->zad:Ljava/util/Set;

    .line 3
    invoke-interface {v3, v5, v4}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method
