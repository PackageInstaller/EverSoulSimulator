.class Lcom/singular/sdk/internal/LicenseChecker$ResultListener;
.super Lcom/android/vending/licensing/ILicenseResultListener$Stub;
.source "LicenseChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/LicenseChecker;


# direct methods
.method private constructor <init>(Lcom/singular/sdk/internal/LicenseChecker;)V
    .locals 0

    .line 1719
    iput-object p1, p0, Lcom/singular/sdk/internal/LicenseChecker$ResultListener;->this$0:Lcom/singular/sdk/internal/LicenseChecker;

    invoke-direct {p0}, Lcom/android/vending/licensing/ILicenseResultListener$Stub;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/singular/sdk/internal/LicenseChecker;Lcom/singular/sdk/internal/LicenseChecker$1;)V
    .locals 0

    .line 1719
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/LicenseChecker$ResultListener;-><init>(Lcom/singular/sdk/internal/LicenseChecker;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1779
    iget-object v0, p0, Lcom/singular/sdk/internal/LicenseChecker$ResultListener;->this$0:Lcom/singular/sdk/internal/LicenseChecker;

    invoke-static {v0}, Lcom/singular/sdk/internal/LicenseChecker;->access$100(Lcom/singular/sdk/internal/LicenseChecker;)Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method
