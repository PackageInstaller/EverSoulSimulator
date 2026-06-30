.class public final enum Ltwitter4j/OEmbedRequest$WidgetType;
.super Ljava/lang/Enum;
.source "OEmbedRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/OEmbedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltwitter4j/OEmbedRequest$WidgetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltwitter4j/OEmbedRequest$WidgetType;

.field public static final enum NONE:Ltwitter4j/OEmbedRequest$WidgetType;

.field public static final enum VIDEO:Ltwitter4j/OEmbedRequest$WidgetType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1369
    new-instance v0, Ltwitter4j/OEmbedRequest$WidgetType;

    const v1, 0x54324502

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltwitter4j/OEmbedRequest$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/OEmbedRequest$WidgetType;->VIDEO:Ltwitter4j/OEmbedRequest$WidgetType;

    .line 1379
    new-instance v1, Ltwitter4j/OEmbedRequest$WidgetType;

    const v3, -0x2247369c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltwitter4j/OEmbedRequest$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltwitter4j/OEmbedRequest$WidgetType;->NONE:Ltwitter4j/OEmbedRequest$WidgetType;

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/OEmbedRequest$WidgetType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1359
    sput-object v3, Ltwitter4j/OEmbedRequest$WidgetType;->$VALUES:[Ltwitter4j/OEmbedRequest$WidgetType;

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

    .line 1359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Ltwitter4j/OEmbedRequest$WidgetType;
    .locals 1

    .line 1359
    const-class v0, Ltwitter4j/OEmbedRequest$WidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltwitter4j/OEmbedRequest$WidgetType;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static values()[Ltwitter4j/OEmbedRequest$WidgetType;
    .locals 1

    .line 1359
    sget-object v0, Ltwitter4j/OEmbedRequest$WidgetType;->$VALUES:[Ltwitter4j/OEmbedRequest$WidgetType;

    invoke-virtual {v0}, [Ltwitter4j/OEmbedRequest$WidgetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/OEmbedRequest$WidgetType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
