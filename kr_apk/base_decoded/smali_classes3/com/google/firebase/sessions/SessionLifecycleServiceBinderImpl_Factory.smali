.class public final Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;
.super Ljava/lang/Object;
.source "SessionLifecycleServiceBinderImpl_Factory.java"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/sessions/dagger/internal/Factory<",
        "Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;->appContextProvider:Ljavax/inject/Provider;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;
    .locals 1

    .line 36
    new-instance v0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;

    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;->appContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;->newInstance(Landroid/content/Context;)Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl_Factory;->get()Lcom/google/firebase/sessions/SessionLifecycleServiceBinderImpl;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
