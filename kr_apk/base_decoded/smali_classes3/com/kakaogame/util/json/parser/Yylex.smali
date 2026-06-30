.class public final Lcom/kakaogame/util/json/parser/Yylex;
.super Ljava/lang/Object;
.source "Yylex.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/util/json/parser/Yylex$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 .2\u00020\u0001:\u0001.B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0003J\u0006\u0010\u001f\u001a\u00020\u0007J\u000e\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u0007J\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0007J\u0006\u0010\'\u001a\u00020\u0007J\u0010\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u0007H\u0002J\u000e\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\u0007J\u0008\u0010,\u001a\u0004\u0018\u00010-R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/kakaogame/util/json/parser/Yylex;",
        "",
        "zzReader",
        "Ljava/io/Reader;",
        "<init>",
        "(Ljava/io/Reader;)V",
        "zzState",
        "",
        "zzLexicalState",
        "zzBuffer",
        "",
        "zzMarkedPos",
        "zzCurrentPos",
        "zzStartRead",
        "zzEndRead",
        "yyline",
        "value",
        "position",
        "getPosition",
        "()I",
        "yycolumn",
        "zzAtBOL",
        "",
        "zzAtEOF",
        "sb",
        "Ljava/lang/StringBuffer;",
        "zzRefill",
        "yyclose",
        "",
        "yyreset",
        "reader",
        "yystate",
        "yybegin",
        "newState",
        "yytext",
        "",
        "yycharat",
        "",
        "pos",
        "yylength",
        "zzScanError",
        "errorCode",
        "yypushback",
        "number",
        "yylex",
        "Lcom/kakaogame/util/json/parser/Yytoken;",
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
.field public static final Companion:Lcom/kakaogame/util/json/parser/Yylex$Companion;

.field public static final STRING_BEGIN:I = 0x2

.field public static final YYEOF:I = -0x1

.field public static final YYINITIAL:I = 0x0

.field private static final ZZ_ACTION:[I

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP:[C

.field private static final ZZ_CMAP_PACKED:Ljava/lang/String; = "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

.field private static final ZZ_TRANS:[I

.field private static final ZZ_UNKNOWN_ERROR:I


# instance fields
.field private position:I

.field private sb:Ljava/lang/StringBuffer;

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEndRead:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/kakaogame/util/json/parser/Yylex$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/util/json/parser/Yylex$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/util/json/parser/Yylex;->Companion:Lcom/kakaogame/util/json/parser/Yylex$Companion;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 4629
    fill-array-data v1, :array_0

    .line 4619
    sput-object v1, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_LEXSTATE:[I

    const-string v1, "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

    .line 4789
    invoke-static {v0, v1}, Lcom/kakaogame/util/json/parser/Yylex$Companion;->access$zzUnpackCMap(Lcom/kakaogame/util/json/parser/Yylex$Companion;Ljava/lang/String;)[C

    move-result-object v1

    sput-object v1, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_CMAP:[C

    .line 4839
    invoke-static {v0}, Lcom/kakaogame/util/json/parser/Yylex$Companion;->access$zzUnpackAction(Lcom/kakaogame/util/json/parser/Yylex$Companion;)[I

    move-result-object v1

    sput-object v1, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_ACTION:[I

    .line 5139
    invoke-static {v0}, Lcom/kakaogame/util/json/parser/Yylex$Companion;->access$zzUnpackRowMap(Lcom/kakaogame/util/json/parser/Yylex$Companion;)[I

    move-result-object v1

    sput-object v1, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_ROWMAP:[I

    const/16 v1, 0x2a3

    new-array v1, v1, [I

    .line 5449
    fill-array-data v1, :array_1

    .line 5439
    sput-object v1, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_TRANS:[I

    const v1, 0x5437aee2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x225ba4b6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x4517c1af

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    .line 6239
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 6209
    sput-object v1, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 6299
    invoke-static {v0}, Lcom/kakaogame/util/json/parser/Yylex$Companion;->access$zzUnpackAttribute(Lcom/kakaogame/util/json/parser/Yylex$Companion;)[I

    move-result-object v0

    sput-object v0, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_ATTRIBUTE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
        0x2
        0x5
        0x2
        0x6
        0x2
        0x2
        0x7
        0x8
        0x2
        0x9
        0x2
        0x2
        0x2
        0x2
        0x2
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x11
        0x12
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        0x13
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x5
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x22
        0x23
        -0x1
        -0x1
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x25
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x29
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzReader:Ljava/io/Reader;

    const/16 p1, 0x4000

    new-array p1, p1, [C

    .line 309
    iput-object p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    const/4 p1, 0x1

    .line 619
    iput-boolean p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzAtBOL:Z

    .line 679
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final zzRefill()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 829
    iget-object v2, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    .line 849
    iget v3, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    sub-int/2addr v3, v0

    .line 819
    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    iget v2, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    .line 889
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzCurrentPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzCurrentPos:I

    .line 899
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    .line 909
    iput v1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    .line 939
    :cond_0
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzCurrentPos:I

    iget-object v2, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    array-length v3, v2

    if-lt v0, v3, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 959
    new-array v0, v0, [C

    .line 969
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 979
    iput-object v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzReader:Ljava/io/Reader;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1029
    iget-object v2, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    iget v3, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    .line 1039
    array-length v4, v2

    sub-int/2addr v4, v3

    .line 1019
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_2

    .line 1069
    iget v2, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    return v1

    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 1119
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzReader:Ljava/io/Reader;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 1159
    :cond_3
    iget-object v2, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    iget v3, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    int-to-char v0, v0

    aput-char v0, v2, v3

    :goto_0
    return v1

    :cond_4
    return v2

    .array-data 1
    .end array-data
.end method

.method private final zzScanError(I)V
    .locals 1

    .line 2209
    :try_start_0
    sget-object v0, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2229
    :catch_0
    sget-object p1, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 2249
    :goto_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getPosition()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->position:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final yybegin(I)V
    .locals 0

    .line 1719
    iput p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzLexicalState:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final yycharat(I)C
    .locals 2

    .line 1939
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    iget v1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final yyclose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1299
    iput-boolean v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzAtEOF:Z

    .line 1309
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    iput v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    .line 1319
    iget-object v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final yylength()I
    .locals 2

    .line 2009
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    iget v1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    sub-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public final yylex()Lcom/kakaogame/util/json/parser/Yytoken;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/kakaogame/util/json/parser/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2559
    iget v0, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    .line 2569
    iget-object v2, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    .line 2579
    sget-object v3, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_CMAP:[C

    .line 2589
    sget-object v4, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_TRANS:[I

    .line 2599
    sget-object v5, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_ROWMAP:[I

    .line 2609
    sget-object v6, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_ATTRIBUTE:[I

    .line 2629
    :goto_0
    :pswitch_0
    iget v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    .line 2639
    iget v8, v1, Lcom/kakaogame/util/json/parser/Yylex;->position:I

    iget v9, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    sub-int v9, v7, v9

    add-int/2addr v8, v9

    iput v8, v1, Lcom/kakaogame/util/json/parser/Yylex;->position:I

    .line 2659
    iput v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    .line 2669
    iput v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzCurrentPos:I

    .line 2689
    sget-object v8, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_LEXSTATE:[I

    iget v9, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzLexicalState:I

    aget v8, v8, v9

    iput v8, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzState:I

    const/4 v8, -0x1

    move v9, v7

    move v10, v8

    :goto_1
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v7, v0, :cond_0

    add-int/lit8 v13, v7, 0x1

    .line 2709
    aget-char v7, v2, v7

    move/from16 v16, v13

    move v13, v9

    move/from16 v9, v16

    goto :goto_2

    :cond_0
    iget-boolean v13, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzAtEOF:Z

    if-eqz v13, :cond_1

    move v7, v8

    goto :goto_4

    .line 2759
    :cond_1
    iput v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzCurrentPos:I

    .line 2769
    iput v9, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    .line 2779
    invoke-direct/range {p0 .. p0}, Lcom/kakaogame/util/json/parser/Yylex;->zzRefill()Z

    move-result v0

    .line 2799
    iget v2, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzCurrentPos:I

    .line 2809
    iget v9, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    .line 2819
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    .line 2829
    iget v13, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    if-eqz v0, :cond_2

    move-object v2, v7

    move v7, v8

    move v0, v13

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 2879
    aget-char v2, v7, v2

    move/from16 v16, v9

    move v9, v0

    move v0, v13

    move/from16 v13, v16

    move-object/from16 v17, v7

    move v7, v2

    move-object/from16 v2, v17

    .line 2909
    :goto_2
    iget v14, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzState:I

    aget v14, v5, v14

    aget-char v15, v3, v7

    add-int/2addr v14, v15

    aget v14, v4, v14

    if-eq v14, v8, :cond_5

    .line 2929
    iput v14, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzState:I

    .line 2939
    aget v15, v6, v14

    and-int/lit8 v8, v15, 0x1

    if-ne v8, v12, :cond_4

    and-int/lit8 v8, v15, 0x8

    if-ne v8, v11, :cond_3

    move v10, v14

    goto :goto_4

    :cond_3
    move v7, v9

    move v10, v14

    goto :goto_3

    :cond_4
    move v7, v9

    move v9, v13

    :goto_3
    const/4 v8, -0x1

    goto :goto_1

    :cond_5
    move v9, v13

    .line 3029
    :goto_4
    iput v9, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    if-gez v10, :cond_6

    goto :goto_5

    .line 3039
    :cond_6
    sget-object v8, Lcom/kakaogame/util/json/parser/Yylex;->ZZ_ACTION:[I

    aget v10, v8, v10

    :goto_5
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v13, 0x0

    packed-switch v10, :pswitch_data_0

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    .line 4349
    iget v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    iget v8, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzCurrentPos:I

    if-ne v7, v8, :cond_7

    .line 4359
    iput-boolean v12, v1, Lcom/kakaogame/util/json/parser/Yylex;->zzAtEOF:Z

    return-object v13

    .line 3969
    :pswitch_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/util/json/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "this as java.lang.String).substring(startIndex)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x10

    invoke-static {v9}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 3979
    iget-object v9, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-char v7, v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 3999
    new-instance v2, Lcom/kakaogame/util/json/parser/ParseException;

    iget v3, v1, Lcom/kakaogame/util/json/parser/Yylex;->position:I

    invoke-direct {v2, v3, v8, v0}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v2

    .line 3279
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/util/json/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 3289
    new-instance v2, Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {v2, v9, v0}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v2

    .line 3339
    :pswitch_3
    new-instance v0, Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {v0, v9, v13}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 3499
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/util/json/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 3509
    new-instance v2, Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {v2, v9, v0}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v2

    .line 4059
    :pswitch_5
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 3659
    :pswitch_6
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 4219
    :pswitch_7
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 3909
    :pswitch_8
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 3179
    :pswitch_9
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 3709
    :pswitch_a
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 3809
    :pswitch_b
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 3389
    :pswitch_c
    invoke-virtual {v1, v9}, Lcom/kakaogame/util/json/parser/Yylex;->yybegin(I)V

    .line 3399
    new-instance v0, Lcom/kakaogame/util/json/parser/Yytoken;

    iget-object v2, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v9, v2}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 3449
    :pswitch_d
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 3059
    :pswitch_e
    iget-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/util/json/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 3759
    :pswitch_f
    new-instance v0, Lcom/kakaogame/util/json/parser/Yytoken;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v13}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 4269
    :pswitch_10
    new-instance v0, Lcom/kakaogame/util/json/parser/Yytoken;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v13}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 3609
    :pswitch_11
    new-instance v0, Lcom/kakaogame/util/json/parser/Yytoken;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v13}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 4109
    :pswitch_12
    new-instance v0, Lcom/kakaogame/util/json/parser/Yytoken;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v13}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 3229
    :pswitch_13
    new-instance v0, Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {v0, v8, v13}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 3859
    :pswitch_14
    new-instance v0, Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {v0, v12, v13}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 3109
    :pswitch_15
    iput-object v13, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    .line 3119
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v7, v1, Lcom/kakaogame/util/json/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    .line 3129
    invoke-virtual {v1, v8}, Lcom/kakaogame/util/json/parser/Yylex;->yybegin(I)V

    goto/16 :goto_0

    .line 4159
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/util/json/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 4169
    new-instance v2, Lcom/kakaogame/util/json/parser/Yytoken;

    invoke-direct {v2, v9, v0}, Lcom/kakaogame/util/json/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    return-object v2

    .line 3559
    :pswitch_17
    new-instance v0, Lcom/kakaogame/util/json/parser/ParseException;

    iget v2, v1, Lcom/kakaogame/util/json/parser/Yylex;->position:I

    invoke-virtual {v1, v9}, Lcom/kakaogame/util/json/parser/Yylex;->yycharat(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v2, v9, v3}, Lcom/kakaogame/util/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 4389
    :cond_7
    invoke-direct {v1, v12}, Lcom/kakaogame/util/json/parser/Yylex;->zzScanError(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .array-data 1
    .end array-data
.end method

.method public final yypushback(I)V
    .locals 1

    .line 2369
    invoke-virtual {p0}, Lcom/kakaogame/util/json/parser/Yylex;->yylength()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kakaogame/util/json/parser/Yylex;->zzScanError(I)V

    .line 2379
    :cond_0
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public final yyreset(Ljava/io/Reader;)V
    .locals 0

    .line 1459
    iput-object p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzReader:Ljava/io/Reader;

    const/4 p1, 0x1

    .line 1469
    iput-boolean p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzAtBOL:Z

    const/4 p1, 0x0

    .line 1479
    iput-boolean p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzAtEOF:Z

    .line 1489
    iput p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    .line 1499
    iput p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzEndRead:I

    .line 1509
    iput p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    .line 1519
    iput p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzCurrentPos:I

    .line 1529
    iput p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->yycolumn:I

    .line 1539
    iput p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->position:I

    .line 1549
    iput p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->yyline:I

    .line 1559
    iput p1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzLexicalState:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final yystate()I
    .locals 1

    .line 1629
    iget v0, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzLexicalState:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final yytext()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    .line 1789
    iget-object v1, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzBuffer:[C

    iget v2, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzStartRead:I

    iget v3, p0, Lcom/kakaogame/util/json/parser/Yylex;->zzMarkedPos:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
