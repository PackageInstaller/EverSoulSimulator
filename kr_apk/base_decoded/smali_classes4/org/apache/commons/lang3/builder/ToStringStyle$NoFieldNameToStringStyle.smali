.class final Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;
.super Lorg/apache/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoFieldNameToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21919
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    .line 21929
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;->setUseFieldNames(Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 22019
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
