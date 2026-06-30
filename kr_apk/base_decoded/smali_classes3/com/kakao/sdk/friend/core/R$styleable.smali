.class public final Lcom/kakao/sdk/friend/core/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/friend/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SideIndexView:[I

.field public static final SideIndexView_sideindex_text_color:I = 0x0

.field public static final SideIndexView_sideindex_text_size:I = 0x1

.field public static final SquircleBorderImageView:[I

.field public static final SquircleBorderImageView_squircle_borderColor:I = 0x0

.field public static final SquircleBorderImageView_squircle_borderWidth:I = 0x1

.field public static final SquircleBorderImageView_squircle_fillColor:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kakao/sdk/friend/core/R$styleable;->SideIndexView:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kakao/sdk/friend/core/R$styleable;->SquircleBorderImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04040c
        0x7f04040d
    .end array-data

    :array_1
    .array-data 4
        0x7f040424
        0x7f040425
        0x7f040426
    .end array-data

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
