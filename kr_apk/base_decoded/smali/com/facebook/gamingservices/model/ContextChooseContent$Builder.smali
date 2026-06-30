.class public final Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
.super Ljava/lang/Object;
.source "ContextChooseContent.kt"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/ContextChooseContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/gamingservices/model/ContextChooseContent;",
        "Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContextChooseContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextChooseContent.kt\ncom/facebook/gamingservices/model/ContextChooseContent$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u0012\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0016J\u0016\u0010\u001a\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005J\u0015\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u001cR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;",
        "Lcom/facebook/share/model/ShareModelBuilder;",
        "Lcom/facebook/gamingservices/model/ContextChooseContent;",
        "()V",
        "filters",
        "",
        "",
        "getFilters$facebook_gamingservices_release",
        "()Ljava/util/List;",
        "setFilters$facebook_gamingservices_release",
        "(Ljava/util/List;)V",
        "maxSize",
        "",
        "getMaxSize$facebook_gamingservices_release",
        "()Ljava/lang/Integer;",
        "setMaxSize$facebook_gamingservices_release",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "minSize",
        "getMinSize$facebook_gamingservices_release",
        "setMinSize$facebook_gamingservices_release",
        "build",
        "readFrom",
        "parcel",
        "Landroid/os/Parcel;",
        "model",
        "setFilters",
        "setMaxSize",
        "(Ljava/lang/Integer;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;",
        "setMinSize",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:Ljava/lang/Integer;

.field private minSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public build()Lcom/facebook/gamingservices/model/ContextChooseContent;
    .locals 2

    .line 83
    new-instance v0, Lcom/facebook/gamingservices/model/ContextChooseContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/gamingservices/model/ContextChooseContent;-><init>(Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->build()Lcom/facebook/gamingservices/model/ContextChooseContent;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFilters$facebook_gamingservices_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->filters:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMaxSize$facebook_gamingservices_release()Ljava/lang/Integer;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->maxSize:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMinSize$facebook_gamingservices_release()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->minSize:Ljava/lang/Integer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final readFrom(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-class v0, Lcom/facebook/gamingservices/model/ContextChooseContent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/gamingservices/model/ContextChooseContent;

    .line 90
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->readFrom(Lcom/facebook/gamingservices/model/ContextChooseContent;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public readFrom(Lcom/facebook/gamingservices/model/ContextChooseContent;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->setFilters(Ljava/util/List;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->setMaxSize(Ljava/lang/Integer;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;->getMinSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->setMinSize(Ljava/lang/Integer;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    move-object p1, p0

    :cond_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 45
    check-cast p1, Lcom/facebook/gamingservices/model/ContextChooseContent;

    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->readFrom(Lcom/facebook/gamingservices/model/ContextChooseContent;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareModelBuilder;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final setFilters(Ljava/util/List;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->filters:Ljava/util/List;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setFilters$facebook_gamingservices_release(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->filters:Ljava/util/List;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setMaxSize(Ljava/lang/Integer;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->maxSize:Ljava/lang/Integer;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setMaxSize$facebook_gamingservices_release(Ljava/lang/Integer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->maxSize:Ljava/lang/Integer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setMinSize(Ljava/lang/Integer;)Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->minSize:Ljava/lang/Integer;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setMinSize$facebook_gamingservices_release(Ljava/lang/Integer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/facebook/gamingservices/model/ContextChooseContent$Builder;->minSize:Ljava/lang/Integer;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
