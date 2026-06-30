.class public final Lcom/facebook/gamingservices/TournamentJoinDialog$Result;
.super Ljava/lang/Object;
.source "TournamentJoinDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/gamingservices/TournamentJoinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/gamingservices/TournamentJoinDialog$Result;",
        "",
        "results",
        "Landroid/os/Bundle;",
        "(Landroid/os/Bundle;)V",
        "payload",
        "",
        "getPayload",
        "()Ljava/lang/String;",
        "setPayload",
        "(Ljava/lang/String;)V",
        "requestID",
        "getRequestID",
        "setRequestID",
        "tournamentID",
        "getTournamentID",
        "setTournamentID",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private payload:Ljava/lang/String;

.field private requestID:Ljava/lang/String;

.field private tournamentID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "request"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->requestID:Ljava/lang/String;

    :cond_0
    const-string v0, "tournament_id"

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->tournamentID:Ljava/lang/String;

    const-string v0, "payload"

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->payload:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->payload:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRequestID()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->requestID:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTournamentID()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->tournamentID:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setPayload(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->payload:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setRequestID(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->requestID:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setTournamentID(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/facebook/gamingservices/TournamentJoinDialog$Result;->tournamentID:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method
