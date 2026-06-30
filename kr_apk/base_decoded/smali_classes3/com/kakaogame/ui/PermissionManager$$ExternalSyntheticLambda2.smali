.class public final synthetic Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/kakaogame/util/MutexLock;


# direct methods
.method public synthetic constructor <init>(Lcom/kakaogame/util/MutexLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda2;->f$0:Lcom/kakaogame/util/MutexLock;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/ui/PermissionManager$$ExternalSyntheticLambda2;->f$0:Lcom/kakaogame/util/MutexLock;

    invoke-static {v0, p1, p2, p3}, Lcom/kakaogame/ui/PermissionManager;->$r8$lambda$6jJqxWvETE_w2OYJ6bRgxmrzGS0(Lcom/kakaogame/util/MutexLock;I[Ljava/lang/String;[I)V

    return-void

    .array-data 1
    .end array-data
.end method
