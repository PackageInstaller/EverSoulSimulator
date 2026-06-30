.class public final Lcom/kakao/sdk/friend/core/i/e;
.super Lcom/kakao/sdk/friend/core/i/f;
.source "SourceFile"

# interfaces
.implements Lcom/kakao/sdk/friend/core/k/b;


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/Boolean;

.field public g:Z

.field public final h:Ljava/lang/Boolean;

.field public i:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V
    .locals 13

    move/from16 v0, p8

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    const/4 v10, 0x0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v11, v0

    goto :goto_2

    :cond_2
    move-object/from16 v11, p7

    :goto_2
    const/4 v12, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v12}, Lcom/kakao/sdk/friend/core/i/e;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;ZLjava/lang/Boolean;Z)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;ZLjava/lang/Boolean;Z)V
    .locals 1

    const-string/jumbo v0, "uuid"

    .line 29
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/i/f;-><init>()V

    iput-object p1, p0, Lcom/kakao/sdk/friend/core/i/e;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/kakao/sdk/friend/core/i/e;->f:Ljava/lang/Boolean;

    iput-boolean p7, p0, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    iput-object p8, p0, Lcom/kakao/sdk/friend/core/i/e;->h:Ljava/lang/Boolean;

    iput-boolean p9, p0, Lcom/kakao/sdk/friend/core/i/e;->i:Z

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 19
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    check-cast p1, Lcom/kakao/sdk/friend/core/i/e;

    iget-object p1, p1, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/e;->a:Ljava/lang/Long;

    iget-object v1, p0, Lcom/kakao/sdk/friend/core/i/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/i/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/i/e;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/i/e;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/i/e;->f:Ljava/lang/Boolean;

    iget-boolean v6, p0, Lcom/kakao/sdk/friend/core/i/e;->g:Z

    iget-object v7, p0, Lcom/kakao/sdk/friend/core/i/e;->h:Ljava/lang/Boolean;

    iget-boolean v8, p0, Lcom/kakao/sdk/friend/core/i/e;->i:Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "User(id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", uuid="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableSelectOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasCustomFavorite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
