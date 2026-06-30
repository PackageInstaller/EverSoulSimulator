.class public final Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;
.super Ljava/lang/Object;
.source "Templates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/template/model/DefaultTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;",
        "",
        "()V",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/kakao/sdk/template/model/DefaultTemplate;",
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


# static fields
.field static final synthetic $$INSTANCE:Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;

    invoke-direct {v0}, Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;-><init>()V

    sput-object v0, Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;->$$INSTANCE:Lcom/kakao/sdk/template/model/DefaultTemplate$Companion;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/kakao/sdk/template/model/DefaultTemplate;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-string v1, "com.kakao.sdk.template.model.DefaultTemplate"

    const-class v0, Lcom/kakao/sdk/template/model/DefaultTemplate;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x6

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v4, Lcom/kakao/sdk/template/model/CalendarTemplate;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/kakao/sdk/template/model/CommerceTemplate;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-class v4, Lcom/kakao/sdk/template/model/FeedTemplate;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v3, v8

    const-class v4, Lcom/kakao/sdk/template/model/ListTemplate;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x3

    aput-object v4, v3, v9

    const-class v4, Lcom/kakao/sdk/template/model/LocationTemplate;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x4

    aput-object v4, v3, v10

    const-class v4, Lcom/kakao/sdk/template/model/TextTemplate;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v11, 0x5

    aput-object v4, v3, v11

    new-array v4, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lcom/kakao/sdk/template/model/CalendarTemplate$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/CalendarTemplate$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    aput-object v0, v4, v5

    sget-object v0, Lcom/kakao/sdk/template/model/CommerceTemplate$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/CommerceTemplate$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    aput-object v0, v4, v7

    sget-object v0, Lcom/kakao/sdk/template/model/FeedTemplate$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/FeedTemplate$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    aput-object v0, v4, v8

    sget-object v0, Lcom/kakao/sdk/template/model/ListTemplate$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/ListTemplate$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    aput-object v0, v4, v9

    sget-object v0, Lcom/kakao/sdk/template/model/LocationTemplate$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/LocationTemplate$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    aput-object v0, v4, v10

    sget-object v0, Lcom/kakao/sdk/template/model/TextTemplate$$serializer;->INSTANCE:Lcom/kakao/sdk/template/model/TextTemplate$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    aput-object v0, v4, v11

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    check-cast v6, Lkotlinx/serialization/KSerializer;

    return-object v6

    .array-data 1
    .end array-data
.end method
