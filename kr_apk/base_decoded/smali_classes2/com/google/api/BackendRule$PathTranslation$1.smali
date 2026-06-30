.class Lcom/google/api/BackendRule$PathTranslation$1;
.super Ljava/lang/Object;
.source "BackendRule.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/BackendRule$PathTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/api/BackendRule$PathTranslation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/api/BackendRule$PathTranslation;
    .locals 0

    .line 175
    invoke-static {p1}, Lcom/google/api/BackendRule$PathTranslation;->forNumber(I)Lcom/google/api/BackendRule$PathTranslation;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/api/BackendRule$PathTranslation$1;->findValueByNumber(I)Lcom/google/api/BackendRule$PathTranslation;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method
