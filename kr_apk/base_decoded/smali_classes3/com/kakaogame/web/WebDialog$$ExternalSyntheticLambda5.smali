.class public final synthetic Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Lcom/kakaogame/web/WebDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/kakaogame/web/WebDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda5;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda5;->f$1:Lcom/kakaogame/web/WebDialog;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda5;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/kakaogame/web/WebDialog$$ExternalSyntheticLambda5;->f$1:Lcom/kakaogame/web/WebDialog;

    invoke-static {v0, v1, p1, p2}, Lcom/kakaogame/web/WebDialog;->$r8$lambda$i7yWjwbB1om6mMvg4G87GQR0854(Landroid/view/View;Lcom/kakaogame/web/WebDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
