.class public final enum Lcom/facebook/internal/FeatureManager$Feature;
.super Ljava/lang/Enum;
.source "FeatureManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FeatureManager$Feature$Companion;,
        Lcom/facebook/internal/FeatureManager$Feature$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/FeatureManager$Feature;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008$\u0008\u0086\u0001\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001,B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+\u00a8\u0006-"
    }
    d2 = {
        "Lcom/facebook/internal/FeatureManager$Feature;",
        "",
        "code",
        "",
        "(Ljava/lang/String;II)V",
        "parent",
        "getParent",
        "()Lcom/facebook/internal/FeatureManager$Feature;",
        "toKey",
        "",
        "toString",
        "Unknown",
        "Core",
        "AppEvents",
        "CodelessEvents",
        "CloudBridge",
        "RestrictiveDataFiltering",
        "AAM",
        "PrivacyProtection",
        "SuggestedEvents",
        "IntelligentIntegrity",
        "ModelRequest",
        "ProtectedMode",
        "MACARuleMatching",
        "EventDeactivation",
        "OnDeviceEventProcessing",
        "OnDevicePostInstallEventProcessing",
        "IapLogging",
        "IapLoggingLib2",
        "Instrument",
        "CrashReport",
        "CrashShield",
        "ThreadCheck",
        "ErrorReport",
        "AnrReport",
        "Monitoring",
        "ServiceUpdateCompliance",
        "Megatron",
        "Elora",
        "Login",
        "ChromeCustomTabsPrefetching",
        "IgnoreAppSwitchToLoggedOut",
        "BypassAppSwitch",
        "Share",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum AAM:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum AnrReport:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum BypassAppSwitch:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CloudBridge:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final Companion:Lcom/facebook/internal/FeatureManager$Feature$Companion;

.field public static final enum Core:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CrashReport:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CrashShield:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Elora:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ErrorReport:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum IapLogging:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum IapLoggingLib2:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Instrument:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Login:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum MACARuleMatching:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Megatron:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum OnDeviceEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum OnDevicePostInstallEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ProtectedMode:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ServiceUpdateCompliance:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Share:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ThreadCheck:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Unknown:Lcom/facebook/internal/FeatureManager$Feature;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lcom/facebook/internal/FeatureManager$Feature;
    .locals 3

    const/16 v0, 0x21

    new-array v0, v0, [Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Core:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->CloudBridge:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->ProtectedMode:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->MACARuleMatching:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->OnDeviceEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->OnDevicePostInstallEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->IapLogging:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->IapLoggingLib2:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->CrashReport:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->CrashShield:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->ThreadCheck:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->ErrorReport:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->AnrReport:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->ServiceUpdateCompliance:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Megatron:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Elora:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Login:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->BypassAppSwitch:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Share:Lcom/facebook/internal/FeatureManager$Feature;

    aput-object v2, v0, v1

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 148
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, -0x1

    const-string v2, "Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    .line 152
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v1, "Core"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Core:Lcom/facebook/internal/FeatureManager$Feature;

    .line 153
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x2

    const/high16 v2, 0x10000

    const-string v3, "AppEvents"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 154
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x3

    const v2, 0x10100

    const-string v3, "CodelessEvents"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 155
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x4

    const v2, 0x10800

    const-string v3, "CloudBridge"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CloudBridge:Lcom/facebook/internal/FeatureManager$Feature;

    .line 156
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x5

    const v2, 0x10200

    const-string v3, "RestrictiveDataFiltering"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    .line 157
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x6

    const v2, 0x10300

    const-string v3, "AAM"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    .line 158
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x7

    const v2, 0x10400

    const-string v3, "PrivacyProtection"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    .line 159
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x8

    const v2, 0x10401

    const-string v3, "SuggestedEvents"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 160
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x9

    const v2, 0x10402

    const-string v3, "IntelligentIntegrity"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

    .line 161
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0xa

    const v2, 0x10403

    const-string v3, "ModelRequest"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

    .line 162
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0xb

    const v2, 0x10404

    const-string v3, "ProtectedMode"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ProtectedMode:Lcom/facebook/internal/FeatureManager$Feature;

    .line 163
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0xc

    const v2, 0x10405

    const-string v3, "MACARuleMatching"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->MACARuleMatching:Lcom/facebook/internal/FeatureManager$Feature;

    .line 164
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0xd

    const v2, 0x10500

    const-string v3, "EventDeactivation"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    .line 165
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0xe

    const v2, 0x10600

    const-string v3, "OnDeviceEventProcessing"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->OnDeviceEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    .line 166
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0xf

    const v2, 0x10601

    const-string v3, "OnDevicePostInstallEventProcessing"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->OnDevicePostInstallEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    .line 167
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x10

    const v2, 0x10700

    const-string v3, "IapLogging"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->IapLogging:Lcom/facebook/internal/FeatureManager$Feature;

    .line 168
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x11

    const v2, 0x10701

    const-string v3, "IapLoggingLib2"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->IapLoggingLib2:Lcom/facebook/internal/FeatureManager$Feature;

    .line 169
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x12

    const/high16 v2, 0x20000

    const-string v3, "Instrument"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    .line 170
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x13

    const v2, 0x20100

    const-string v3, "CrashReport"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CrashReport:Lcom/facebook/internal/FeatureManager$Feature;

    .line 171
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x14

    const v2, 0x20101

    const-string v3, "CrashShield"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CrashShield:Lcom/facebook/internal/FeatureManager$Feature;

    .line 172
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x15

    const v2, 0x20102

    const-string v3, "ThreadCheck"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ThreadCheck:Lcom/facebook/internal/FeatureManager$Feature;

    .line 173
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x16

    const v2, 0x20200

    const-string v3, "ErrorReport"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ErrorReport:Lcom/facebook/internal/FeatureManager$Feature;

    .line 174
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x17

    const v2, 0x20300

    const-string v3, "AnrReport"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->AnrReport:Lcom/facebook/internal/FeatureManager$Feature;

    .line 175
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x18

    const/high16 v2, 0x30000

    const-string v3, "Monitoring"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

    .line 176
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x19

    const v2, 0x30100

    const-string v3, "ServiceUpdateCompliance"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ServiceUpdateCompliance:Lcom/facebook/internal/FeatureManager$Feature;

    .line 177
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x1a

    const/high16 v2, 0x40000

    const-string v3, "Megatron"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Megatron:Lcom/facebook/internal/FeatureManager$Feature;

    .line 178
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x1b

    const/high16 v2, 0x50000

    const-string v3, "Elora"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Elora:Lcom/facebook/internal/FeatureManager$Feature;

    .line 182
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x1c

    const/high16 v2, 0x1000000

    const-string v3, "Login"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Login:Lcom/facebook/internal/FeatureManager$Feature;

    .line 183
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x1d

    const/high16 v2, 0x1010000

    const-string v3, "ChromeCustomTabsPrefetching"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    .line 184
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x1e

    const/high16 v2, 0x1020000

    const-string v3, "IgnoreAppSwitchToLoggedOut"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    .line 185
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x1f

    const/high16 v2, 0x1030000

    const-string v3, "BypassAppSwitch"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->BypassAppSwitch:Lcom/facebook/internal/FeatureManager$Feature;

    .line 189
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v1, 0x20

    const/high16 v2, 0x2000000

    const-string v3, "Share"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Share:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {}, Lcom/facebook/internal/FeatureManager$Feature;->$values()[Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->$VALUES:[Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/FeatureManager$Feature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Companion:Lcom/facebook/internal/FeatureManager$Feature$Companion;

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

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/internal/FeatureManager$Feature;->code:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCode$p(Lcom/facebook/internal/FeatureManager$Feature;)I
    .locals 0

    .line 147
    iget p0, p0, Lcom/facebook/internal/FeatureManager$Feature;->code:I

    return p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/FeatureManager$Feature;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 259
    check-cast p0, Lcom/facebook/internal/FeatureManager$Feature;

    return-object p0

    .array-data 1
    .end array-data
.end method

.method public static values()[Lcom/facebook/internal/FeatureManager$Feature;
    .locals 2

    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->$VALUES:[Lcom/facebook/internal/FeatureManager$Feature;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 259
    check-cast v0, [Lcom/facebook/internal/FeatureManager$Feature;

    return-object v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getParent()Lcom/facebook/internal/FeatureManager$Feature;
    .locals 3

    .line 235
    iget v0, p0, Lcom/facebook/internal/FeatureManager$Feature;->code:I

    and-int/lit16 v1, v0, 0xff

    if-lez v1, :cond_0

    .line 236
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Companion:Lcom/facebook/internal/FeatureManager$Feature$Companion;

    and-int/lit16 v0, v0, -0x100

    invoke-virtual {v1, v0}, Lcom/facebook/internal/FeatureManager$Feature$Companion;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0xff00

    and-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 239
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Companion:Lcom/facebook/internal/FeatureManager$Feature$Companion;

    const/high16 v2, -0x10000

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/internal/FeatureManager$Feature$Companion;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-lez v1, :cond_2

    .line 242
    sget-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Companion:Lcom/facebook/internal/FeatureManager$Feature$Companion;

    const/high16 v2, -0x1000000

    and-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/internal/FeatureManager$Feature$Companion;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_2
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Companion:Lcom/facebook/internal/FeatureManager$Feature$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/internal/FeatureManager$Feature$Companion;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final toKey()Ljava/lang/String;
    .locals 1

    const-string v0, "FBSDKFeature"

    .line 229
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "ShareKit"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "BypassAppSwitch"

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "IgnoreAppSwitchToLoggedOut"

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "ChromeCustomTabsPrefetching"

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "LoginKit"

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "ServiceUpdateCompliance"

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "Elora"

    goto :goto_0

    :pswitch_7
    const-string v0, "Megatron"

    goto :goto_0

    :pswitch_8
    const-string v0, "Monitoring"

    goto :goto_0

    :pswitch_9
    const-string v0, "IAPLoggingLib2"

    goto :goto_0

    :pswitch_a
    const-string v0, "IAPLogging"

    goto :goto_0

    :pswitch_b
    const-string v0, "OnDevicePostInstallEventProcessing"

    goto :goto_0

    :pswitch_c
    const-string v0, "OnDeviceEventProcessing"

    goto :goto_0

    :pswitch_d
    const-string v0, "EventDeactivation"

    goto :goto_0

    :pswitch_e
    const-string v0, "ModelRequest"

    goto :goto_0

    :pswitch_f
    const-string v0, "MACARuleMatching"

    goto :goto_0

    :pswitch_10
    const-string v0, "ProtectedMode"

    goto :goto_0

    :pswitch_11
    const-string v0, "IntelligentIntegrity"

    goto :goto_0

    :pswitch_12
    const-string v0, "SuggestedEvents"

    goto :goto_0

    :pswitch_13
    const-string v0, "PrivacyProtection"

    goto :goto_0

    :pswitch_14
    const-string v0, "AppEventsCloudbridge"

    goto :goto_0

    :pswitch_15
    const-string v0, "AAM"

    goto :goto_0

    :pswitch_16
    const-string v0, "AnrReport"

    goto :goto_0

    :pswitch_17
    const-string v0, "ErrorReport"

    goto :goto_0

    :pswitch_18
    const-string v0, "ThreadCheck"

    goto :goto_0

    :pswitch_19
    const-string v0, "CrashShield"

    goto :goto_0

    :pswitch_1a
    const-string v0, "CrashReport"

    goto :goto_0

    :pswitch_1b
    const-string v0, "Instrument"

    goto :goto_0

    :pswitch_1c
    const-string v0, "RestrictiveDataFiltering"

    goto :goto_0

    :pswitch_1d
    const-string v0, "CodelessEvents"

    goto :goto_0

    :pswitch_1e
    const-string v0, "AppEvents"

    goto :goto_0

    :pswitch_1f
    const-string v0, "CoreKit"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method
