.class public final enum Lcom/kakao/sdk/auth/model/Prompt;
.super Ljava/lang/Enum;
.source "Prompt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakao/sdk/auth/model/Prompt;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/model/Prompt;",
        "",
        "(Ljava/lang/String;I)V",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
        "LOGIN",
        "CREATE",
        "SELECT_ACCOUNT",
        "CERT",
        "auth_release"
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
.field private static final synthetic $VALUES:[Lcom/kakao/sdk/auth/model/Prompt;

.field public static final enum CERT:Lcom/kakao/sdk/auth/model/Prompt;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "cert"
    .end annotation
.end field

.field public static final enum CREATE:Lcom/kakao/sdk/auth/model/Prompt;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "create"
    .end annotation
.end field

.field public static final enum LOGIN:Lcom/kakao/sdk/auth/model/Prompt;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "login"
    .end annotation
.end field

.field public static final enum SELECT_ACCOUNT:Lcom/kakao/sdk/auth/model/Prompt;
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "select_account"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/kakao/sdk/auth/model/Prompt;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kakao/sdk/auth/model/Prompt;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakao/sdk/auth/model/Prompt;->LOGIN:Lcom/kakao/sdk/auth/model/Prompt;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakao/sdk/auth/model/Prompt;->CREATE:Lcom/kakao/sdk/auth/model/Prompt;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakao/sdk/auth/model/Prompt;->SELECT_ACCOUNT:Lcom/kakao/sdk/auth/model/Prompt;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakao/sdk/auth/model/Prompt;->CERT:Lcom/kakao/sdk/auth/model/Prompt;

    aput-object v2, v0, v1

    return-object v0

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 279
    new-instance v0, Lcom/kakao/sdk/auth/model/Prompt;

    const-string v1, "LOGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/auth/model/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/auth/model/Prompt;->LOGIN:Lcom/kakao/sdk/auth/model/Prompt;

    .line 339
    new-instance v0, Lcom/kakao/sdk/auth/model/Prompt;

    const-string v1, "CREATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/auth/model/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/auth/model/Prompt;->CREATE:Lcom/kakao/sdk/auth/model/Prompt;

    .line 399
    new-instance v0, Lcom/kakao/sdk/auth/model/Prompt;

    const-string v1, "SELECT_ACCOUNT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/auth/model/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/auth/model/Prompt;->SELECT_ACCOUNT:Lcom/kakao/sdk/auth/model/Prompt;

    .line 469
    new-instance v0, Lcom/kakao/sdk/auth/model/Prompt;

    const-string v1, "CERT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kakao/sdk/auth/model/Prompt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/sdk/auth/model/Prompt;->CERT:Lcom/kakao/sdk/auth/model/Prompt;

    invoke-static {}, Lcom/kakao/sdk/auth/model/Prompt;->$values()[Lcom/kakao/sdk/auth/model/Prompt;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/model/Prompt;->$VALUES:[Lcom/kakao/sdk/auth/model/Prompt;

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

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/sdk/auth/model/Prompt;
    .locals 1

    const-class v0, Lcom/kakao/sdk/auth/model/Prompt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kakao/sdk/auth/model/Prompt;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakao/sdk/auth/model/Prompt;
    .locals 1

    sget-object v0, Lcom/kakao/sdk/auth/model/Prompt;->$VALUES:[Lcom/kakao/sdk/auth/model/Prompt;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/sdk/auth/model/Prompt;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 2

    .line 509
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakao/sdk/auth/model/Prompt;->name()Ljava/lang/String;

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
