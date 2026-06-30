.class public final synthetic Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    check-cast p2, Lcom/facebook/internal/instrument/errorreport/ErrorReportData;

    invoke-static {p1, p2}, Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;->$r8$lambda$-qQHxjvIeA2h70RXtCrfcxmmPtE(Lcom/facebook/internal/instrument/errorreport/ErrorReportData;Lcom/facebook/internal/instrument/errorreport/ErrorReportData;)I

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
