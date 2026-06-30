.class public final Lcom/kakaogame/server/KeyBaseResult$ResultCode;
.super Ljava/lang/Object;
.source "KeyBaseResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/server/KeyBaseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResultCode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u001a\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/kakaogame/server/KeyBaseResult$ResultCode;",
        "",
        "<init>",
        "()V",
        "SUCCESS",
        "",
        "BAD_REQUEST",
        "AUTH_FAILURE",
        "FORBIDDEN",
        "NOT_FOUND",
        "NOT_EXIST_DATA",
        "ALREADY_USED_IDP_ACCOUNT",
        "CONFLICT_DATA",
        "INTERNAL_ERROR",
        "SERVICE_UNAVAILABLE",
        "NETWORK_FAILURE",
        "SERVER_TIMEOUT",
        "SERVER_EXCEPTION",
        "SERVER_INVALID_RESPONSE",
        "SERVER_CONNECTION_FAILED",
        "INITIALIZATION_FAILED",
        "NOT_INITIALIZED",
        "NOT_AUTHORIZED",
        "INVALID_PARAMETER",
        "CLIENT_EXCEPTION",
        "INVALID_STATE",
        "IDP_AUTH_FAILURE",
        "NOT_SUPPORTED",
        "USER_CANCELED",
        "APP_TERMINATE",
        "FAILURE",
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
.field public static final ALREADY_USED_IDP_ACCOUNT:I = 0x196

.field public static final APP_TERMINATE:I = 0x26ac

.field public static final AUTH_FAILURE:I = 0x191

.field public static final BAD_REQUEST:I = 0x190

.field public static final CLIENT_EXCEPTION:I = 0xfa1

.field public static final CONFLICT_DATA:I = 0x199

.field public static final FAILURE:I = 0x270f

.field public static final FORBIDDEN:I = 0x193

.field public static final IDP_AUTH_FAILURE:I = 0xfaa

.field public static final INITIALIZATION_FAILED:I = 0xbb8

.field public static final INSTANCE:Lcom/kakaogame/server/KeyBaseResult$ResultCode;

.field public static final INTERNAL_ERROR:I = 0x1f4

.field public static final INVALID_PARAMETER:I = 0xfa0

.field public static final INVALID_STATE:I = 0xfa2

.field public static final NETWORK_FAILURE:I = 0x3e9

.field public static final NOT_AUTHORIZED:I = 0xbba

.field public static final NOT_EXIST_DATA:I = 0x196

.field public static final NOT_FOUND:I = 0x194

.field public static final NOT_INITIALIZED:I = 0xbb9

.field public static final NOT_SUPPORTED:I = 0x1389

.field public static final SERVER_CONNECTION_FAILED:I = 0x7d4

.field public static final SERVER_EXCEPTION:I = 0x7d2

.field public static final SERVER_INVALID_RESPONSE:I = 0x7d3

.field public static final SERVER_TIMEOUT:I = 0x7d1

.field public static final SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SUCCESS:I = 0xc8

.field public static final USER_CANCELED:I = 0x2329


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/server/KeyBaseResult$ResultCode;

    invoke-direct {v0}, Lcom/kakaogame/server/KeyBaseResult$ResultCode;-><init>()V

    sput-object v0, Lcom/kakaogame/server/KeyBaseResult$ResultCode;->INSTANCE:Lcom/kakaogame/server/KeyBaseResult$ResultCode;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
