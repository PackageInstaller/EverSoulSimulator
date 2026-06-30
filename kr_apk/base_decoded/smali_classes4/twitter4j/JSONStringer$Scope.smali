.class final enum Ltwitter4j/JSONStringer$Scope;
.super Ljava/lang/Enum;
.source "JSONStringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/JSONStringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltwitter4j/JSONStringer$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltwitter4j/JSONStringer$Scope;

.field public static final enum DANGLING_KEY:Ltwitter4j/JSONStringer$Scope;

.field public static final enum EMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

.field public static final enum EMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

.field public static final enum NONEMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

.field public static final enum NONEMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

.field public static final enum NULL:Ltwitter4j/JSONStringer$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 799
    new-instance v0, Ltwitter4j/JSONStringer$Scope;

    const v1, 0x5d1b4527

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltwitter4j/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/JSONStringer$Scope;->EMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

    .line 859
    new-instance v1, Ltwitter4j/JSONStringer$Scope;

    const v3, 0x5d1b458f

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltwitter4j/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltwitter4j/JSONStringer$Scope;->NONEMPTY_ARRAY:Ltwitter4j/JSONStringer$Scope;

    .line 919
    new-instance v3, Ltwitter4j/JSONStringer$Scope;

    const v5, 0x54326fca

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltwitter4j/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltwitter4j/JSONStringer$Scope;->EMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

    .line 979
    new-instance v5, Ltwitter4j/JSONStringer$Scope;

    const v7, 0x5d1b449f

    invoke-static {v7}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ltwitter4j/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ltwitter4j/JSONStringer$Scope;->DANGLING_KEY:Ltwitter4j/JSONStringer$Scope;

    .line 1039
    new-instance v7, Ltwitter4j/JSONStringer$Scope;

    const v9, 0x225e67ee

    invoke-static {v9}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ltwitter4j/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ltwitter4j/JSONStringer$Scope;->NONEMPTY_OBJECT:Ltwitter4j/JSONStringer$Scope;

    .line 1099
    new-instance v9, Ltwitter4j/JSONStringer$Scope;

    const v11, 0x6d04a348

    invoke-static {v11}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ltwitter4j/JSONStringer$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ltwitter4j/JSONStringer$Scope;->NULL:Ltwitter4j/JSONStringer$Scope;

    const/4 v11, 0x6

    new-array v11, v11, [Ltwitter4j/JSONStringer$Scope;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 739
    sput-object v11, Ltwitter4j/JSONStringer$Scope;->$VALUES:[Ltwitter4j/JSONStringer$Scope;

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

    .line 739
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Ltwitter4j/JSONStringer$Scope;
    .locals 1

    .line 739
    const-class v0, Ltwitter4j/JSONStringer$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltwitter4j/JSONStringer$Scope;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Ltwitter4j/JSONStringer$Scope;
    .locals 1

    .line 739
    sget-object v0, Ltwitter4j/JSONStringer$Scope;->$VALUES:[Ltwitter4j/JSONStringer$Scope;

    invoke-virtual {v0}, [Ltwitter4j/JSONStringer$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/JSONStringer$Scope;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
