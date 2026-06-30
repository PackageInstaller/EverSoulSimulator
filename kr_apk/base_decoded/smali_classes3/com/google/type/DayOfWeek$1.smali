.class Lcom/google/type/DayOfWeek$1;
.super Ljava/lang/Object;
.source "DayOfWeek.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/DayOfWeek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/type/DayOfWeek;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lcom/google/type/DayOfWeek$1;->findValueByNumber(I)Lcom/google/type/DayOfWeek;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public findValueByNumber(I)Lcom/google/type/DayOfWeek;
    .locals 0

    .line 190
    invoke-static {p1}, Lcom/google/type/DayOfWeek;->forNumber(I)Lcom/google/type/DayOfWeek;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
