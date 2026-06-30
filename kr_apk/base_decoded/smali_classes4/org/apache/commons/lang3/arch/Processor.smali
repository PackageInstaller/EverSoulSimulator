.class public Lorg/apache/commons/lang3/arch/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/arch/Processor$Type;,
        Lorg/apache/commons/lang3/arch/Processor$Arch;
    }
.end annotation


# instance fields
.field private final arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

.field private final type:Lorg/apache/commons/lang3/arch/Processor$Type;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V
    .locals 0

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    iput-object p1, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 1009
    iput-object p2, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public getArch()Lorg/apache/commons/lang3/arch/Processor$Arch;
    .locals 1

    .line 1119
    iget-object v0, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getType()Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 1

    .line 1229
    iget-object v0, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public is32Bit()Z
    .locals 2

    .line 1319
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Arch;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public is64Bit()Z
    .locals 2

    .line 1409
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->arch:Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Arch;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isIA64()Z
    .locals 2

    .line 1589
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isPPC()Z
    .locals 2

    .line 1679
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public isX86()Z
    .locals 2

    .line 1499
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    iget-object v1, p0, Lorg/apache/commons/lang3/arch/Processor;->type:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/arch/Processor$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
