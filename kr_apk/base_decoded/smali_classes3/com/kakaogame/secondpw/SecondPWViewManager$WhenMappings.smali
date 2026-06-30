.class public final synthetic Lcom/kakaogame/secondpw/SecondPWViewManager$WhenMappings;
.super Ljava/lang/Object;
.source "SecondPWViewManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/secondpw/SecondPWViewManager;
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
    .locals 3

    invoke-static {}, Lcom/kakaogame/security/SendAuthType;->values()[Lcom/kakaogame/security/SendAuthType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/kakaogame/security/SendAuthType;->TALK:Lcom/kakaogame/security/SendAuthType;

    invoke-virtual {v2}, Lcom/kakaogame/security/SendAuthType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/kakaogame/secondpw/ActionType;->values()[Lcom/kakaogame/secondpw/ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_1
    sget-object v2, Lcom/kakaogame/secondpw/ActionType;->SET_CODE_TALK:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v2}, Lcom/kakaogame/secondpw/ActionType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->SET_CODE_SMS:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/kakaogame/secondpw/ActionType;->SET_PASSWORD:Lcom/kakaogame/secondpw/ActionType;

    invoke-virtual {v1}, Lcom/kakaogame/secondpw/ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/kakaogame/secondpw/SecondPWViewManager$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void

    .array-data 1
    .end array-data
.end method
