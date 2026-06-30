.class synthetic Lcom/google/protobuf/ManifestSchemaFactory$2;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ManifestSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$protobuf$ProtoSyntax:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    invoke-static {}, Lcom/google/protobuf/ProtoSyntax;->values()[Lcom/google/protobuf/ProtoSyntax;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/ManifestSchemaFactory$2;->$SwitchMap$com$google$protobuf$ProtoSyntax:[I

    :try_start_0
    sget-object v1, Lcom/google/protobuf/ProtoSyntax;->PROTO3:Lcom/google/protobuf/ProtoSyntax;

    invoke-virtual {v1}, Lcom/google/protobuf/ProtoSyntax;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method
