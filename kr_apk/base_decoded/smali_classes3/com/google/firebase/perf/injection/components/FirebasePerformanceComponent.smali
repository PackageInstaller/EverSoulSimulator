.class public interface abstract Lcom/google/firebase/perf/injection/components/FirebasePerformanceComponent;
.super Ljava/lang/Object;
.source "FirebasePerformanceComponent.java"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/google/firebase/perf/injection/modules/FirebasePerformanceModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# virtual methods
.method public abstract getFirebasePerformance()Lcom/google/firebase/perf/FirebasePerformance;
.end method
