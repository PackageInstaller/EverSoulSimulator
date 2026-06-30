.class public interface abstract Lcom/google/api/Distribution$ExemplarOrBuilder;
.super Ljava/lang/Object;
.source "Distribution.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExemplarOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttachments(I)Lcom/google/protobuf/Any;
.end method

.method public abstract getAttachmentsCount()I
.end method

.method public abstract getAttachmentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()Lcom/google/protobuf/Timestamp;
.end method

.method public abstract getValue()D
.end method

.method public abstract hasTimestamp()Z
.end method
