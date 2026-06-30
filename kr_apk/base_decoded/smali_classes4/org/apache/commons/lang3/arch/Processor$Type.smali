.class public final enum Lorg/apache/commons/lang3/arch/Processor$Type;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/arch/Processor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum X86:Lorg/apache/commons/lang3/arch/Processor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 709
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    const v1, 0x7d79b35d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 759
    new-instance v1, Lorg/apache/commons/lang3/arch/Processor$Type;

    const v3, 0x336b28db

    invoke-static {v3}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 809
    new-instance v3, Lorg/apache/commons/lang3/arch/Processor$Type;

    const v5, -0x224b4524

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 859
    new-instance v5, Lorg/apache/commons/lang3/arch/Processor$Type;

    const v7, 0x33675e43

    invoke-static {v7}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/lang3/arch/Processor$Type;->UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/commons/lang3/arch/Processor$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 659
    sput-object v7, Lorg/apache/commons/lang3/arch/Processor$Type;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 659
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 1

    .line 659
    const-class v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 1

    .line 659
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/arch/Processor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
