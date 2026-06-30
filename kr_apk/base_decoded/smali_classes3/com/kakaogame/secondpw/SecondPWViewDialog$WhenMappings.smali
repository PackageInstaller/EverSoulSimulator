.class public final synthetic Lcom/kakaogame/secondpw/SecondPWViewDialog$WhenMappings;
.super Ljava/lang/Object;
.source "SecondPWViewDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/secondpw/SecondPWViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/kakaogame/secondpw/PasswordViewType;->values()[Lcom/kakaogame/secondpw/PasswordViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/kakaogame/secondpw/PasswordViewType;->POPUP:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/kakaogame/secondpw/PasswordViewType;->POPUP_RESTRICT:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v3}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/kakaogame/secondpw/PasswordViewType;->RESET_DIGIT_CODE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v4, Lcom/kakaogame/secondpw/PasswordViewType;->GUIDE_3_LINE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/kakaogame/secondpw/PasswordViewType;->GUIDE_2_LINE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/kakaogame/secondpw/PasswordViewType;->GUIDE_CENTER:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_CODE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v0, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_PHONE:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v0, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_EMAIL:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v0, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/kakaogame/secondpw/PasswordViewType;->SET_PASSWORD:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v0, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/kakaogame/secondpw/PasswordViewType;->INPUT_PASSWORD:Lcom/kakaogame/secondpw/PasswordViewType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/PasswordViewType;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v0, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcom/kakaogame/secondpw/SecondPWViewDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/kakaogame/secondpw/ActionType;->values()[Lcom/kakaogame/secondpw/ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_b
    sget-object v4, Lcom/kakaogame/secondpw/ActionType;->CLOSE_POPUP:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v4}, Lcom/kakaogame/secondpw/ActionType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->RESET_DIGIT_CODE_1:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/ActionType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->RESET_DIGIT_CODE_2:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/ActionType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    sput-object v0, Lcom/kakaogame/secondpw/SecondPWViewDialog$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void

    .array-data 1
    .end array-data
.end method
