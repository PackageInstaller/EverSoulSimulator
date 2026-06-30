.class Lcom/google/api/LaunchStage$1;
.super Ljava/lang/Object;
.source "LaunchStage.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/LaunchStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/api/LaunchStage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/api/LaunchStage;
    .locals 0

    .line 199
    invoke-static {p1}, Lcom/google/api/LaunchStage;->forNumber(I)Lcom/google/api/LaunchStage;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/google/api/LaunchStage$1;->findValueByNumber(I)Lcom/google/api/LaunchStage;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
