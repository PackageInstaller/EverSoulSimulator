.class public final Lcom/kakao/sdk/template/model/FeedTemplate;
.super Ljava/lang/Object;
.source "Templates.kt"

# interfaces
.implements Lcom/kakao/sdk/template/model/DefaultTemplate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/template/model/FeedTemplate$$serializer;,
        Lcom/kakao/sdk/template/model/FeedTemplate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 72\u00020\u0001:\u000267Ba\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0012BE\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0013J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003JI\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00c6\u0001J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u00d6\u0003J\t\u0010-\u001a\u00020\u0003H\u00d6\u0001J\t\u0010.\u001a\u00020\u000eH\u00d6\u0001J!\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u00002\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u00c7\u0001R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0015\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u000f\u001a\u00020\u000e8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u0015\u001a\u0004\u0008 \u0010\u0017R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u00068"
    }
    d2 = {
        "Lcom/kakao/sdk/template/model/FeedTemplate;",
        "Lcom/kakao/sdk/template/model/DefaultTemplate;",
        "seen1",
        "",
        "content",
        "Lcom/kakao/sdk/template/model/Content;",
        "itemContent",
        "Lcom/kakao/sdk/template/model/ItemContent;",
        "social",
        "Lcom/kakao/sdk/template/model/Social;",
        "buttons",
        "",
        "Lcom/kakao/sdk/template/model/Button;",
        "buttonTitle",
        "",
        "objectType",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;)V",
        "getButtonTitle$annotations",
        "()V",
        "getButtonTitle",
        "()Ljava/lang/String;",
        "getButtons",
        "()Ljava/util/List;",
        "getContent",
        "()Lcom/kakao/sdk/template/model/Content;",
        "getItemContent$annotations",
        "getItemContent",
        "()Lcom/kakao/sdk/template/model/ItemContent;",
        "getObjectType$annotations",
        "getObjectType",
        "getSocial",
        "()Lcom/kakao/sdk/template/model/Social;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
        "template_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/template/model/FeedTemplate$Companion;


# instance fields
.field private final buttonTitle:Ljava/lang/String;

.field private final buttons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakao/sdk/template/model/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final content:Lcom/kakao/sdk/template/model/Content;

.field private final itemContent:Lcom/kakao/sdk/template/model/ItemContent;

.field private final objectType:Ljava/lang/String;

.field private final social:Lcom/kakao/sdk/template/model/Social;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/template/model/FeedTemplate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/template/model/FeedTemplate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/template/model/FeedTemplate;->Companion:Lcom/kakao/sdk/template/model/FeedTemplate$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p3    # Lcom/kakao/sdk/template/model/ItemContent;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "item_content"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "button_title"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/Required;
        .end annotation

        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "object_type"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p8, p1, 0x21

    const/16 v0, 0x21

    if-eq v0, p8, :cond_0

    .line 389
    sget-object p8, Lcom/kakao/sdk/template/model/FeedTemplate$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/FeedTemplate$$serializer;

    invoke-virtual {p8}, Lcom/kakao/sdk/template/model/FeedTemplate$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    and-int/lit8 p2, p1, 0x2

    const/4 p8, 0x0

    if-nez p2, :cond_1

    iput-object p8, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object p8, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object p8, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    goto :goto_2

    :cond_3
    iput-object p5, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    iput-object p8, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p6, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    :goto_3
    iput-object p7, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->objectType:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/template/model/Content;)V
    .locals 9

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/kakao/sdk/template/model/FeedTemplate;-><init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;)V
    .locals 9

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/kakao/sdk/template/model/FeedTemplate;-><init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;)V
    .locals 9

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/kakao/sdk/template/model/FeedTemplate;-><init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/template/model/Content;",
            "Lcom/kakao/sdk/template/model/ItemContent;",
            "Lcom/kakao/sdk/template/model/Social;",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/template/model/Button;",
            ">;)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/kakao/sdk/template/model/FeedTemplate;-><init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/template/model/Content;",
            "Lcom/kakao/sdk/template/model/ItemContent;",
            "Lcom/kakao/sdk/template/model/Social;",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/template/model/Button;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    .line 419
    iput-object p2, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    .line 429
    iput-object p3, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    .line 439
    iput-object p4, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    .line 449
    iput-object p5, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    const-string p1, "feed"

    .line 519
    iput-object p1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->objectType:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 399
    invoke-direct/range {v1 .. v6}, Lcom/kakao/sdk/template/model/FeedTemplate;-><init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/template/model/FeedTemplate;Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/kakao/sdk/template/model/FeedTemplate;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/kakao/sdk/template/model/FeedTemplate;->copy(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;)Lcom/kakao/sdk/template/model/FeedTemplate;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getButtonTitle$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "button_title"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getItemContent$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "item_content"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getObjectType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Required;
    .end annotation

    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "object_type"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/template/model/FeedTemplate;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    sget-object v0, Lcom/kakao/sdk/template/model/Content$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/Content$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    sget-object v1, Lcom/kakao/sdk/template/model/ItemContent$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/ItemContent$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move v3, v0

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_3
    if-eqz v3, :cond_5

    sget-object v3, Lcom/kakao/sdk/template/model/Social$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/Social$$serializer;

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_5
    if-eqz v3, :cond_8

    new-instance v3, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v4, Lcom/kakao/sdk/template/model/Button$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/Button$$serializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v3, v4}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    invoke-interface {p1, p2, v1, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_6
    move v2, v0

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/4 v0, 0x5

    iget-object p0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->objectType:Ljava/lang/String;

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Lcom/kakao/sdk/template/model/Content;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Lcom/kakao/sdk/template/model/ItemContent;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Lcom/kakao/sdk/template/model/Social;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/template/model/Button;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;)Lcom/kakao/sdk/template/model/FeedTemplate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/sdk/template/model/Content;",
            "Lcom/kakao/sdk/template/model/ItemContent;",
            "Lcom/kakao/sdk/template/model/Social;",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/template/model/Button;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/kakao/sdk/template/model/FeedTemplate;"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/kakao/sdk/template/model/FeedTemplate;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/kakao/sdk/template/model/FeedTemplate;-><init>(Lcom/kakao/sdk/template/model/Content;Lcom/kakao/sdk/template/model/ItemContent;Lcom/kakao/sdk/template/model/Social;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/template/model/FeedTemplate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/template/model/FeedTemplate;

    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    iget-object v3, p1, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    iget-object v3, p1, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    iget-object v3, p1, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    iget-object v3, p1, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    iget-object p1, p1, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getButtonTitle()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakao/sdk/template/model/Button;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getContent()Lcom/kakao/sdk/template/model/Content;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getItemContent()Lcom/kakao/sdk/template/model/ItemContent;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getObjectType()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->objectType:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSocial()Lcom/kakao/sdk/template/model/Social;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    invoke-virtual {v0}, Lcom/kakao/sdk/template/model/Content;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/kakao/sdk/template/model/ItemContent;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/kakao/sdk/template/model/Social;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->content:Lcom/kakao/sdk/template/model/Content;

    iget-object v1, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->itemContent:Lcom/kakao/sdk/template/model/ItemContent;

    iget-object v2, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->social:Lcom/kakao/sdk/template/model/Social;

    iget-object v3, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttons:Ljava/util/List;

    iget-object v4, p0, Lcom/kakao/sdk/template/model/FeedTemplate;->buttonTitle:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FeedTemplate(content="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", itemContent="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", social="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buttons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buttonTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
