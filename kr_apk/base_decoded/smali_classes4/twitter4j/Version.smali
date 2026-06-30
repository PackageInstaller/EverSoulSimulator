.class public final Ltwitter4j/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final TITLE:Ljava/lang/String; = "Twitter4J"

.field private static final VERSION:Ljava/lang/String; = "4.0.7"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const v0, 0x5433f16a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 409
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const v0, 0x336868e3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
