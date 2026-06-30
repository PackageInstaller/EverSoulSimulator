.class public final Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;
.super Ljava/lang/Object;
.source "AuthActivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/auth/AuthActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityParameters"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;",
        "",
        "<init>",
        "()V",
        "txId",
        "",
        "getTxId",
        "()J",
        "setTxId",
        "(J)V",
        "eventListener",
        "Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;",
        "getEventListener",
        "()Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;",
        "setEventListener",
        "(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V",
        "permissionResultCallback",
        "Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;",
        "getPermissionResultCallback",
        "()Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;",
        "setPermissionResultCallback",
        "(Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;)V",
        "activity",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "setActivity",
        "(Landroid/app/Activity;)V",
        "common-kakaogames_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private eventListener:Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

.field private permissionResultCallback:Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

.field private txId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->activity:Landroid/app/Activity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEventListener()Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->eventListener:Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPermissionResultCallback()Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
    .locals 1

    .line 1389
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->permissionResultCallback:Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTxId()J
    .locals 2

    .line 1369
    iget-wide v0, p0, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->txId:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 1399
    iput-object p1, p0, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->activity:Landroid/app/Activity;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setEventListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V
    .locals 0

    .line 1379
    iput-object p1, p0, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->eventListener:Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setPermissionResultCallback(Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;)V
    .locals 0

    .line 1389
    iput-object p1, p0, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->permissionResultCallback:Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTxId(J)V
    .locals 0

    .line 1369
    iput-wide p1, p0, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->txId:J

    return-void

    nop

    .array-data 1
    .end array-data
.end method
