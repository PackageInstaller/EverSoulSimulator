.class public final Lcom/kakaogame/KGKakaoTalkGroupChat;
.super Lcom/kakaogame/KGObject;
.source "KGKakaoTalkGroupChat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;,
        Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatType;,
        Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \"2\u00020\u0001:\u0003 !\"B\u0011\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B!\u0008\u0010\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0014\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoTalkGroupChat;",
        "Lcom/kakaogame/KGObject;",
        "chatInfo",
        "Lcom/kakao/sdk/partner/talk/model/Chat;",
        "<init>",
        "(Lcom/kakao/sdk/partner/talk/model/Chat;)V",
        "content",
        "",
        "",
        "",
        "(Ljava/util/Map;)V",
        "chatId",
        "",
        "getChatId",
        "()J",
        "title",
        "getTitle",
        "()Ljava/lang/String;",
        "thumbnailImageUrl",
        "getThumbnailImageUrl",
        "memberCount",
        "",
        "getMemberCount",
        "()I",
        "memberThumbnailImageUrls",
        "",
        "getMemberThumbnailImageUrls",
        "()Ljava/util/List;",
        "chatType",
        "Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatType;",
        "getChatType",
        "()Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatType;",
        "KGKakaoTalkGroupChatsResponse",
        "KGKakaoTalkGroupChatType",
        "Companion",
        "idp_kakao_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "KGKakaoTalkGroupChat"

.field public static final Companion:Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;

.field private static final KEY_CHAT_ID:Ljava/lang/String; = "chatId"

.field private static final KEY_CHAT_TYPE:Ljava/lang/String; = "chatType"

.field private static final KEY_MEMBER_COUNT:Ljava/lang/String; = "memberCount"

.field private static final KEY_MEMBER_THUMBNAIL_IMAGE_URLS:Ljava/lang/String; = "memberThumbnailImageUrls"

.field private static final KEY_THUMBNAIL_IMAGE_URL:Ljava/lang/String; = "thumbnailImageUrl"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "KGKakaoTalkGroupChat"

.field private static final serialVersionUID:J = 0x56fb2d3aea5713dfL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoTalkGroupChat;->Companion:Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/partner/talk/model/Chat;)V
    .locals 3

    const v0, -0x451fe737

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 329
    invoke-direct {p0, v0, v1, v0}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 339
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x33642cb3

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x2253bb16

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lcom/kakao/sdk/partner/talk/model/Chat;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x2253813e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kakaogame/KGKakaoTalkGroupChat;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x6d0baf18

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p1}, Lcom/kakao/sdk/partner/talk/model/Chat;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/KGKakaoTalkGroupChat;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x543fad32

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p1}, Lcom/kakao/sdk/partner/talk/model/Chat;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/KGKakaoTalkGroupChat;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x33642dfb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-virtual {p1}, Lcom/kakao/sdk/partner/talk/model/Chat;->getMemberCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kakaogame/KGKakaoTalkGroupChat;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const v0, 0x22538046

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Lcom/kakao/sdk/partner/talk/model/Chat;->getDisplayMemberImages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/kakaogame/KGKakaoTalkGroupChat;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 419
    invoke-direct {p0, p1}, Lcom/kakaogame/KGObject;-><init>(Ljava/util/Map;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final loadGroupChats(IILcom/kakaogame/KGResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/kakaogame/KGResultCallback<",
            "Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/KGKakaoTalkGroupChat;->Companion:Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/kakaogame/KGKakaoTalkGroupChat$Companion;->loadGroupChats(IILcom/kakaogame/KGResultCallback;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getChatId()J
    .locals 2

    const v0, 0x2253813e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoTalkGroupChat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, 0x3364b21b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getChatType()Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatType;
    .locals 7

    const v0, -0x451fe547

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoTalkGroupChat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 919
    invoke-static {}, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatType;->values()[Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 929
    invoke-virtual {v4}, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatType;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 969
    :cond_1
    sget-object v0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatType;->Regular:Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMemberCount()I
    .locals 2

    const v0, 0x33642dfb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoTalkGroupChat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const v1, -0x2244dc24

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getMemberThumbnailImageUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x22538046

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoTalkGroupChat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getThumbnailImageUrl()Ljava/lang/String;
    .locals 1

    const v0, 0x543fad32

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoTalkGroupChat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x6d0baf18

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-virtual {p0, v0}, Lcom/kakaogame/KGKakaoTalkGroupChat;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method
