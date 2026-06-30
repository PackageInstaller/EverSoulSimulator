.class public final enum Lcom/google/type/DayOfWeek;
.super Ljava/lang/Enum;
.source "DayOfWeek.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/DayOfWeek$DayOfWeekVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/type/DayOfWeek;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/type/DayOfWeek;

.field public static final enum DAY_OF_WEEK_UNSPECIFIED:Lcom/google/type/DayOfWeek;

.field public static final DAY_OF_WEEK_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum FRIDAY:Lcom/google/type/DayOfWeek;

.field public static final FRIDAY_VALUE:I = 0x5

.field public static final enum MONDAY:Lcom/google/type/DayOfWeek;

.field public static final MONDAY_VALUE:I = 0x1

.field public static final enum SATURDAY:Lcom/google/type/DayOfWeek;

.field public static final SATURDAY_VALUE:I = 0x6

.field public static final enum SUNDAY:Lcom/google/type/DayOfWeek;

.field public static final SUNDAY_VALUE:I = 0x7

.field public static final enum THURSDAY:Lcom/google/type/DayOfWeek;

.field public static final THURSDAY_VALUE:I = 0x4

.field public static final enum TUESDAY:Lcom/google/type/DayOfWeek;

.field public static final TUESDAY_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/google/type/DayOfWeek;

.field public static final enum WEDNESDAY:Lcom/google/type/DayOfWeek;

.field public static final WEDNESDAY_VALUE:I = 0x3

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/type/DayOfWeek;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 22
    new-instance v0, Lcom/google/type/DayOfWeek;

    const-string v1, "DAY_OF_WEEK_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/type/DayOfWeek;->DAY_OF_WEEK_UNSPECIFIED:Lcom/google/type/DayOfWeek;

    .line 30
    new-instance v1, Lcom/google/type/DayOfWeek;

    const-string v3, "MONDAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/type/DayOfWeek;->MONDAY:Lcom/google/type/DayOfWeek;

    .line 38
    new-instance v3, Lcom/google/type/DayOfWeek;

    const-string v5, "TUESDAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/type/DayOfWeek;->TUESDAY:Lcom/google/type/DayOfWeek;

    .line 46
    new-instance v5, Lcom/google/type/DayOfWeek;

    const-string v7, "WEDNESDAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/type/DayOfWeek;->WEDNESDAY:Lcom/google/type/DayOfWeek;

    .line 54
    new-instance v7, Lcom/google/type/DayOfWeek;

    const-string v9, "THURSDAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/type/DayOfWeek;->THURSDAY:Lcom/google/type/DayOfWeek;

    .line 62
    new-instance v9, Lcom/google/type/DayOfWeek;

    const-string v11, "FRIDAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/type/DayOfWeek;->FRIDAY:Lcom/google/type/DayOfWeek;

    .line 70
    new-instance v11, Lcom/google/type/DayOfWeek;

    const-string v13, "SATURDAY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/type/DayOfWeek;->SATURDAY:Lcom/google/type/DayOfWeek;

    .line 78
    new-instance v13, Lcom/google/type/DayOfWeek;

    const-string v15, "SUNDAY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/type/DayOfWeek;->SUNDAY:Lcom/google/type/DayOfWeek;

    .line 79
    new-instance v15, Lcom/google/type/DayOfWeek;

    const/4 v14, -0x1

    const-string v12, "UNRECOGNIZED"

    const/16 v10, 0x8

    invoke-direct {v15, v12, v10, v14}, Lcom/google/type/DayOfWeek;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/type/DayOfWeek;->UNRECOGNIZED:Lcom/google/type/DayOfWeek;

    const/16 v12, 0x9

    new-array v12, v12, [Lcom/google/type/DayOfWeek;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    aput-object v15, v12, v10

    .line 13
    sput-object v12, Lcom/google/type/DayOfWeek;->$VALUES:[Lcom/google/type/DayOfWeek;

    .line 186
    new-instance v0, Lcom/google/type/DayOfWeek$1;

    invoke-direct {v0}, Lcom/google/type/DayOfWeek$1;-><init>()V

    sput-object v0, Lcom/google/type/DayOfWeek;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 211
    iput p3, p0, Lcom/google/type/DayOfWeek;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static forNumber(I)Lcom/google/type/DayOfWeek;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 176
    :pswitch_0
    sget-object p0, Lcom/google/type/DayOfWeek;->SUNDAY:Lcom/google/type/DayOfWeek;

    return-object p0

    .line 175
    :pswitch_1
    sget-object p0, Lcom/google/type/DayOfWeek;->SATURDAY:Lcom/google/type/DayOfWeek;

    return-object p0

    .line 174
    :pswitch_2
    sget-object p0, Lcom/google/type/DayOfWeek;->FRIDAY:Lcom/google/type/DayOfWeek;

    return-object p0

    .line 173
    :pswitch_3
    sget-object p0, Lcom/google/type/DayOfWeek;->THURSDAY:Lcom/google/type/DayOfWeek;

    return-object p0

    .line 172
    :pswitch_4
    sget-object p0, Lcom/google/type/DayOfWeek;->WEDNESDAY:Lcom/google/type/DayOfWeek;

    return-object p0

    .line 171
    :pswitch_5
    sget-object p0, Lcom/google/type/DayOfWeek;->TUESDAY:Lcom/google/type/DayOfWeek;

    return-object p0

    .line 170
    :pswitch_6
    sget-object p0, Lcom/google/type/DayOfWeek;->MONDAY:Lcom/google/type/DayOfWeek;

    return-object p0

    .line 169
    :pswitch_7
    sget-object p0, Lcom/google/type/DayOfWeek;->DAY_OF_WEEK_UNSPECIFIED:Lcom/google/type/DayOfWeek;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/type/DayOfWeek;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/type/DayOfWeek;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 196
    sget-object v0, Lcom/google/type/DayOfWeek$DayOfWeekVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(I)Lcom/google/type/DayOfWeek;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-static {p0}, Lcom/google/type/DayOfWeek;->forNumber(I)Lcom/google/type/DayOfWeek;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/type/DayOfWeek;
    .locals 1

    .line 13
    const-class v0, Lcom/google/type/DayOfWeek;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/type/DayOfWeek;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/google/type/DayOfWeek;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/type/DayOfWeek;->$VALUES:[Lcom/google/type/DayOfWeek;

    invoke-virtual {v0}, [Lcom/google/type/DayOfWeek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/type/DayOfWeek;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 150
    sget-object v0, Lcom/google/type/DayOfWeek;->UNRECOGNIZED:Lcom/google/type/DayOfWeek;

    if-eq p0, v0, :cond_0

    .line 154
    iget v0, p0, Lcom/google/type/DayOfWeek;->value:I

    return v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    .array-data 1
    .end array-data
.end method
