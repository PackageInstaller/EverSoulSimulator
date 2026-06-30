.class public final enum Lcom/singular/sdk/Events;
.super Ljava/lang/Enum;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singular/sdk/Events;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singular/sdk/Events;

.field public static final enum sngAchievementUnlocked:Lcom/singular/sdk/Events;

.field public static final enum sngAddPaymentInfo:Lcom/singular/sdk/Events;

.field public static final enum sngAddToCart:Lcom/singular/sdk/Events;

.field public static final enum sngAddToWishlist:Lcom/singular/sdk/Events;

.field public static final enum sngBook:Lcom/singular/sdk/Events;

.field public static final enum sngCheckoutInitiated:Lcom/singular/sdk/Events;

.field public static final enum sngCompleteRegistration:Lcom/singular/sdk/Events;

.field public static final enum sngContentView:Lcom/singular/sdk/Events;

.field public static final enum sngContentViewList:Lcom/singular/sdk/Events;

.field public static final enum sngEcommercePurchase:Lcom/singular/sdk/Events;

.field public static final enum sngInvite:Lcom/singular/sdk/Events;

.field public static final enum sngLevelAchieved:Lcom/singular/sdk/Events;

.field public static final enum sngLogin:Lcom/singular/sdk/Events;

.field public static final enum sngRate:Lcom/singular/sdk/Events;

.field public static final enum sngSearch:Lcom/singular/sdk/Events;

.field public static final enum sngShare:Lcom/singular/sdk/Events;

.field public static final enum sngSpentCredits:Lcom/singular/sdk/Events;

.field public static final enum sngStartTrial:Lcom/singular/sdk/Events;

.field public static final enum sngSubmitApplication:Lcom/singular/sdk/Events;

.field public static final enum sngSubscribe:Lcom/singular/sdk/Events;

.field public static final enum sngTutorialComplete:Lcom/singular/sdk/Events;

.field public static final enum sngUpdate:Lcom/singular/sdk/Events;

.field public static final enum sngViewCart:Lcom/singular/sdk/Events;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 49
    new-instance v0, Lcom/singular/sdk/Events;

    const-string v1, "sng_rate"

    const-string v2, "sngRate"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/singular/sdk/Events;->sngRate:Lcom/singular/sdk/Events;

    .line 59
    new-instance v1, Lcom/singular/sdk/Events;

    const-string v2, "sng_spent_credits"

    const-string v4, "sngSpentCredits"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/singular/sdk/Events;->sngSpentCredits:Lcom/singular/sdk/Events;

    .line 69
    new-instance v2, Lcom/singular/sdk/Events;

    const-string v4, "sng_tutorial_complete"

    const-string v6, "sngTutorialComplete"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/singular/sdk/Events;->sngTutorialComplete:Lcom/singular/sdk/Events;

    .line 79
    new-instance v4, Lcom/singular/sdk/Events;

    const-string v6, "sng_login"

    const-string v8, "sngLogin"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/singular/sdk/Events;->sngLogin:Lcom/singular/sdk/Events;

    .line 89
    new-instance v6, Lcom/singular/sdk/Events;

    const-string v8, "sng_start_trial"

    const-string v10, "sngStartTrial"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/singular/sdk/Events;->sngStartTrial:Lcom/singular/sdk/Events;

    .line 99
    new-instance v8, Lcom/singular/sdk/Events;

    const-string v10, "sng_subscribe"

    const-string v12, "sngSubscribe"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/singular/sdk/Events;->sngSubscribe:Lcom/singular/sdk/Events;

    .line 109
    new-instance v10, Lcom/singular/sdk/Events;

    const-string v12, "sng_book"

    const-string v14, "sngBook"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/singular/sdk/Events;->sngBook:Lcom/singular/sdk/Events;

    .line 119
    new-instance v12, Lcom/singular/sdk/Events;

    const-string v14, "sng_content_view_list"

    const-string v15, "sngContentViewList"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/singular/sdk/Events;->sngContentViewList:Lcom/singular/sdk/Events;

    .line 129
    new-instance v14, Lcom/singular/sdk/Events;

    const-string v15, "sng_invite"

    const-string v13, "sngInvite"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/singular/sdk/Events;->sngInvite:Lcom/singular/sdk/Events;

    .line 139
    new-instance v13, Lcom/singular/sdk/Events;

    const-string v15, "sng_share"

    const-string v11, "sngShare"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/singular/sdk/Events;->sngShare:Lcom/singular/sdk/Events;

    .line 149
    new-instance v11, Lcom/singular/sdk/Events;

    const-string v15, "sng_submit_application"

    const-string v9, "sngSubmitApplication"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/singular/sdk/Events;->sngSubmitApplication:Lcom/singular/sdk/Events;

    .line 159
    new-instance v9, Lcom/singular/sdk/Events;

    const-string v15, "sng_update"

    const-string v7, "sngUpdate"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/singular/sdk/Events;->sngUpdate:Lcom/singular/sdk/Events;

    .line 169
    new-instance v7, Lcom/singular/sdk/Events;

    const-string v15, "sng_ecommerce_purchase"

    const-string v5, "sngEcommercePurchase"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/singular/sdk/Events;->sngEcommercePurchase:Lcom/singular/sdk/Events;

    .line 179
    new-instance v5, Lcom/singular/sdk/Events;

    const-string v15, "sng_view_cart"

    const-string v3, "sngViewCart"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Events;->sngViewCart:Lcom/singular/sdk/Events;

    .line 189
    new-instance v3, Lcom/singular/sdk/Events;

    const-string v15, "sng_achievement_unlocked"

    const-string v7, "sngAchievementUnlocked"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Events;->sngAchievementUnlocked:Lcom/singular/sdk/Events;

    .line 199
    new-instance v7, Lcom/singular/sdk/Events;

    const-string v15, "sng_add_payment_info"

    const-string v5, "sngAddPaymentInfo"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/singular/sdk/Events;->sngAddPaymentInfo:Lcom/singular/sdk/Events;

    .line 209
    new-instance v5, Lcom/singular/sdk/Events;

    const-string v15, "sng_add_to_cart"

    const-string v3, "sngAddToCart"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Events;->sngAddToCart:Lcom/singular/sdk/Events;

    .line 219
    new-instance v3, Lcom/singular/sdk/Events;

    const-string v15, "sng_add_to_wishlist"

    const-string v7, "sngAddToWishlist"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Events;->sngAddToWishlist:Lcom/singular/sdk/Events;

    .line 229
    new-instance v7, Lcom/singular/sdk/Events;

    const-string v15, "sng_checkout_initiated"

    const-string v5, "sngCheckoutInitiated"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v5, v3, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/singular/sdk/Events;->sngCheckoutInitiated:Lcom/singular/sdk/Events;

    .line 239
    new-instance v5, Lcom/singular/sdk/Events;

    const-string v15, "sng_complete_registration"

    const-string v3, "sngCompleteRegistration"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v7, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Events;->sngCompleteRegistration:Lcom/singular/sdk/Events;

    .line 249
    new-instance v3, Lcom/singular/sdk/Events;

    const-string v15, "sng_content_view"

    const-string v7, "sngContentView"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v3, v7, v5, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/singular/sdk/Events;->sngContentView:Lcom/singular/sdk/Events;

    .line 259
    new-instance v7, Lcom/singular/sdk/Events;

    const-string v15, "sng_level_achieved"

    const-string v5, "sngLevelAchieved"

    move-object/from16 v24, v3

    const/16 v3, 0x15

    invoke-direct {v7, v5, v3, v15}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/singular/sdk/Events;->sngLevelAchieved:Lcom/singular/sdk/Events;

    .line 269
    new-instance v5, Lcom/singular/sdk/Events;

    const/16 v15, 0x16

    const-string v3, "sng_search"

    move-object/from16 v25, v7

    const-string v7, "sngSearch"

    invoke-direct {v5, v7, v15, v3}, Lcom/singular/sdk/Events;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/singular/sdk/Events;->sngSearch:Lcom/singular/sdk/Events;

    const/16 v3, 0x17

    new-array v3, v3, [Lcom/singular/sdk/Events;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v21, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    const/16 v0, 0x13

    aput-object v23, v3, v0

    const/16 v0, 0x14

    aput-object v24, v3, v0

    const/16 v0, 0x15

    aput-object v25, v3, v0

    const/16 v0, 0x16

    aput-object v5, v3, v0

    .line 39
    sput-object v3, Lcom/singular/sdk/Events;->$VALUES:[Lcom/singular/sdk/Events;

    return-void

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

    .line 309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 319
    iput-object p3, p0, Lcom/singular/sdk/Events;->name:Ljava/lang/String;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singular/sdk/Events;
    .locals 1

    .line 39
    const-class v0, Lcom/singular/sdk/Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singular/sdk/Events;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/singular/sdk/Events;
    .locals 1

    .line 39
    sget-object v0, Lcom/singular/sdk/Events;->$VALUES:[Lcom/singular/sdk/Events;

    invoke-virtual {v0}, [Lcom/singular/sdk/Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singular/sdk/Events;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/singular/sdk/Events;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/singular/sdk/Events;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
