.class public interface abstract Lcom/google/api/DocumentationOrBuilder;
.super Ljava/lang/Object;
.source "DocumentationOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getDocumentationRootUrl()Ljava/lang/String;
.end method

.method public abstract getDocumentationRootUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOverview()Ljava/lang/String;
.end method

.method public abstract getOverviewBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPages(I)Lcom/google/api/Page;
.end method

.method public abstract getPagesCount()I
.end method

.method public abstract getPagesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRules(I)Lcom/google/api/DocumentationRule;
.end method

.method public abstract getRulesCount()I
.end method

.method public abstract getRulesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/DocumentationRule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSummary()Ljava/lang/String;
.end method

.method public abstract getSummaryBytes()Lcom/google/protobuf/ByteString;
.end method
