.class final enum Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;
.super Ljava/lang/Enum;
.source "SLReflectionInstallReferrer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InstallReferrerCodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

.field public static final enum STATUS_FEATURE_NOT_SUPPORTED:Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

.field public static final enum STATUS_OK:Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

.field public static final enum STATUS_SERVICE_UNAVAILABLE:Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 179
    new-instance v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    const-string v1, "STATUS_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->STATUS_OK:Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    .line 189
    new-instance v1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    const-string v3, "STATUS_FEATURE_NOT_SUPPORTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->STATUS_FEATURE_NOT_SUPPORTED:Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    .line 199
    new-instance v3, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    const-string v5, "STATUS_SERVICE_UNAVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->STATUS_SERVICE_UNAVAILABLE:Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 169
    sput-object v5, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->$VALUES:[Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

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

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput p3, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->value:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;
    .locals 1

    .line 169
    const-class v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;
    .locals 1

    .line 169
    sget-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->$VALUES:[Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    invoke-virtual {v0}, [Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->value:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method
