.class public final enum Lcom/google/api/FieldBehavior;
.super Ljava/lang/Enum;
.source "FieldBehavior.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/FieldBehavior$FieldBehaviorVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/FieldBehavior;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/FieldBehavior;

.field public static final enum FIELD_BEHAVIOR_UNSPECIFIED:Lcom/google/api/FieldBehavior;

.field public static final FIELD_BEHAVIOR_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum IMMUTABLE:Lcom/google/api/FieldBehavior;

.field public static final IMMUTABLE_VALUE:I = 0x5

.field public static final enum INPUT_ONLY:Lcom/google/api/FieldBehavior;

.field public static final INPUT_ONLY_VALUE:I = 0x4

.field public static final enum OPTIONAL:Lcom/google/api/FieldBehavior;

.field public static final OPTIONAL_VALUE:I = 0x1

.field public static final enum OUTPUT_ONLY:Lcom/google/api/FieldBehavior;

.field public static final OUTPUT_ONLY_VALUE:I = 0x3

.field public static final enum REQUIRED:Lcom/google/api/FieldBehavior;

.field public static final REQUIRED_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/google/api/FieldBehavior;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/api/FieldBehavior;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 26
    new-instance v0, Lcom/google/api/FieldBehavior;

    const-string v1, "FIELD_BEHAVIOR_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/FieldBehavior;->FIELD_BEHAVIOR_UNSPECIFIED:Lcom/google/api/FieldBehavior;

    .line 36
    new-instance v1, Lcom/google/api/FieldBehavior;

    const-string v3, "OPTIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/FieldBehavior;->OPTIONAL:Lcom/google/api/FieldBehavior;

    .line 46
    new-instance v3, Lcom/google/api/FieldBehavior;

    const-string v5, "REQUIRED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/api/FieldBehavior;->REQUIRED:Lcom/google/api/FieldBehavior;

    .line 57
    new-instance v5, Lcom/google/api/FieldBehavior;

    const-string v7, "OUTPUT_ONLY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/api/FieldBehavior;->OUTPUT_ONLY:Lcom/google/api/FieldBehavior;

    .line 67
    new-instance v7, Lcom/google/api/FieldBehavior;

    const-string v9, "INPUT_ONLY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/api/FieldBehavior;->INPUT_ONLY:Lcom/google/api/FieldBehavior;

    .line 77
    new-instance v9, Lcom/google/api/FieldBehavior;

    const-string v11, "IMMUTABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/api/FieldBehavior;->IMMUTABLE:Lcom/google/api/FieldBehavior;

    .line 78
    new-instance v11, Lcom/google/api/FieldBehavior;

    const/4 v13, -0x1

    const-string v14, "UNRECOGNIZED"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13}, Lcom/google/api/FieldBehavior;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/api/FieldBehavior;->UNRECOGNIZED:Lcom/google/api/FieldBehavior;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/api/FieldBehavior;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v15

    .line 17
    sput-object v13, Lcom/google/api/FieldBehavior;->$VALUES:[Lcom/google/api/FieldBehavior;

    .line 178
    new-instance v0, Lcom/google/api/FieldBehavior$1;

    invoke-direct {v0}, Lcom/google/api/FieldBehavior$1;-><init>()V

    sput-object v0, Lcom/google/api/FieldBehavior;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 203
    iput p3, p0, Lcom/google/api/FieldBehavior;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static forNumber(I)Lcom/google/api/FieldBehavior;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    sget-object p0, Lcom/google/api/FieldBehavior;->IMMUTABLE:Lcom/google/api/FieldBehavior;

    return-object p0

    .line 167
    :cond_1
    sget-object p0, Lcom/google/api/FieldBehavior;->INPUT_ONLY:Lcom/google/api/FieldBehavior;

    return-object p0

    .line 166
    :cond_2
    sget-object p0, Lcom/google/api/FieldBehavior;->OUTPUT_ONLY:Lcom/google/api/FieldBehavior;

    return-object p0

    .line 165
    :cond_3
    sget-object p0, Lcom/google/api/FieldBehavior;->REQUIRED:Lcom/google/api/FieldBehavior;

    return-object p0

    .line 164
    :cond_4
    sget-object p0, Lcom/google/api/FieldBehavior;->OPTIONAL:Lcom/google/api/FieldBehavior;

    return-object p0

    .line 163
    :cond_5
    sget-object p0, Lcom/google/api/FieldBehavior;->FIELD_BEHAVIOR_UNSPECIFIED:Lcom/google/api/FieldBehavior;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/api/FieldBehavior;",
            ">;"
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/google/api/FieldBehavior;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 188
    sget-object v0, Lcom/google/api/FieldBehavior$FieldBehaviorVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(I)Lcom/google/api/FieldBehavior;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-static {p0}, Lcom/google/api/FieldBehavior;->forNumber(I)Lcom/google/api/FieldBehavior;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/FieldBehavior;
    .locals 1

    .line 17
    const-class v0, Lcom/google/api/FieldBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/FieldBehavior;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/google/api/FieldBehavior;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/api/FieldBehavior;->$VALUES:[Lcom/google/api/FieldBehavior;

    invoke-virtual {v0}, [Lcom/google/api/FieldBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/FieldBehavior;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 144
    sget-object v0, Lcom/google/api/FieldBehavior;->UNRECOGNIZED:Lcom/google/api/FieldBehavior;

    if-eq p0, v0, :cond_0

    .line 148
    iget v0, p0, Lcom/google/api/FieldBehavior;->value:I

    return v0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method
