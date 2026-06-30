.class public final Lcom/kakaogame/server/SNTPClient;
.super Ljava/lang/Object;
.source "SNTPClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/server/SNTPClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0002R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u001e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/kakaogame/server/SNTPClient;",
        "",
        "<init>",
        "()V",
        "value",
        "",
        "ntpTime",
        "getNtpTime",
        "()J",
        "ntpTimeReference",
        "getNtpTimeReference",
        "roundTripTime",
        "getRoundTripTime",
        "requestTime",
        "",
        "host",
        "",
        "timeout",
        "",
        "read32",
        "buffer",
        "",
        "offset",
        "readTimeStamp",
        "writeTimeStamp",
        "",
        "time",
        "Companion",
        "common-kakaogames_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/kakaogame/server/SNTPClient$Companion;

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field public static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private ntpTime:J

.field private ntpTimeReference:J

.field private roundTripTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/server/SNTPClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/server/SNTPClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/server/SNTPClient;->Companion:Lcom/kakaogame/server/SNTPClient$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final read32([BI)J
    .locals 5

    .line 1239
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 1249
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    .line 1259
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    .line 1269
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0x80

    const/16 v3, 0x80

    if-ne p2, v3, :cond_0

    and-int/lit8 p2, v0, 0x7f

    add-int/lit16 v0, p2, 0x80

    :cond_0
    and-int/lit16 p2, v1, 0x80

    if-ne p2, v3, :cond_1

    and-int/lit8 p2, v1, 0x7f

    add-int/lit16 v1, p2, 0x80

    :cond_1
    and-int/lit16 p2, v2, 0x80

    if-ne p2, v3, :cond_2

    and-int/lit8 p2, v2, 0x7f

    add-int/lit16 v2, p2, 0x80

    :cond_2
    and-int/lit16 p2, p1, 0x80

    if-ne p2, v3, :cond_3

    and-int/lit8 p1, p1, 0x7f

    add-int/2addr p1, v3

    :cond_3
    int-to-long v3, v0

    const/16 p2, 0x18

    shl-long/2addr v3, p2

    int-to-long v0, v1

    const/16 p2, 0x10

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    int-to-long v0, v2

    const/16 p2, 0x8

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    int-to-long p1, p1

    add-long/2addr v3, p1

    return-wide v3

    .array-data 1
    .end array-data
.end method

.method private final readTimeStamp([BI)J
    .locals 4

    .line 1419
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/server/SNTPClient;->read32([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    .line 1429
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/server/SNTPClient;->read32([BI)J

    move-result-wide p1

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    const-wide v2, 0x100000000L

    .line 1439
    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final writeTimeStamp([BIJ)V
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 1529
    div-long v2, p3, v0

    mul-long v4, v2, v0

    sub-long/2addr p3, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v6, v2, v5

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 1579
    aput-byte v6, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/16 v6, 0x10

    shr-long v7, v2, v6

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 1589
    aput-byte v7, p1, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v7, 0x8

    shr-long v8, v2, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 1599
    aput-byte v8, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/4 v8, 0x0

    shr-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 1609
    aput-byte v2, p1, v4

    const-wide v2, 0x100000000L

    mul-long/2addr p3, v2

    .line 1619
    div-long/2addr p3, v0

    add-int/lit8 v0, p2, 0x1

    shr-long v1, p3, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1639
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-long v1, p3, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 1649
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-long/2addr p3, v7

    long-to-int p3, p3

    int-to-byte p3, p3

    .line 1659
    aput-byte p3, p1, p2

    .line 1679
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double/2addr p2, v1

    double-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getNtpTime()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/kakaogame/server/SNTPClient;->ntpTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNtpTimeReference()J
    .locals 2

    .line 449
    iget-wide v0, p0, Lcom/kakaogame/server/SNTPClient;->ntpTimeReference:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRoundTripTime()J
    .locals 2

    .line 539
    iget-wide v0, p0, Lcom/kakaogame/server/SNTPClient;->roundTripTime:J

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final requestTime(Ljava/lang/String;I)Z
    .locals 19

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 669
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v2, p2

    .line 679
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 689
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const/16 v4, 0x30

    new-array v5, v4, [B

    .line 709
    new-instance v6, Ljava/net/DatagramPacket;

    const/16 v7, 0x7b

    invoke-direct {v6, v5, v4, v2, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v2, 0x1b

    aput-byte v2, v5, v0

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/16 v2, 0x28

    .line 809
    invoke-direct {v1, v5, v2, v7, v8}, Lcom/kakaogame/server/SNTPClient;->writeTimeStamp([BIJ)V

    .line 819
    invoke-virtual {v3, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 849
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-direct {v6, v5, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 859
    invoke-virtual {v3, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 869
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v9, v11, v9

    add-long/2addr v7, v9

    const/16 v4, 0x18

    .line 909
    invoke-direct {v1, v5, v4}, Lcom/kakaogame/server/SNTPClient;->readTimeStamp([BI)J

    move-result-wide v13

    const/16 v4, 0x20

    .line 919
    invoke-direct {v1, v5, v4}, Lcom/kakaogame/server/SNTPClient;->readTimeStamp([BI)J

    move-result-wide v15

    .line 929
    invoke-direct {v1, v5, v2}, Lcom/kakaogame/server/SNTPClient;->readTimeStamp([BI)J

    move-result-wide v4

    sub-long v17, v4, v15

    sub-long v9, v9, v17

    sub-long/2addr v15, v13

    sub-long/2addr v4, v7

    add-long/2addr v15, v4

    const/4 v2, 0x2

    int-to-long v4, v2

    .line 1029
    div-long/2addr v15, v4

    add-long/2addr v7, v15

    .line 1089
    iput-wide v7, v1, Lcom/kakaogame/server/SNTPClient;->ntpTime:J

    .line 1099
    iput-wide v11, v1, Lcom/kakaogame/server/SNTPClient;->ntpTimeReference:J

    .line 1109
    iput-wide v9, v1, Lcom/kakaogame/server/SNTPClient;->roundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    throw v0

    :catch_1
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    return v0

    .array-data 1
    .end array-data
.end method
