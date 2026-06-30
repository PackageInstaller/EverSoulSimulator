.class public Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer;
.super Ljava/lang/Object;
.source "SLSamsungReferrer.java"

# interfaces
.implements Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerService;


# static fields
.field private static final packageName:Ljava/lang/String; = "com.samsung.android.sdk.sinstallreferrer.api"

.field private static final sourceName:Ljava/lang/String; = "samsung"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public fetchReferrer(Landroid/content/Context;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V
    .locals 2

    .line 149
    new-instance v0, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;

    new-instance v1, Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer$1;

    invoke-direct {v1, p0, p2}, Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer$1;-><init>(Lcom/singular/sdk/internal/InstallReferrer/SLSamsungReferrer;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V

    const-string p2, "com.samsung.android.sdk.sinstallreferrer.api"

    invoke-direct {v0, p1, p2, v1}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/singular/sdk/internal/InstallReferrer/SLInstallReferrerCompletionHandler;)V

    .line 319
    invoke-virtual {v0}, Lcom/singular/sdk/internal/InstallReferrer/SLReflectionInstallReferrer;->startConnection()V

    return-void

    .array-data 1
    .end array-data
.end method
