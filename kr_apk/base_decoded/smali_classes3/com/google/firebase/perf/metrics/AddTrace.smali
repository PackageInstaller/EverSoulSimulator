.class public interface abstract annotation Lcom/google/firebase/perf/metrics/AddTrace;
.super Ljava/lang/Object;
.source "AddTrace.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/firebase/perf/metrics/AddTrace;
        enabled = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract enabled()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method
