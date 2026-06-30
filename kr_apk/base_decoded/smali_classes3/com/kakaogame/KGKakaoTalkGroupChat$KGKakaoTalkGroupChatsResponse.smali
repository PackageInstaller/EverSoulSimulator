.class public final Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;
.super Ljava/lang/Object;
.source "KGKakaoTalkGroupChat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/KGKakaoTalkGroupChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KGKakaoTalkGroupChatsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKGKakaoTalkGroupChat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KGKakaoTalkGroupChat.kt\ncom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1863#2,2:246\n*S KotlinDebug\n*F\n+ 1 KGKakaoTalkGroupChat.kt\ncom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse\n*L\n117#1:246,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0011\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;",
        "",
        "totalCount",
        "",
        "<init>",
        "(I)V",
        "response",
        "Lcom/kakao/sdk/partner/talk/model/Chats;",
        "(Lcom/kakao/sdk/partner/talk/model/Chats;)V",
        "getTotalCount",
        "()I",
        "kakaoChatInfoList",
        "",
        "Lcom/kakaogame/KGKakaoTalkGroupChat;",
        "groupChats",
        "",
        "getGroupChats",
        "()Ljava/util/List;",
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
.field public static final Companion:Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse$Companion;


# instance fields
.field private final kakaoChatInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoTalkGroupChat;",
            ">;"
        }
    .end annotation
.end field

.field private final totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;->Companion:Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 1119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;->kakaoChatInfoList:Ljava/util/List;

    .line 1129
    iput p1, p0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;->totalCount:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;-><init>(I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/partner/talk/model/Chats;)V
    .locals 2

    const v0, 0x22538616

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;->kakaoChatInfoList:Ljava/util/List;

    .line 1169
    invoke-virtual {p1}, Lcom/kakao/sdk/partner/talk/model/Chats;->getTotalCount()I

    move-result v0

    iput v0, p0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;->totalCount:I

    .line 1179
    invoke-virtual {p1}, Lcom/kakao/sdk/partner/talk/model/Chats;->getElements()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    .line 2469
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/partner/talk/model/Chat;

    .line 1189
    new-instance v1, Lcom/kakaogame/KGKakaoTalkGroupChat;

    invoke-direct {v1, v0}, Lcom/kakaogame/KGKakaoTalkGroupChat;-><init>(Lcom/kakao/sdk/partner/talk/model/Chat;)V

    .line 1199
    iget-object v0, p0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;->kakaoChatInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getGroupChats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGKakaoTalkGroupChat;",
            ">;"
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;->kakaoChatInfoList:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTotalCount()I
    .locals 1

    .line 1089
    iget v0, p0, Lcom/kakaogame/KGKakaoTalkGroupChat$KGKakaoTalkGroupChatsResponse;->totalCount:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
