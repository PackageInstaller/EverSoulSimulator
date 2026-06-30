.class public final Lcom/kakao/sdk/friend/core/i/a;
.super Lcom/kakao/sdk/friend/core/i/c;
.source "SourceFile"

# interfaces
.implements Lcom/kakao/sdk/friend/core/k/b;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/util/List;

.field public final g:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

.field public h:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/kakao/sdk/friend/core/i/c;-><init>()V

    iput-wide p1, p0, Lcom/kakao/sdk/friend/core/i/a;->a:J

    iput-object p3, p0, Lcom/kakao/sdk/friend/core/i/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/kakao/sdk/friend/core/i/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/kakao/sdk/friend/core/i/a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/kakao/sdk/friend/core/i/a;->e:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/kakao/sdk/friend/core/i/a;->f:Ljava/util/List;

    iput-object p8, p0, Lcom/kakao/sdk/friend/core/i/a;->g:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kakao/sdk/friend/core/i/a;->h:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/kakao/sdk/friend/core/i/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 19
    instance-of v0, p1, Lcom/kakao/sdk/friend/core/i/a;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/i/a;->a:J

    check-cast p1, Lcom/kakao/sdk/friend/core/i/a;

    iget-wide v2, p1, Lcom/kakao/sdk/friend/core/i/a;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final hashCode()I
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/i/a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 19
    iget-wide v0, p0, Lcom/kakao/sdk/friend/core/i/a;->a:J

    iget-object v2, p0, Lcom/kakao/sdk/friend/core/i/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/kakao/sdk/friend/core/i/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/sdk/friend/core/i/a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/kakao/sdk/friend/core/i/a;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/kakao/sdk/friend/core/i/a;->f:Ljava/util/List;

    iget-object v7, p0, Lcom/kakao/sdk/friend/core/i/a;->g:Lcom/kakao/sdk/friend/core/model/PickerChatRoomType;

    iget-boolean v8, p0, Lcom/kakao/sdk/friend/core/i/a;->h:Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Chat(id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", titleSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memberCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayMemberImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roomType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isChecked="

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
