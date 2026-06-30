.class public final Lcom/liapp/aa;
.super Ljava/lang/Object;
.source "\u072f\u076e\u06af\u06b3\u072f.java"


# static fields
.field public static final ׯڳ׮ڭܩ:I = 0x1

.field public static final گٱܱڬܨ:Ljava/lang/String;

.field public static final ڲحز׳ٯ:Ljava/lang/String;

.field public static final ۲ܭׯײٮ:Ljava/lang/String;

.field public static final ܳ׭֮׳ٯ:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DII\tOOAW\u001f"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liapp/aa;->ڲحز׳ٯ:Ljava/lang/String;

    const-string v0, "OOJ^\u0008"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liapp/aa;->گٱܱڬܨ:Ljava/lang/String;

    const-string v0, "\u001d\u0003_"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liapp/aa;->۲ܭׯײٮ:Ljava/lang/String;

    .line 7
    const-string v0, "[\\Y\n"

    invoke-static {v0}, Lcom/liapp/p;->۱٬ڱܯޫ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/liapp/aa;->ܳ׭֮׳ٯ:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method
