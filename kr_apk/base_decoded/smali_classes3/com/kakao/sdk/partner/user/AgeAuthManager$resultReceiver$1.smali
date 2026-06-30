.class final Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AgeAuthManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/sdk/partner/user/AgeAuthManager;->resultReceiver(Lkotlin/jvm/functions/Function1;)Lcom/kakao/sdk/auth/UnitResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAgeAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AgeAuthManager.kt\ncom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n1#2:110\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "uri",
        "Landroid/net/Uri;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$1;

    invoke-direct {v0}, Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$1;-><init>()V

    sput-object v0, Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$1;->INSTANCE:Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$1;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 559
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/partner/user/AgeAuthManager$resultReceiver$1;->invoke(Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final invoke(Landroid/net/Uri;)Ljava/lang/Throwable;
    .locals 8

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    .line 599
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 609
    :goto_0
    invoke-static {}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->values()[Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->getStatus()I

    move-result v6

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    :goto_2
    move v6, v3

    :goto_3
    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v5, v0

    :goto_4
    if-eqz v5, :cond_5

    .line 619
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v5}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_5

    const-class v1, Lcom/kakao/sdk/common/model/Description;

    .line 629
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/model/Description;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/kakao/sdk/common/model/Description;->value()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-eqz v5, :cond_7

    if-nez v0, :cond_6

    goto :goto_5

    .line 689
    :cond_6
    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->Companion:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {v5}, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->getStatus()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , description "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->i(Ljava/lang/Object;)V

    .line 699
    new-instance p1, Lcom/kakao/sdk/partner/user/model/AgeAuthError;

    invoke-direct {p1, v5, v0}, Lcom/kakao/sdk/partner/user/model/AgeAuthError;-><init>(Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 659
    :cond_7
    :goto_5
    new-instance p1, Lcom/kakao/sdk/partner/user/model/AgeAuthError;

    sget-object v0, Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;->UNKNOWN:Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;

    const-string/jumbo v1, "unknown error"

    invoke-direct {p1, v0, v1}, Lcom/kakao/sdk/partner/user/model/AgeAuthError;-><init>(Lcom/kakao/sdk/partner/user/model/AgeAuthErrorCause;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
