.class final Lcom/unity3d/player/W0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Z


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/W0;->a:Z

    iput-boolean v0, p0, Lcom/unity3d/player/W0;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unity3d/player/W0;->c:Z

    iput-boolean v0, p0, Lcom/unity3d/player/W0;->d:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method static d()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/W0;->e:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method static e()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/W0;->e:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method static f()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/W0;->e:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/W0;->d:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method final a(Z)Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/W0;->e:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/unity3d/player/W0;->a:Z

    if-eqz p1, :cond_1

    :goto_0
    iget-boolean p1, p0, Lcom/unity3d/player/W0;->c:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/unity3d/player/W0;->b:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/W0;->a:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/W0;->c:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/W0;->b:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/W0;->b:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/W0;->d:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/W0;->c:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
