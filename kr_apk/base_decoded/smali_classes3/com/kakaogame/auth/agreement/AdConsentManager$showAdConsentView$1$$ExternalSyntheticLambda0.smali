.class public final synthetic Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/kakaogame/KGResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda0;->f$2:Lcom/kakaogame/KGResultCallback;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1$$ExternalSyntheticLambda0;->f$2:Lcom/kakaogame/KGResultCallback;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/kakaogame/auth/agreement/AdConsentManager$showAdConsentView$1;->$r8$lambda$z6OKyZgPq_WRl1oAfXnTB4yK6f8(Landroid/app/Activity;ZLcom/kakaogame/KGResultCallback;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
