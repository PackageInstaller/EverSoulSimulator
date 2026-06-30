.class public final Lcom/kakaogame/auth/AuthActivityManager;
.super Ljava/lang/Object;
.source "AuthActivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;,
        Lcom/kakaogame/auth/AuthActivityManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthActivityManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthActivityManager.kt\ncom/kakaogame/auth/AuthActivityManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1#2:147\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\u0018\u0000 *2\u00020\u0001:\u0002)*B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000f\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\u0010\u001a\u00020\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\tJ \u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0008\u0010 \u001a\u0004\u0018\u00010!J3\u0010\"\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001e2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$2\u0008\u0010&\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0002\u0010(R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/kakaogame/auth/AuthActivityManager;",
        "",
        "<init>",
        "()V",
        "eventListeners",
        "",
        "Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;",
        "activityParametersMap",
        "",
        "",
        "Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;",
        "parameterLock",
        "addResultListener",
        "",
        "listener",
        "removeResultListener",
        "setActivityParameters",
        "eventListener",
        "permissionResultCallback",
        "Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;",
        "setActivity",
        "",
        "txId",
        "curActivity",
        "Landroid/app/Activity;",
        "processActivityAction",
        "removeActivityParameters",
        "finishActivity",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(JI[Ljava/lang/String;[I)V",
        "ActivityParameters",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

.field private static final TAG:Ljava/lang/String; = "AuthActivityManager"

.field private static final instance:Lcom/kakaogame/auth/AuthActivityManager;


# instance fields
.field private final activityParametersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final parameterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/auth/AuthActivityManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/auth/AuthActivityManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/auth/AuthActivityManager;->Companion:Lcom/kakaogame/auth/AuthActivityManager$Companion;

    .line 1449
    new-instance v0, Lcom/kakaogame/auth/AuthActivityManager;

    invoke-direct {v0}, Lcom/kakaogame/auth/AuthActivityManager;-><init>()V

    sput-object v0, Lcom/kakaogame/auth/AuthActivityManager;->instance:Lcom/kakaogame/auth/AuthActivityManager;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->eventListeners:Ljava/util/Set;

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->activityParametersMap:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->parameterLock:Ljava/lang/Object;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$cp()Lcom/kakaogame/auth/AuthActivityManager;
    .locals 1

    .line 119
    sget-object v0, Lcom/kakaogame/auth/AuthActivityManager;->instance:Lcom/kakaogame/auth/AuthActivityManager;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final addResultListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V
    .locals 4

    .line 169
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x2242d26c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x6d0c0668

    invoke-static {v3}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->eventListeners:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/kakaogame/auth/AuthActivityManager;->eventListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 239
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x2242d26c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final finishActivity(J)V
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->parameterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/auth/AuthActivityManager;->activityParametersMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 969
    check-cast p1, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;

    if-eqz p1, :cond_0

    .line 979
    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 959
    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1029
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->eventListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/auth/AuthActivityManager;->eventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1049
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1099
    :try_start_2
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "AuthActivityManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1129
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1029
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final onRequestPermissionsResult(JI[Ljava/lang/String;[I)V
    .locals 2

    const v0, -0x2245723c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->parameterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/auth/AuthActivityManager;->activityParametersMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1269
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;

    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->getPermissionResultCallback()Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1279
    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->getPermissionResultCallback()Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1309
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1279
    invoke-interface {p1, p3, p4, p5}, Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1259
    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final processActivityAction(JLandroid/app/Activity;)Z
    .locals 3

    const v0, 0x7d7014e5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->parameterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/kakaogame/auth/AuthActivityManager;->activityParametersMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez p1, :cond_1

    return v1

    .line 749
    :cond_1
    check-cast p1, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;

    invoke-virtual {p1}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->getEventListener()Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p3}, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;->onActivityStart(Landroid/app/Activity;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 709
    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final removeActivityParameters(JLandroid/app/Activity;)V
    .locals 3

    const v0, 0x7d7014e5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->parameterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/auth/AuthActivityManager;->activityParametersMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 849
    check-cast v1, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;

    if-eqz v1, :cond_1

    .line 869
    invoke-virtual {v1}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 879
    invoke-virtual {v1}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->getEventListener()Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;->onDestroy()V

    .line 909
    :cond_1
    iget-object p3, p0, Lcom/kakaogame/auth/AuthActivityManager;->parameterLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->activityParametersMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1

    :catchall_1
    move-exception p1

    .line 839
    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final removeResultListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V
    .locals 4

    .line 289
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x2242d26c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, -0x45197be7

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 339
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->eventListeners:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/kakaogame/auth/AuthActivityManager;->eventListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 359
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x2242d26c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final setActivity(JLandroid/app/Activity;)Z
    .locals 3

    const v0, 0x7d7014e5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/auth/AuthActivityManager;->parameterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/kakaogame/auth/AuthActivityManager;->activityParametersMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 599
    check-cast p1, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;

    if-eqz p1, :cond_1

    .line 609
    invoke-virtual {p1, p3}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->setActivity(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    .line 579
    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final setActivityParameters(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;)J
    .locals 4

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 449
    new-instance v2, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;

    invoke-direct {v2}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;-><init>()V

    .line 459
    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->setTxId(J)V

    .line 469
    invoke-virtual {v2, p1}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->setEventListener(Lcom/kakaogame/KGAuthActivity$KGActivityEventListener;)V

    .line 479
    invoke-virtual {v2, p2}, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;->setPermissionResultCallback(Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;)V

    .line 489
    iget-object p1, p0, Lcom/kakaogame/auth/AuthActivityManager;->parameterLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/kakaogame/auth/AuthActivityManager;->activityParametersMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakaogame/auth/AuthActivityManager$ActivityParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-wide v0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    .array-data 1
    .end array-data
.end method
