.class public final Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;
.super Ljava/lang/Object;
.source "ContextChooseContent.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/model/ContextChooseContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/gamingservices/model/ContextChooseContent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/facebook/gamingservices/model/ContextChooseContent;",
        "()V",
        "createFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Lcom/facebook/gamingservices/model/ContextChooseContent;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextChooseContent;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lcom/facebook/gamingservices/model/ContextChooseContent;

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent;-><init>(Landroid/os/Parcel;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/gamingservices/model/ContextChooseContent;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public newArray(I)[Lcom/facebook/gamingservices/model/ContextChooseContent;
    .locals 0

    .line 101
    new-array p1, p1, [Lcom/facebook/gamingservices/model/ContextChooseContent;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/facebook/gamingservices/model/ContextChooseContent$CREATOR;->newArray(I)[Lcom/facebook/gamingservices/model/ContextChooseContent;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
