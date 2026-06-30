.class public interface abstract annotation Lcom/google/firebase/perf/FirebasePerformance$HttpMethod;
.super Ljava/lang/Object;
.source "FirebasePerformance.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/FirebasePerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "HttpMethod"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final PATCH:Ljava/lang/String; = "PATCH"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final TRACE:Ljava/lang/String; = "TRACE"
