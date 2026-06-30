.class public Lcom/singular/sdk/internal/SingularGlobalProperty;
.super Ljava/lang/Object;
.source "SingularGlobalProperty.java"


# static fields
.field public static final GLOBAL_PROPERTIES_LIMIT:I = 0x5

.field private static final GLOBAL_PROPERTY_MAX_LENGTH:I = 0xc8


# instance fields
.field private key:Ljava/lang/String;

.field private overrideExisting:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->key:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->value:Ljava/lang/String;

    .line 149
    iput-boolean p3, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->overrideExisting:Z

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0xc8

    if-le p1, p3, :cond_0

    .line 179
    iget-object p1, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->key:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->key:Ljava/lang/String;

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->value:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p3, :cond_1

    .line 219
    iget-object p1, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->value:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->value:Ljava/lang/String;

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->key:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->value:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isOverrideExisting()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/singular/sdk/internal/SingularGlobalProperty;->overrideExisting:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method
