.class public final Lcom/kakao/sdk/friend/core/l/a;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/kakao/sdk/friend/core/l/c;


# direct methods
.method public constructor <init>(Lcom/kakao/sdk/friend/core/l/c;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/kakao/sdk/friend/core/l/a;->a:Lcom/kakao/sdk/friend/core/l/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/a;->a:Lcom/kakao/sdk/friend/core/l/c;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kakao/sdk/friend/core/l/a;->a:Lcom/kakao/sdk/friend/core/l/c;

    new-instance v1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v2, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v3, "cancelled."

    invoke-direct {v1, v2, v3}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/kakao/sdk/friend/core/l/c;->a(Lcom/kakao/sdk/common/model/ClientError;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
