.class public final enum Lcom/kakaogame/secondpw/viewdata/PopupType;
.super Ljava/lang/Enum;
.source "PopupViewData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kakaogame/secondpw/viewdata/PopupType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0016\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/kakaogame/secondpw/viewdata/PopupType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "DEFAULT_ERROR",
        "EXIT_PROCESS_ERROR",
        "INVALID_AUTH_CODE_ERROR",
        "AUTH_CODE_LIMIT_ERROR",
        "AUTH_CODE_TIME_ERROR",
        "INVALID_PHONE_NUMBER_ERROR",
        "INVALID_EMAIL_ERROR",
        "SET_PASSWORD_INVALID",
        "CONFIRM_PASSWORD_INVALID",
        "PASSWORD_NOT_MACHED",
        "SAME_PASSWORD_USED",
        "SET_PASSWORD_COMPLETE",
        "RESET_PASSWORD_COMPLETE",
        "REMOVE_PASSWORD_COMPLETE",
        "KEYPAD_TIME_LIMIT",
        "INPUT_PASSWORD_PLEASE",
        "INPUT_PASSWORD_NOT_MATCHED",
        "security_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum AUTH_CODE_LIMIT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum AUTH_CODE_TIME_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum CONFIRM_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum EXIT_PROCESS_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum INPUT_PASSWORD_NOT_MATCHED:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum INPUT_PASSWORD_PLEASE:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum INVALID_AUTH_CODE_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum INVALID_EMAIL_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum INVALID_PHONE_NUMBER_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum PASSWORD_NOT_MACHED:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum REMOVE_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum RESET_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum SAME_PASSWORD_USED:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum SET_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

.field public static final enum SET_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/kakaogame/secondpw/viewdata/PopupType;
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v1, 0x0

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->EXIT_PROCESS_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_AUTH_CODE_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_LIMIT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_TIME_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_PHONE_NUMBER_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_EMAIL_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->SET_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->CONFIRM_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->PASSWORD_NOT_MACHED:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->SAME_PASSWORD_USED:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->SET_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->RESET_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->REMOVE_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->INPUT_PASSWORD_PLEASE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/kakaogame/secondpw/viewdata/PopupType;->INPUT_PASSWORD_NOT_MATCHED:Lcom/kakaogame/secondpw/viewdata/PopupType;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 639
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v1, 0x0

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_default_error:I

    const v3, -0x224e1c44

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->DEFAULT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 649
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v1, 0x1

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_default_error:I

    const v3, 0x5d1cfccf

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->EXIT_PROCESS_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 669
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v1, 0x2

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_invalid_auth_code_error:I

    const v3, 0x336e72eb

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_AUTH_CODE_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 679
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v1, 0x3

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_invalid_auth_code_limit_error:I

    const v3, 0x6d00cad8

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_LIMIT_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 689
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v1, 0x4

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_code_time_error:I

    const v3, 0x5d1cfeef

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->AUTH_CODE_TIME_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 699
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v1, 0x5

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_invalid_phone_number_error:I

    const v3, -0x224e190c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_PHONE_NUMBER_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 709
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v1, 0x6

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_invalid_email_error:I

    const v3, 0x7d7cd1f5

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->INVALID_EMAIL_ERROR:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 729
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/4 v1, 0x7

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_set_password_invalid:I

    const v3, 0x5d1cf8a7

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->SET_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 739
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/16 v1, 0x8

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_confirm_password_invalid:I

    const v3, 0x2259db76

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->CONFIRM_PASSWORD_INVALID:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 749
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/16 v1, 0x9

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_password_not_matched:I

    const v3, 0x2259daa6

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->PASSWORD_NOT_MACHED:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 759
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/16 v1, 0xa

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_password_already_used:I

    const v3, -0x224de57c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->SAME_PASSWORD_USED:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 779
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/16 v1, 0xb

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_set_complete_text:I

    const v3, 0x6d033160

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->SET_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 789
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/16 v1, 0xc

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_reset_complete_text:I

    const v3, 0x5d1f0427

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->RESET_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 799
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/16 v1, 0xd

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_unregister_complete_text:I

    const v3, 0x5d1f076f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->REMOVE_PASSWORD_COMPLETE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 809
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/16 v1, 0xe

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_password_time_limit:I

    const v3, 0x2259f4be

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->KEYPAD_TIME_LIMIT:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 829
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/16 v1, 0xf

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_enter_no_text_error_text:I

    const v3, 0x225a26de

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->INPUT_PASSWORD_PLEASE:Lcom/kakaogame/secondpw/viewdata/PopupType;

    .line 839
    new-instance v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    const/16 v1, 0x10

    sget v2, Lcom/kakaogame/security/R$string;->kg_2nd_pw_enter_no_match_error_text:I

    const v3, 0x225a2616

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/kakaogame/secondpw/viewdata/PopupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->INPUT_PASSWORD_NOT_MATCHED:Lcom/kakaogame/secondpw/viewdata/PopupType;

    invoke-static {}, Lcom/kakaogame/secondpw/viewdata/PopupType;->$values()[Lcom/kakaogame/secondpw/viewdata/PopupType;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->$VALUES:[Lcom/kakaogame/secondpw/viewdata/PopupType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void

    nop

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

    .line 629
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kakaogame/secondpw/viewdata/PopupType;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/kakaogame/secondpw/viewdata/PopupType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakaogame/secondpw/viewdata/PopupType;
    .locals 1

    const-class v0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 849
    check-cast p0, Lcom/kakaogame/secondpw/viewdata/PopupType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/kakaogame/secondpw/viewdata/PopupType;
    .locals 1

    sget-object v0, Lcom/kakaogame/secondpw/viewdata/PopupType;->$VALUES:[Lcom/kakaogame/secondpw/viewdata/PopupType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 849
    check-cast v0, [Lcom/kakaogame/secondpw/viewdata/PopupType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/kakaogame/secondpw/viewdata/PopupType;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
