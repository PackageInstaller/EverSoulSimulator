.class public final Lcom/google/type/Fraction$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Fraction.java"

# interfaces
.implements Lcom/google/type/FractionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/Fraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/Fraction;",
        "Lcom/google/type/Fraction$Builder;",
        ">;",
        "Lcom/google/type/FractionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 194
    invoke-static {}, Lcom/google/type/Fraction;->access$000()Lcom/google/type/Fraction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/google/type/Fraction$1;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/google/type/Fraction$Builder;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public clearDenominator()Lcom/google/type/Fraction$Builder;
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/google/type/Fraction$Builder;->copyOnWrite()V

    .line 277
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-static {v0}, Lcom/google/type/Fraction;->access$400(Lcom/google/type/Fraction;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public clearNumerator()Lcom/google/type/Fraction$Builder;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/google/type/Fraction$Builder;->copyOnWrite()V

    .line 234
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-static {v0}, Lcom/google/type/Fraction;->access$200(Lcom/google/type/Fraction;)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public getDenominator()J
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-virtual {v0}, Lcom/google/type/Fraction;->getDenominator()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getNumerator()J
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-virtual {v0}, Lcom/google/type/Fraction;->getNumerator()J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public setDenominator(J)Lcom/google/type/Fraction$Builder;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/google/type/Fraction$Builder;->copyOnWrite()V

    .line 263
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-static {v0, p1, p2}, Lcom/google/type/Fraction;->access$300(Lcom/google/type/Fraction;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public setNumerator(J)Lcom/google/type/Fraction$Builder;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/google/type/Fraction$Builder;->copyOnWrite()V

    .line 221
    iget-object v0, p0, Lcom/google/type/Fraction$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/type/Fraction;

    invoke-static {v0, p1, p2}, Lcom/google/type/Fraction;->access$100(Lcom/google/type/Fraction;J)V

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method
