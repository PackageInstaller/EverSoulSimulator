.class final Lretrofit2/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field static final builtInFactories:Lretrofit2/BuiltInFactories;

.field static final callbackExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field static final reflection:Lretrofit2/Reflection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "java.vm.name"

    .line 29
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "RoboVM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sput-object v2, Lretrofit2/Platform;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 49
    new-instance v0, Lretrofit2/Reflection$Java8;

    invoke-direct {v0}, Lretrofit2/Reflection$Java8;-><init>()V

    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 50
    new-instance v0, Lretrofit2/BuiltInFactories$Java8;

    invoke-direct {v0}, Lretrofit2/BuiltInFactories$Java8;-><init>()V

    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/BuiltInFactories;

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lretrofit2/AndroidMainExecutor;

    invoke-direct {v0}, Lretrofit2/AndroidMainExecutor;-><init>()V

    sput-object v0, Lretrofit2/Platform;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 33
    new-instance v0, Lretrofit2/Reflection$Android24;

    invoke-direct {v0}, Lretrofit2/Reflection$Android24;-><init>()V

    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 34
    new-instance v0, Lretrofit2/BuiltInFactories$Java8;

    invoke-direct {v0}, Lretrofit2/BuiltInFactories$Java8;-><init>()V

    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/BuiltInFactories;

    goto :goto_0

    .line 42
    :cond_1
    sput-object v2, Lretrofit2/Platform;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 43
    new-instance v0, Lretrofit2/Reflection;

    invoke-direct {v0}, Lretrofit2/Reflection;-><init>()V

    sput-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    .line 44
    new-instance v0, Lretrofit2/BuiltInFactories;

    invoke-direct {v0}, Lretrofit2/BuiltInFactories;-><init>()V

    sput-object v0, Lretrofit2/Platform;->builtInFactories:Lretrofit2/BuiltInFactories;

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
