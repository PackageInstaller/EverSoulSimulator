.class public Lcom/singular/sdk/internal/SingularParamsBase;
.super Lcom/singular/sdk/internal/SingularMap;
.source "SingularParamsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/SingularParamsBase$Constants;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularMap;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private putAsidOrAifaIfNotNull(Lcom/singular/sdk/internal/DeviceInfo;)V
    .locals 1

    .line 869
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aifa"

    .line 879
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "asid"

    .line 899
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method protected withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;
    .locals 6

    const-string v0, "i"

    .line 369
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "p"

    .line 379
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->platform:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "singular-pref-session"

    const/4 v2, 0x0

    .line 419
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "custom-sdid"

    .line 439
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "SDID"

    const-string/jumbo v4, "u"

    const-string v5, "k"

    if-nez v1, :cond_0

    .line 449
    invoke-virtual {p0, v5, v3}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, ""

    .line 459
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "cs"

    const-string v1, "1"

    .line 469
    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->putAsidOrAifaIfNotNull(Lcom/singular/sdk/internal/DeviceInfo;)V

    goto/16 :goto_0

    .line 489
    :cond_0
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->sdid:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->sdid:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    invoke-virtual {p0, v5, v3}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 509
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->sdid:Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SLSingularDeviceIdentifier;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->putAsidOrAifaIfNotNull(Lcom/singular/sdk/internal/DeviceInfo;)V

    goto/16 :goto_0

    .line 529
    :cond_1
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->amid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "amid"

    .line 539
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->amid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "AMID"

    .line 549
    invoke-virtual {p0, v5, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->amid:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->putAsidOrAifaIfNotNull(Lcom/singular/sdk/internal/DeviceInfo;)V

    goto/16 :goto_0

    .line 579
    :cond_2
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "aifa"

    .line 589
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "AIFA"

    .line 599
    invoke-virtual {p0, v5, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 609
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 619
    :cond_3
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->oaid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "asid"

    if-nez v0, :cond_4

    const-string v0, "OAID"

    .line 629
    invoke-virtual {p0, v5, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->oaid:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "oaid"

    .line 649
    iget-object v2, p1, Lcom/singular/sdk/internal/DeviceInfo;->oaid:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 669
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 689
    :cond_4
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "imei"

    .line 699
    iget-object v1, p1, Lcom/singular/sdk/internal/DeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "IMEI"

    .line 709
    invoke-virtual {p0, v5, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 719
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 729
    :cond_5
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ASID"

    .line 739
    invoke-virtual {p0, v5, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 749
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 769
    :cond_6
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->andi:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ANDI"

    .line 779
    invoke-virtual {p0, v5, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 789
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->andi:Ljava/lang/String;

    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "andi"

    .line 799
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->andi:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    :goto_0
    return-object p0

    .array-data 1
    .end array-data
.end method
