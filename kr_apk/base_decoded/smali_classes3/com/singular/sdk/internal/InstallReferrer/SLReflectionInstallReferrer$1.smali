.class synthetic Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$1;
.super Ljava/lang/Object;
.source "SLReflectionInstallReferrer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$singular$sdk$internal$InstallReferrer$SLReflectionInstallReferrer$InstallReferrerCodes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1799
    invoke-static {}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->values()[Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$1;->$SwitchMap$com$singular$sdk$internal$InstallReferrer$SLReflectionInstallReferrer$InstallReferrerCodes:[I

    :try_start_0
    sget-object v1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->STATUS_OK:Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    invoke-virtual {v1}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$1;->$SwitchMap$com$singular$sdk$internal$InstallReferrer$SLReflectionInstallReferrer$InstallReferrerCodes:[I

    sget-object v1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->STATUS_FEATURE_NOT_SUPPORTED:Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    invoke-virtual {v1}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$1;->$SwitchMap$com$singular$sdk$internal$InstallReferrer$SLReflectionInstallReferrer$InstallReferrerCodes:[I

    sget-object v1, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->STATUS_SERVICE_UNAVAILABLE:Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;

    invoke-virtual {v1}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer$InstallReferrerCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method
