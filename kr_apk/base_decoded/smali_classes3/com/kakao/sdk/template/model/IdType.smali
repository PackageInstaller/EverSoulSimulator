.class public final enum Lcom/kakao/sdk/template/model/IdType;
.super Ljava/lang/Enum;
.source "Templates.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/template/model/IdType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/template/model/IdType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0087\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakao/sdk/template/model/IdType;",
        "",
        "(Ljava/lang/String;I)V",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
        "EVENT",
        "CALENDAR",
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/template/model/IdType;

.field private static final $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final enum CALENDAR:Lcom/kakao/sdk/template/model/IdType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "calendar"
    .end annotation
.end field

.field public static final Companion:Lcom/kakao/sdk/template/model/IdType$Companion;

.field public static final enum EVENT:Lcom/kakao/sdk/template/model/IdType;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "event"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/template/model/IdType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakao/sdk/template/model/IdType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/template/model/IdType;->EVENT:Lcom/kakao/sdk/template/model/IdType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/template/model/IdType;->CALENDAR:Lcom/kakao/sdk/template/model/IdType;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1839
    new-instance v0, Lcom/kakao/sdk/template/model/IdType;

    const-string v1, "EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/template/model/IdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/template/model/IdType;->EVENT:Lcom/kakao/sdk/template/model/IdType;

    .line 1879
    new-instance v0, Lcom/kakao/sdk/template/model/IdType;

    const-string v1, "CALENDAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/template/model/IdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/template/model/IdType;->CALENDAR:Lcom/kakao/sdk/template/model/IdType;

    invoke-static {}, Lcom/kakao/sdk/template/model/IdType;->$values()[Lcom/kakao/sdk/template/model/IdType;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/template/model/IdType;->$VALUES:[Lcom/kakao/sdk/template/model/IdType;

    new-instance v0, Lcom/kakao/sdk/template/model/IdType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/template/model/IdType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/template/model/IdType;->Companion:Lcom/kakao/sdk/template/model/IdType$Companion;

    .line 1809
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/kakao/sdk/template/model/IdType$Companion$$cachedSerializer$delegate$1;->INSTANCE:Lcom/kakao/sdk/template/model/IdType$Companion$$cachedSerializer$delegate$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/template/model/IdType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1809
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1809
    sget-object v0, Lcom/kakao/sdk/template/model/IdType;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/template/model/IdType;
    .locals 1

    const-class v0, Lcom/kakao/sdk/template/model/IdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/template/model/IdType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/template/model/IdType;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/template/model/IdType;->$VALUES:[Lcom/kakao/sdk/template/model/IdType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/template/model/IdType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 2

    .line 1919
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakao/sdk/template/model/IdType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Lkotlinx/serialization/SerialName;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/serialization/SerialName;

    invoke-interface {v0}, Lkotlinx/serialization/SerialName;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
