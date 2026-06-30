.class public abstract Lcom/kakao/sdk/friend/core/l/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/util/SparseArray;

.field public static final b:[Landroid/graphics/PointF;

.field public static final c:[Landroid/graphics/PointF;

.field public static final d:[Landroid/graphics/PointF;

.field public static final e:[Landroid/graphics/PointF;

.field public static final f:[Landroid/graphics/PointF;

.field public static final g:[Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kakao/sdk/friend/core/l/b0;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x40a0f1f0

    const v2, 0x41ed48d3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x40fb5d96

    const v3, 0x41d8302d

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x41100000    # 9.0f

    const v4, 0x41b54756    # 22.659832f

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v5, 0x41800000    # 16.0f

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v6, 0x41100000    # 9.0f

    const v7, 0x41157154    # 9.340168f

    invoke-direct {v4, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const v7, 0x40fb5d96

    const v8, 0x409f3f4e

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const v8, 0x40a0f1f0

    const v9, 0x4015b969

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const v9, 0x40f1608f

    const v10, 0x3f31fc6c

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const v10, 0x4131d848

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v5, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const v13, 0x41df1358

    invoke-direct {v12, v13, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const v14, 0x4083b2a2

    const/high16 v15, 0x42000000    # 32.0f

    invoke-direct {v13, v15, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v15, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const v5, 0x41df1358

    invoke-direct {v11, v15, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    move-object/from16 v17, v11

    const v11, 0x41df1358

    invoke-direct {v5, v11, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    move-object/from16 v18, v5

    const/high16 v5, 0x41800000    # 16.0f

    invoke-direct {v11, v5, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    move-object/from16 v16, v11

    const v11, 0x4131d848

    invoke-direct {v5, v11, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const v15, 0x40f1608f

    move-object/from16 v19, v5

    const v5, 0x41fa701d

    invoke-direct {v11, v15, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const v15, 0x40a0f1f0

    move-object/from16 v20, v11

    const v11, 0x41ed48d3

    invoke-direct {v5, v15, v11}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v11, 0x13

    new-array v11, v11, [Landroid/graphics/PointF;

    const/4 v15, 0x0

    aput-object v0, v11, v15

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v1, 0x2

    aput-object v2, v11, v1

    const/4 v2, 0x3

    aput-object v3, v11, v2

    const/4 v3, 0x4

    aput-object v4, v11, v3

    const/4 v4, 0x5

    aput-object v6, v11, v4

    const/4 v6, 0x6

    aput-object v7, v11, v6

    const/4 v7, 0x7

    aput-object v8, v11, v7

    const/16 v8, 0x8

    aput-object v9, v11, v8

    const/16 v9, 0x9

    aput-object v10, v11, v9

    const/16 v10, 0xa

    aput-object v12, v11, v10

    const/16 v12, 0xb

    aput-object v13, v11, v12

    const/16 v13, 0xc

    aput-object v14, v11, v13

    const/16 v14, 0xd

    aput-object v17, v11, v14

    const/16 v17, 0xe

    aput-object v18, v11, v17

    const/16 v18, 0xf

    aput-object v16, v11, v18

    const/16 v16, 0x10

    aput-object v19, v11, v16

    const/16 v16, 0x11

    aput-object v20, v11, v16

    const/16 v16, 0x12

    aput-object v5, v11, v16

    sput-object v11, Lcom/kakao/sdk/friend/core/l/b0;->b:[Landroid/graphics/PointF;

    new-instance v5, Landroid/graphics/PointF;

    const v11, 0x43bfe873

    const v14, 0x434e5852

    invoke-direct {v5, v11, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const v14, 0x43872ae1

    const v13, 0x4357fd71    # 215.99f

    invoke-direct {v11, v14, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const v14, 0x4357e419

    const v12, 0x43879bc7

    invoke-direct {v13, v14, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const v14, 0x434e574c

    const v10, 0x43bfe873

    invoke-direct {v12, v14, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const v14, 0x4349ab02    # 201.668f

    const v9, 0x43bff831

    invoke-direct {v10, v14, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const v14, 0x4344e354    # 196.888f

    const v8, 0x43bfffdf

    invoke-direct {v9, v14, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v14, 0x43400000    # 192.0f

    const v7, 0x43bfffdf

    invoke-direct {v8, v14, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const v14, 0x424aab02    # 50.667f

    const v6, 0x43bfffdf

    invoke-direct {v7, v14, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const v14, 0x43a6aa7f    # 333.332f

    const/4 v4, 0x0

    invoke-direct {v6, v4, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    const v3, 0x433fffbe

    invoke-direct {v14, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    const v2, 0x425ffefa    # 55.999f

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const v4, 0x424aaab3

    const v1, -0x457ced91    # -0.001f

    invoke-direct {v2, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v4, 0x43400000    # 192.0f

    const v0, -0x457ced91    # -0.001f

    invoke-direct {v1, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    const v4, -0x457ced91    # -0.001f

    const v15, 0x43a6aaa0

    invoke-direct {v0, v15, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    const v15, 0x424aa9ad

    move-object/from16 v22, v0

    const/high16 v0, 0x43c00000    # 384.0f

    invoke-direct {v4, v0, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v15, Landroid/graphics/PointF;

    move-object/from16 v23, v4

    const v4, 0x433fffbe

    invoke-direct {v15, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    move-object/from16 v24, v15

    const v15, 0x4344e396

    invoke-direct {v4, v0, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v15, Landroid/graphics/PointF;

    const v0, 0x43bff831

    move-object/from16 v25, v4

    const v4, 0x4349ab85    # 201.67f

    invoke-direct {v15, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    const v4, 0x43bfe873

    move-object/from16 v26, v15

    const v15, 0x434e5810

    invoke-direct {v0, v4, v15}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v4, 0x13

    new-array v4, v4, [Landroid/graphics/PointF;

    const/4 v15, 0x0

    aput-object v5, v4, v15

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x2

    aput-object v13, v4, v5

    const/4 v5, 0x3

    aput-object v12, v4, v5

    const/4 v5, 0x4

    aput-object v10, v4, v5

    const/4 v5, 0x5

    aput-object v9, v4, v5

    const/4 v5, 0x6

    aput-object v8, v4, v5

    const/4 v5, 0x7

    aput-object v7, v4, v5

    const/16 v5, 0x8

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object v14, v4, v5

    const/16 v5, 0xa

    aput-object v3, v4, v5

    const/16 v3, 0xb

    aput-object v2, v4, v3

    const/16 v2, 0xc

    aput-object v1, v4, v2

    const/16 v1, 0xd

    aput-object v22, v4, v1

    aput-object v23, v4, v17

    const/16 v1, 0xf

    aput-object v24, v4, v1

    const/16 v1, 0x10

    aput-object v25, v4, v1

    const/16 v1, 0x11

    aput-object v26, v4, v1

    const/16 v1, 0x12

    aput-object v0, v4, v1

    sput-object v4, Lcom/kakao/sdk/friend/core/l/b0;->c:[Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x433d1f7d

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x435d7810

    const v3, 0x421bd8ae

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x438880c5

    const v4, 0x42686ace

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    const v4, 0x43adab23

    const v5, 0x4274233a

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    const v5, 0x43a5224e

    const v6, 0x42bd561e

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const v6, 0x43a11df4

    const v7, 0x430a0ccd    # 138.05f

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const v7, 0x43a11df4

    const v8, 0x433fff3b

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const v8, 0x43a11df4

    const v9, 0x437a68f6    # 250.41f

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const v9, 0x43a57f9e

    const v10, 0x4394053f

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const/high16 v10, 0x43af0000    # 350.0f

    const v11, 0x43a52f3b

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const v11, 0x43a04d50

    const v12, 0x43b83354    # 368.401f

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const v12, 0x438712f2

    const v13, 0x43c00021

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const v13, 0x433fce56    # 191.806f

    const v14, 0x43c00021

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const v14, 0x424a76c9

    const v15, 0x43c00021

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    move-object/from16 v22, v13

    const v13, 0x43a6aaa0

    const/4 v15, 0x0

    invoke-direct {v14, v15, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    move-object/from16 v23, v14

    const v14, 0x433fff7d

    invoke-direct {v13, v15, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    move-object/from16 v24, v13

    const v13, 0x426370a4    # 56.86f

    invoke-direct {v14, v15, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const v15, 0x4247e52c

    move-object/from16 v25, v14

    const v14, 0x3f35c28f    # 0.71f

    invoke-direct {v13, v15, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    const v15, 0x433d1f7d

    move-object/from16 v26, v13

    const v13, 0x3a83126f    # 0.001f

    invoke-direct {v14, v15, v13}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v13, 0x13

    new-array v13, v13, [Landroid/graphics/PointF;

    const/4 v15, 0x0

    aput-object v0, v13, v15

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v2, v13, v0

    const/4 v0, 0x3

    aput-object v3, v13, v0

    const/4 v0, 0x4

    aput-object v4, v13, v0

    const/4 v0, 0x5

    aput-object v5, v13, v0

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const/16 v0, 0x8

    aput-object v8, v13, v0

    const/16 v0, 0x9

    aput-object v9, v13, v0

    const/16 v0, 0xa

    aput-object v10, v13, v0

    const/16 v0, 0xb

    aput-object v11, v13, v0

    const/16 v0, 0xc

    aput-object v12, v13, v0

    const/16 v0, 0xd

    aput-object v22, v13, v0

    aput-object v23, v13, v17

    const/16 v0, 0xf

    aput-object v24, v13, v0

    const/16 v0, 0x10

    aput-object v25, v13, v0

    const/16 v0, 0x11

    aput-object v26, v13, v0

    const/16 v0, 0x12

    aput-object v14, v13, v0

    sput-object v13, Lcom/kakao/sdk/friend/core/l/b0;->d:[Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x433fff3b

    const/high16 v2, 0x43c00000    # 384.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    sput-object v2, Lcom/kakao/sdk/friend/core/l/b0;->e:[Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const v1, 0x4342af9e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x43a6fcee

    const v3, 0x3f245c79

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x424e3dbf

    const/high16 v4, 0x43c00000    # 384.0f

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    const v5, 0x433fff3b

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    const v6, 0x43a6aaa0

    invoke-direct {v5, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x43400000    # 192.0f

    invoke-direct {v8, v9, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    const v10, 0x424aab02    # 50.667f

    invoke-direct {v9, v10, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    const/4 v10, 0x0

    invoke-direct {v4, v10, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const v11, 0x433fff3b

    invoke-direct {v6, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    const v12, 0x4306e979

    invoke-direct {v11, v10, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const v12, 0x410ed2b3

    const v13, 0x42b7d78d

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const v13, 0x41ede5fe

    const/high16 v14, 0x42750000    # 61.25f

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const v14, 0x42d76148    # 107.69f

    const v15, 0x426cd23a

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    const v15, 0x43215cac    # 161.362f

    move-object/from16 v21, v13

    const v13, 0x4220657a

    invoke-direct {v14, v15, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const v15, 0x4342af9e

    move-object/from16 v22, v14

    const v14, -0x46ae48e9    # -2.0E-4f

    invoke-direct {v13, v15, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v14, 0x10

    new-array v14, v14, [Landroid/graphics/PointF;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v2, v14, v0

    const/4 v0, 0x3

    aput-object v3, v14, v0

    const/4 v0, 0x4

    aput-object v5, v14, v0

    const/4 v0, 0x5

    aput-object v7, v14, v0

    const/4 v0, 0x6

    aput-object v8, v14, v0

    const/4 v0, 0x7

    aput-object v9, v14, v0

    const/16 v0, 0x8

    aput-object v4, v14, v0

    const/16 v0, 0x9

    aput-object v6, v14, v0

    const/16 v0, 0xa

    aput-object v11, v14, v0

    const/16 v0, 0xb

    aput-object v10, v14, v0

    const/16 v0, 0xc

    aput-object v12, v14, v0

    const/16 v0, 0xd

    aput-object v21, v14, v0

    aput-object v22, v14, v17

    const/16 v0, 0xf

    aput-object v13, v14, v0

    sput-object v14, Lcom/kakao/sdk/friend/core/l/b0;->f:[Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x44070000    # 540.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    const v4, 0x428e8083    # 71.251f

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    const v5, 0x43ea6083

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    const v8, 0x428e8090

    invoke-direct {v7, v6, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    const v9, 0x428e8090

    invoke-direct {v8, v9, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v1, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v10, Landroid/graphics/PointF;

    const v11, 0x43ea6083

    invoke-direct {v10, v11, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    const v11, 0x428e8090

    invoke-direct {v6, v2, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    const v13, 0x43ea6083

    invoke-direct {v12, v2, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    const v14, 0x43ea6083

    invoke-direct {v13, v14, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v1, 0xd

    new-array v1, v1, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v0, 0x2

    aput-object v4, v1, v0

    const/4 v0, 0x3

    aput-object v5, v1, v0

    const/4 v0, 0x4

    aput-object v7, v1, v0

    const/4 v0, 0x5

    aput-object v8, v1, v0

    const/4 v0, 0x6

    aput-object v9, v1, v0

    const/4 v0, 0x7

    aput-object v10, v1, v0

    const/16 v0, 0x8

    aput-object v6, v1, v0

    const/16 v0, 0x9

    aput-object v11, v1, v0

    const/16 v0, 0xa

    aput-object v12, v1, v0

    const/16 v0, 0xb

    aput-object v13, v1, v0

    const/16 v0, 0xc

    aput-object v14, v1, v0

    sput-object v1, Lcom/kakao/sdk/friend/core/l/b0;->g:[Landroid/graphics/PointF;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final a(I)Landroid/graphics/Path;
    .locals 18

    move/from16 v0, p0

    sget-object v1, Lcom/kakao/sdk/friend/core/l/b0;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 19
    sget-object v6, Lcom/kakao/sdk/friend/core/l/b0;->g:[Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/kakao/sdk/friend/core/l/b0;->b:[Landroid/graphics/PointF;

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/kakao/sdk/friend/core/l/b0;->f:[Landroid/graphics/PointF;

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/kakao/sdk/friend/core/l/b0;->d:[Landroid/graphics/PointF;

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/kakao/sdk/friend/core/l/b0;->c:[Landroid/graphics/PointF;

    :goto_0
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    const/4 v15, 0x0

    aget-object v7, v6, v15

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v6}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v7

    invoke-static {v5, v7, v3}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v3

    if-gt v5, v3, :cond_4

    :goto_1
    aget-object v7, v6, v5

    add-int/lit8 v8, v5, 0x1

    aget-object v8, v6, v8

    add-int/lit8 v9, v5, 0x2

    aget-object v9, v6, v9

    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v13, v8, Landroid/graphics/PointF;->y:F

    iget v8, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move-object v7, v14

    move/from16 v16, v8

    move v8, v10

    move/from16 v17, v9

    move v9, v11

    move v10, v12

    move v11, v13

    move/from16 v12, v16

    move/from16 v13, v17

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    if-eq v5, v3, :cond_4

    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_5

    sget-object v3, Lcom/kakao/sdk/friend/core/l/b0;->e:[Landroid/graphics/PointF;

    aget-object v4, v3, v15

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    aget-object v3, v3, v15

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    if-ne v0, v2, :cond_6

    const/4 v2, 0x0

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 29
    invoke-virtual {v1, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v2, v14

    :cond_7
    check-cast v2, Landroid/graphics/Path;

    return-object v2

    nop

    .array-data 1
    .end array-data
.end method

.method public static final a(Landroid/graphics/Path;FFF)V
    .locals 4

    const-string v0, "path"

    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float p2, p1, p2

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr p2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p2, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    div-float/2addr p1, v3

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1, p3, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method
