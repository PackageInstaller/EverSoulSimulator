.class public final enum Lcom/singular/sdk/Attributes;
.super Ljava/lang/Enum;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singular/sdk/Attributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrAchievementId:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrContent:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrContentId:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrContentList:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrContentType:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrCountry:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrCouponCode:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrDeepLink:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrEventEnd:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrEventStart:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrFromDate:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrHotelScore:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrItemDescription:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrItemPrice:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrLevel:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrMax:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrNewVersion:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrOrigin:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrPaymentInfoAvailable:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrQuantity:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrRating:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrRegion:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrRegistrationMethod:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrReviewText:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrScore:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrSearchString:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrSubscriptionId:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrSuccess:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrToDate:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrTransactionId:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrTutorialId:Lcom/singular/sdk/Attributes;

.field public static final enum sngAttrValid:Lcom/singular/sdk/Attributes;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 49
    new-instance v0, Lcom/singular/sdk/Attributes;

    const-string v1, "sng_attr_from_date"

    const-string v2, "sngAttrFromDate"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/singular/sdk/Attributes;->sngAttrFromDate:Lcom/singular/sdk/Attributes;

    .line 59
    new-instance v1, Lcom/singular/sdk/Attributes;

    const-string v2, "sng_attr_to_date"

    const-string v4, "sngAttrToDate"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/singular/sdk/Attributes;->sngAttrToDate:Lcom/singular/sdk/Attributes;

    .line 69
    new-instance v2, Lcom/singular/sdk/Attributes;

    const-string v4, "sng_attr_achievement_id"

    const-string v6, "sngAttrAchievementId"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/singular/sdk/Attributes;->sngAttrAchievementId:Lcom/singular/sdk/Attributes;

    .line 79
    new-instance v4, Lcom/singular/sdk/Attributes;

    const-string v6, "sng_attr_content"

    const-string v8, "sngAttrContent"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/singular/sdk/Attributes;->sngAttrContent:Lcom/singular/sdk/Attributes;

    .line 89
    new-instance v6, Lcom/singular/sdk/Attributes;

    const-string v8, "sng_attr_content_id"

    const-string v10, "sngAttrContentId"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/singular/sdk/Attributes;->sngAttrContentId:Lcom/singular/sdk/Attributes;

    .line 99
    new-instance v8, Lcom/singular/sdk/Attributes;

    const-string v10, "sng_attr_content_list"

    const-string v12, "sngAttrContentList"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/singular/sdk/Attributes;->sngAttrContentList:Lcom/singular/sdk/Attributes;

    .line 109
    new-instance v10, Lcom/singular/sdk/Attributes;

    const-string v12, "sng_attr_content_type"

    const-string v14, "sngAttrContentType"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/singular/sdk/Attributes;->sngAttrContentType:Lcom/singular/sdk/Attributes;

    .line 119
    new-instance v12, Lcom/singular/sdk/Attributes;

    const-string v14, "sng_attr_coupon_code"

    const-string v15, "sngAttrCouponCode"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/singular/sdk/Attributes;->sngAttrCouponCode:Lcom/singular/sdk/Attributes;

    .line 129
    new-instance v14, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_deep_link"

    const-string v13, "sngAttrDeepLink"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/singular/sdk/Attributes;->sngAttrDeepLink:Lcom/singular/sdk/Attributes;

    .line 139
    new-instance v13, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_event_end"

    const-string v11, "sngAttrEventEnd"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/singular/sdk/Attributes;->sngAttrEventEnd:Lcom/singular/sdk/Attributes;

    .line 149
    new-instance v11, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_event_start"

    const-string v9, "sngAttrEventStart"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/singular/sdk/Attributes;->sngAttrEventStart:Lcom/singular/sdk/Attributes;

    .line 159
    new-instance v9, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_hotel_score"

    const-string v7, "sngAttrHotelScore"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/singular/sdk/Attributes;->sngAttrHotelScore:Lcom/singular/sdk/Attributes;

    .line 169
    new-instance v7, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_item_description"

    const-string v5, "sngAttrItemDescription"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/singular/sdk/Attributes;->sngAttrItemDescription:Lcom/singular/sdk/Attributes;

    .line 179
    new-instance v5, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_item_price"

    const-string v3, "sngAttrItemPrice"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Attributes;->sngAttrItemPrice:Lcom/singular/sdk/Attributes;

    .line 189
    new-instance v3, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_level"

    const-string v7, "sngAttrLevel"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Attributes;->sngAttrLevel:Lcom/singular/sdk/Attributes;

    .line 199
    new-instance v7, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_country"

    const-string v5, "sngAttrCountry"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/singular/sdk/Attributes;->sngAttrCountry:Lcom/singular/sdk/Attributes;

    .line 209
    new-instance v5, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_region"

    const-string v3, "sngAttrRegion"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Attributes;->sngAttrRegion:Lcom/singular/sdk/Attributes;

    .line 219
    new-instance v3, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_max"

    const-string v7, "sngAttrMax"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Attributes;->sngAttrMax:Lcom/singular/sdk/Attributes;

    .line 229
    new-instance v7, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_new_version"

    const-string v5, "sngAttrNewVersion"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v5, v3, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/singular/sdk/Attributes;->sngAttrNewVersion:Lcom/singular/sdk/Attributes;

    .line 239
    new-instance v5, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_origin"

    const-string v3, "sngAttrOrigin"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Attributes;->sngAttrOrigin:Lcom/singular/sdk/Attributes;

    .line 249
    new-instance v3, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_payment_info_available"

    const-string v7, "sngAttrPaymentInfoAvailable"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v3, v7, v5, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Attributes;->sngAttrPaymentInfoAvailable:Lcom/singular/sdk/Attributes;

    .line 259
    new-instance v7, Lcom/singular/sdk/Attributes;

    const-string v15, "sng_attr_quantity"

    const-string v5, "sngAttrQuantity"

    move-object/from16 v24, v3

    const/16 v3, 0x15

    invoke-direct {v7, v5, v3, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/singular/sdk/Attributes;->sngAttrQuantity:Lcom/singular/sdk/Attributes;

    .line 269
    new-instance v5, Lcom/singular/sdk/Attributes;

    const/16 v15, 0x16

    const-string v3, "sng_attr_rating"

    move-object/from16 v25, v7

    const-string v7, "sngAttrRating"

    invoke-direct {v5, v7, v15, v3}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Attributes;->sngAttrRating:Lcom/singular/sdk/Attributes;

    .line 279
    new-instance v3, Lcom/singular/sdk/Attributes;

    const/16 v7, 0x17

    const-string v15, "sng_attr_registration_method"

    move-object/from16 v26, v5

    const-string v5, "sngAttrRegistrationMethod"

    invoke-direct {v3, v5, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Attributes;->sngAttrRegistrationMethod:Lcom/singular/sdk/Attributes;

    .line 289
    new-instance v5, Lcom/singular/sdk/Attributes;

    const/16 v7, 0x18

    const-string v15, "sng_attr_review_text"

    move-object/from16 v27, v3

    const-string v3, "sngAttrReviewText"

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Attributes;->sngAttrReviewText:Lcom/singular/sdk/Attributes;

    .line 299
    new-instance v3, Lcom/singular/sdk/Attributes;

    const/16 v7, 0x19

    const-string v15, "sng_attr_score"

    move-object/from16 v28, v5

    const-string v5, "sngAttrScore"

    invoke-direct {v3, v5, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Attributes;->sngAttrScore:Lcom/singular/sdk/Attributes;

    .line 309
    new-instance v5, Lcom/singular/sdk/Attributes;

    const/16 v7, 0x1a

    const-string v15, "sng_attr_search_string"

    move-object/from16 v29, v3

    const-string v3, "sngAttrSearchString"

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Attributes;->sngAttrSearchString:Lcom/singular/sdk/Attributes;

    .line 319
    new-instance v3, Lcom/singular/sdk/Attributes;

    const/16 v7, 0x1b

    const-string v15, "sng_attr_subscription_id"

    move-object/from16 v30, v5

    const-string v5, "sngAttrSubscriptionId"

    invoke-direct {v3, v5, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Attributes;->sngAttrSubscriptionId:Lcom/singular/sdk/Attributes;

    .line 329
    new-instance v5, Lcom/singular/sdk/Attributes;

    const/16 v7, 0x1c

    const-string v15, "sng_attr_success"

    move-object/from16 v31, v3

    const-string v3, "sngAttrSuccess"

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Attributes;->sngAttrSuccess:Lcom/singular/sdk/Attributes;

    .line 339
    new-instance v3, Lcom/singular/sdk/Attributes;

    const/16 v7, 0x1d

    const-string v15, "sng_attr_transaction_id"

    move-object/from16 v32, v5

    const-string v5, "sngAttrTransactionId"

    invoke-direct {v3, v5, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Attributes;->sngAttrTransactionId:Lcom/singular/sdk/Attributes;

    .line 349
    new-instance v5, Lcom/singular/sdk/Attributes;

    const/16 v7, 0x1e

    const-string v15, "sng_attr_tutorial_id"

    move-object/from16 v33, v3

    const-string v3, "sngAttrTutorialId"

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Attributes;->sngAttrTutorialId:Lcom/singular/sdk/Attributes;

    .line 359
    new-instance v3, Lcom/singular/sdk/Attributes;

    const/16 v7, 0x1f

    const-string v15, "sng_attr_valid"

    move-object/from16 v34, v5

    const-string v5, "sngAttrValid"

    invoke-direct {v3, v5, v7, v15}, Lcom/singular/sdk/Attributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Attributes;->sngAttrValid:Lcom/singular/sdk/Attributes;

    const/16 v5, 0x20

    new-array v5, v5, [Lcom/singular/sdk/Attributes;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v26, v5, v0

    const/16 v0, 0x17

    aput-object v27, v5, v0

    const/16 v0, 0x18

    aput-object v28, v5, v0

    const/16 v0, 0x19

    aput-object v29, v5, v0

    const/16 v0, 0x1a

    aput-object v30, v5, v0

    const/16 v0, 0x1b

    aput-object v31, v5, v0

    const/16 v0, 0x1c

    aput-object v32, v5, v0

    const/16 v0, 0x1d

    aput-object v33, v5, v0

    const/16 v0, 0x1e

    aput-object v34, v5, v0

    const/16 v0, 0x1f

    aput-object v3, v5, v0

    .line 39
    sput-object v5, Lcom/singular/sdk/Attributes;->$VALUES:[Lcom/singular/sdk/Attributes;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 409
    iput-object p3, p0, Lcom/singular/sdk/Attributes;->name:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singular/sdk/Attributes;
    .locals 1

    .line 39
    const-class v0, Lcom/singular/sdk/Attributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singular/sdk/Attributes;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/singular/sdk/Attributes;
    .locals 1

    .line 39
    sget-object v0, Lcom/singular/sdk/Attributes;->$VALUES:[Lcom/singular/sdk/Attributes;

    invoke-virtual {v0}, [Lcom/singular/sdk/Attributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singular/sdk/Attributes;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/singular/sdk/Attributes;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/singular/sdk/Attributes;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
