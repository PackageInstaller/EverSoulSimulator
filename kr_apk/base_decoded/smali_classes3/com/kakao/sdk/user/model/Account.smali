.class public final Lcom/kakao/sdk/user/model/Account;
.super Ljava/lang/Object;
.source "User.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/model/Account$$serializer;,
        Lcom/kakao/sdk/user/model/Account$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008`\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u0091\u00012\u00020\u0001:\u0004\u0090\u0001\u0091\u0001B\u00f5\u0002\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010 \u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010!\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\"\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010#\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010%\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\'\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010(\u001a\u0004\u0018\u00010)\u00a2\u0006\u0002\u0010*B\u00b1\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010+J\u0010\u0010e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010f\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0010\u0010g\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010h\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u0010\u0010i\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010j\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0010\u0010k\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010l\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\u0019H\u00c6\u0003J\u0010\u0010n\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u0010\u0010o\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u0010\u0010p\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010q\u001a\u0004\u0018\u00010\u001dH\u00c6\u0003J\u0010\u0010r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010s\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0010\u0010t\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010u\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0010\u0010v\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010w\u001a\u0004\u0018\u00010\u001dH\u00c6\u0003J\u0010\u0010x\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010y\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0010\u0010z\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u0010\u0010{\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u0010\u0010|\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010}\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0010\u0010~\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010\u007f\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0011\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u0011\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u0011\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u00f8\u0002\u0010\u0083\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u001d2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0003\u0010\u0084\u0001J\u0015\u0010\u0085\u0001\u001a\u00020\u00052\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003H\u00d6\u0001J\n\u0010\u0088\u0001\u001a\u00020\u000cH\u00d6\u0001J(\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u008b\u0001\u001a\u00020\u00002\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u00c7\u0001R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R \u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u00080\u0010-\u001a\u0004\u00081\u00102R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R \u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u00086\u0010-\u001a\u0004\u00087\u00102R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00088\u0010-\u001a\u0004\u00089\u0010:R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u00105R \u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008<\u0010-\u001a\u0004\u0008=\u00102R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u00105R \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008?\u0010-\u001a\u0004\u0008@\u00102R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010BR \u0010\u001b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008C\u0010-\u001a\u0004\u0008D\u00102R \u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008E\u0010-\u001a\u0004\u0008\u000e\u00102R \u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008F\u0010-\u001a\u0004\u0008\u000f\u00102R \u0010\'\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008G\u0010-\u001a\u0004\u0008\'\u00102R \u0010&\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008H\u0010-\u001a\u0004\u0008&\u00102R \u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008I\u0010-\u001a\u0004\u0008\u001a\u00102R\u001e\u0010!\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008J\u0010-\u001a\u0004\u0008K\u00105R \u0010 \u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008L\u0010-\u001a\u0004\u0008M\u00102R\u001e\u0010#\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008N\u0010-\u001a\u0004\u0008O\u0010BR \u0010\"\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008P\u0010-\u001a\u0004\u0008Q\u00102R\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008R\u0010-\u001a\u0004\u0008S\u00105R \u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008T\u0010-\u001a\u0004\u0008U\u00102R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u00105R \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008W\u0010-\u001a\u0004\u0008X\u00102R\u001e\u0010%\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008Y\u0010-\u001a\u0004\u0008Z\u00105R \u0010$\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008[\u0010-\u001a\u0004\u0008\\\u00102R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008]\u0010^R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008_\u0010-\u001a\u0004\u0008`\u00102R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008a\u0010-\u001a\u0004\u0008b\u00102R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u00103\u0012\u0004\u0008c\u0010-\u001a\u0004\u0008d\u00102\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Lcom/kakao/sdk/user/model/Account;",
        "",
        "seen1",
        "",
        "profileNeedsAgreement",
        "",
        "profileNicknameNeedsAgreement",
        "profileImageNeedsAgreement",
        "profile",
        "Lcom/kakao/sdk/user/model/Profile;",
        "nameNeedsAgreement",
        "name",
        "",
        "emailNeedsAgreement",
        "isEmailValid",
        "isEmailVerified",
        "email",
        "ageRangeNeedsAgreement",
        "ageRange",
        "Lcom/kakao/sdk/user/model/AgeRange;",
        "birthyearNeedsAgreement",
        "birthyear",
        "birthdayNeedsAgreement",
        "birthday",
        "birthdayType",
        "Lcom/kakao/sdk/user/model/BirthdayType;",
        "isLeapMonth",
        "genderNeedsAgreement",
        "gender",
        "Lcom/kakao/sdk/user/model/Gender;",
        "legalNameNeedsAgreement",
        "legalName",
        "legalBirthDateNeedsAgreement",
        "legalBirthDate",
        "legalGenderNeedsAgreement",
        "legalGender",
        "phoneNumberNeedsAgreement",
        "phoneNumber",
        "isKoreanNeedsAgreement",
        "isKorean",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V",
        "getAgeRange$annotations",
        "()V",
        "getAgeRange",
        "()Lcom/kakao/sdk/user/model/AgeRange;",
        "getAgeRangeNeedsAgreement$annotations",
        "getAgeRangeNeedsAgreement",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getBirthday",
        "()Ljava/lang/String;",
        "getBirthdayNeedsAgreement$annotations",
        "getBirthdayNeedsAgreement",
        "getBirthdayType$annotations",
        "getBirthdayType",
        "()Lcom/kakao/sdk/user/model/BirthdayType;",
        "getBirthyear",
        "getBirthyearNeedsAgreement$annotations",
        "getBirthyearNeedsAgreement",
        "getEmail",
        "getEmailNeedsAgreement$annotations",
        "getEmailNeedsAgreement",
        "getGender",
        "()Lcom/kakao/sdk/user/model/Gender;",
        "getGenderNeedsAgreement$annotations",
        "getGenderNeedsAgreement",
        "isEmailValid$annotations",
        "isEmailVerified$annotations",
        "isKorean$annotations",
        "isKoreanNeedsAgreement$annotations",
        "isLeapMonth$annotations",
        "getLegalBirthDate$annotations",
        "getLegalBirthDate",
        "getLegalBirthDateNeedsAgreement$annotations",
        "getLegalBirthDateNeedsAgreement",
        "getLegalGender$annotations",
        "getLegalGender",
        "getLegalGenderNeedsAgreement$annotations",
        "getLegalGenderNeedsAgreement",
        "getLegalName$annotations",
        "getLegalName",
        "getLegalNameNeedsAgreement$annotations",
        "getLegalNameNeedsAgreement",
        "getName",
        "getNameNeedsAgreement$annotations",
        "getNameNeedsAgreement",
        "getPhoneNumber$annotations",
        "getPhoneNumber",
        "getPhoneNumberNeedsAgreement$annotations",
        "getPhoneNumberNeedsAgreement",
        "getProfile",
        "()Lcom/kakao/sdk/user/model/Profile;",
        "getProfileImageNeedsAgreement$annotations",
        "getProfileImageNeedsAgreement",
        "getProfileNeedsAgreement$annotations",
        "getProfileNeedsAgreement",
        "getProfileNicknameNeedsAgreement$annotations",
        "getProfileNicknameNeedsAgreement",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component3",
        "component30",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/kakao/sdk/user/model/Account;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
        "user_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/kakao/sdk/user/model/Account$Companion;


# instance fields
.field private final ageRange:Lcom/kakao/sdk/user/model/AgeRange;

.field private final ageRangeNeedsAgreement:Ljava/lang/Boolean;

.field private final birthday:Ljava/lang/String;

.field private final birthdayNeedsAgreement:Ljava/lang/Boolean;

.field private final birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

.field private final birthyear:Ljava/lang/String;

.field private final birthyearNeedsAgreement:Ljava/lang/Boolean;

.field private final email:Ljava/lang/String;

.field private final emailNeedsAgreement:Ljava/lang/Boolean;

.field private final gender:Lcom/kakao/sdk/user/model/Gender;

.field private final genderNeedsAgreement:Ljava/lang/Boolean;

.field private final isEmailValid:Ljava/lang/Boolean;

.field private final isEmailVerified:Ljava/lang/Boolean;

.field private final isKorean:Ljava/lang/Boolean;

.field private final isKoreanNeedsAgreement:Ljava/lang/Boolean;

.field private final isLeapMonth:Ljava/lang/Boolean;

.field private final legalBirthDate:Ljava/lang/String;

.field private final legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

.field private final legalGender:Lcom/kakao/sdk/user/model/Gender;

.field private final legalGenderNeedsAgreement:Ljava/lang/Boolean;

.field private final legalName:Ljava/lang/String;

.field private final legalNameNeedsAgreement:Ljava/lang/Boolean;

.field private final name:Ljava/lang/String;

.field private final nameNeedsAgreement:Ljava/lang/Boolean;

.field private final phoneNumber:Ljava/lang/String;

.field private final phoneNumberNeedsAgreement:Ljava/lang/Boolean;

.field private final profile:Lcom/kakao/sdk/user/model/Profile;

.field private final profileImageNeedsAgreement:Ljava/lang/Boolean;

.field private final profileNeedsAgreement:Ljava/lang/Boolean;

.field private final profileNicknameNeedsAgreement:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/user/model/Account$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/model/Account$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/model/Account;->Companion:Lcom/kakao/sdk/user/model/Account$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 4
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "profile_needs_agreement"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "profile_nickname_needs_agreement"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "profile_image_needs_agreement"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "name_needs_agreement"
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "email_needs_agreement"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "is_email_valid"
        .end annotation
    .end param
    .param p10    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "is_email_verified"
        .end annotation
    .end param
    .param p12    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "age_range_needs_agreement"
        .end annotation
    .end param
    .param p13    # Lcom/kakao/sdk/user/model/AgeRange;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "age_range"
        .end annotation
    .end param
    .param p14    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "birthyear_needs_agreement"
        .end annotation
    .end param
    .param p16    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "birthday_needs_agreement"
        .end annotation
    .end param
    .param p18    # Lcom/kakao/sdk/user/model/BirthdayType;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "birthday_type"
        .end annotation
    .end param
    .param p19    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "is_leap_month"
        .end annotation
    .end param
    .param p20    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "gender_needs_agreement"
        .end annotation
    .end param
    .param p22    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "legal_name_needs_agreement"
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "legal_name"
        .end annotation
    .end param
    .param p24    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "legal_birth_date_needs_agreement"
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "legal_birth_date"
        .end annotation
    .end param
    .param p26    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "legal_gender_needs_agreement"
        .end annotation
    .end param
    .param p27    # Lcom/kakao/sdk/user/model/Gender;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "legal_gender"
        .end annotation
    .end param
    .param p28    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "phone_number_needs_agreement"
        .end annotation
    .end param
    .param p29    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "phone_number"
        .end annotation
    .end param
    .param p30    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "is_korean_needs_agreement"
        .end annotation
    .end param
    .param p31    # Ljava/lang/Boolean;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "is_korean"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    move-object v0, p0

    move v1, p1

    const v2, 0x3fffffff    # 1.9999999f

    and-int v3, v1, v2

    if-eq v2, v3, :cond_0

    .line 849
    sget-object v3, Lcom/kakao/sdk/user/model/Account$$serializer;->INSTANCE:Lcom/kakao/sdk/user/model/Account$$serializer;

    invoke-virtual {v3}, Lcom/kakao/sdk/user/model/Account$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p2

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p3

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p4

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p5

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    move-object v1, p6

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p7

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p9

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    move-object v1, p10

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    move-object v1, p11

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    move-object v0, p0

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 869
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p2

    .line 879
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p3

    .line 889
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p4

    .line 899
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    move-object v1, p5

    .line 919
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p6

    .line 929
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    move-object v1, p7

    .line 949
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p8

    .line 959
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    move-object v1, p9

    .line 969
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    move-object v1, p10

    .line 979
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    move-object v1, p11

    .line 999
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    move-object v1, p12

    .line 1009
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    move-object v1, p13

    .line 1029
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    .line 1039
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 1059
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    .line 1069
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 1079
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    move-object/from16 v1, p18

    .line 1089
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    .line 1109
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p20

    .line 1119
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    move-object/from16 v1, p21

    .line 1139
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p22

    .line 1149
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 1169
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p24

    .line 1179
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    move-object/from16 v1, p25

    .line 1199
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p26

    .line 1209
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    move-object/from16 v1, p27

    .line 1229
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p28

    .line 1239
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 1259
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v1, p30

    .line 1269
    iput-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic copy$default(Lcom/kakao/sdk/user/model/Account;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/kakao/sdk/user/model/Account;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p31

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p30

    :goto_1d
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p29, v15

    move-object/from16 p30, v1

    invoke-virtual/range {p0 .. p30}, Lcom/kakao/sdk/user/model/Account;->copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/kakao/sdk/user/model/Account;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public static synthetic getAgeRange$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "age_range"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getAgeRangeNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "age_range_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getBirthdayNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "birthday_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getBirthdayType$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "birthday_type"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getBirthyearNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "birthyear_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getEmailNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "email_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getGenderNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "gender_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getLegalBirthDate$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "legal_birth_date"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getLegalBirthDateNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "legal_birth_date_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getLegalGender$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "legal_gender"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getLegalGenderNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "legal_gender_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getLegalName$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "legal_name"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getLegalNameNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "legal_name_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getNameNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "name_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getPhoneNumber$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "phone_number"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getPhoneNumberNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "phone_number_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getProfileImageNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "profile_image_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getProfileNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "profile_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic getProfileNicknameNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "profile_nickname_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isEmailValid$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_email_valid"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isEmailVerified$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_email_verified"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isKorean$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_korean"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isKoreanNeedsAgreement$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_korean_needs_agreement"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic isLeapMonth$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "is_leap_month"
    .end annotation

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final write$Self(Lcom/kakao/sdk/user/model/Account;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/user/model/Profile$$serializer;->INSTANCE:Lcom/kakao/sdk/user/model/Profile$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    const/4 v2, 0x4

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    const/4 v2, 0x7

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    const/16 v2, 0x8

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    const/16 v2, 0xa

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/user/model/AgeRangeSerializer;->INSTANCE:Lcom/kakao/sdk/user/model/AgeRangeSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    const/16 v2, 0xb

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    const/16 v2, 0xc

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    const/16 v2, 0xe

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/user/model/BirthdayTypeSerializer;->INSTANCE:Lcom/kakao/sdk/user/model/BirthdayTypeSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    const/16 v2, 0x10

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    const/16 v2, 0x11

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    const/16 v2, 0x12

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/user/model/GenderSerializer;->INSTANCE:Lcom/kakao/sdk/user/model/GenderSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    const/16 v2, 0x13

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    const/16 v2, 0x14

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    const/16 v2, 0x15

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    const/16 v2, 0x16

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    const/16 v2, 0x18

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/kakao/sdk/user/model/GenderSerializer;->INSTANCE:Lcom/kakao/sdk/user/model/GenderSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    const/16 v2, 0x19

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    const/16 v2, 0x1a

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    const/16 v2, 0x1b

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    const/16 v2, 0x1c

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    const/16 v1, 0x1d

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component11()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component12()Lcom/kakao/sdk/user/model/AgeRange;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component13()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component15()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component17()Lcom/kakao/sdk/user/model/BirthdayType;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component18()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component19()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component20()Lcom/kakao/sdk/user/model/Gender;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component21()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component23()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component25()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component26()Lcom/kakao/sdk/user/model/Gender;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component27()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component28()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component29()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component30()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component4()Lcom/kakao/sdk/user/model/Profile;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component7()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component8()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final component9()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/kakao/sdk/user/model/Account;
    .locals 32

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    new-instance v31, Lcom/kakao/sdk/user/model/Account;

    move-object/from16 v0, v31

    invoke-direct/range {v0 .. v30}, Lcom/kakao/sdk/user/model/Account;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Profile;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/AgeRange;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/kakao/sdk/user/model/BirthdayType;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lcom/kakao/sdk/user/model/Gender;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v31

    .array-data 1
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kakao/sdk/user/model/Account;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kakao/sdk/user/model/Account;

    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    return v2

    :cond_1f
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAgeRange()Lcom/kakao/sdk/user/model/AgeRange;
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAgeRangeNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getBirthdayNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getBirthdayType()Lcom/kakao/sdk/user/model/BirthdayType;
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getBirthyear()Ljava/lang/String;
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getBirthyearNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEmailNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGender()Lcom/kakao/sdk/user/model/Gender;
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGenderNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLegalBirthDate()Ljava/lang/String;
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLegalBirthDateNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLegalGender()Lcom/kakao/sdk/user/model/Gender;
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLegalGenderNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLegalName()Ljava/lang/String;
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLegalNameNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNameNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPhoneNumberNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getProfile()Lcom/kakao/sdk/user/model/Profile;
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getProfileImageNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getProfileNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getProfileNicknameNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/kakao/sdk/user/model/Profile;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Lcom/kakao/sdk/user/model/AgeRange;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Lcom/kakao/sdk/user/model/BirthdayType;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Lcom/kakao/sdk/user/model/Gender;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_14

    move v2, v1

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v1

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_16

    move v2, v1

    goto :goto_16

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    if-nez v2, :cond_17

    move v2, v1

    goto :goto_17

    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_18

    move v2, v1

    goto :goto_18

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    if-nez v2, :cond_19

    move v2, v1

    goto :goto_19

    :cond_19
    invoke-virtual {v2}, Lcom/kakao/sdk/user/model/Gender;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_1a

    move v2, v1

    goto :goto_1a

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_1b

    move v2, v1

    goto :goto_1b

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    if-nez v2, :cond_1c

    move v2, v1

    goto :goto_1c

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    if-nez v2, :cond_1d

    goto :goto_1d

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1d
    add-int/2addr v0, v1

    return v0

    .array-data 1
    .end array-data
.end method

.method public final isEmailValid()Ljava/lang/Boolean;
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isEmailVerified()Ljava/lang/Boolean;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isKorean()Ljava/lang/Boolean;
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isKoreanNeedsAgreement()Ljava/lang/Boolean;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isLeapMonth()Ljava/lang/Boolean;
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kakao/sdk/user/model/Account;->profileNeedsAgreement:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/kakao/sdk/user/model/Account;->profileNicknameNeedsAgreement:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/kakao/sdk/user/model/Account;->profileImageNeedsAgreement:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/kakao/sdk/user/model/Account;->profile:Lcom/kakao/sdk/user/model/Profile;

    iget-object v5, v0, Lcom/kakao/sdk/user/model/Account;->nameNeedsAgreement:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/kakao/sdk/user/model/Account;->name:Ljava/lang/String;

    iget-object v7, v0, Lcom/kakao/sdk/user/model/Account;->emailNeedsAgreement:Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/kakao/sdk/user/model/Account;->isEmailValid:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/kakao/sdk/user/model/Account;->isEmailVerified:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/kakao/sdk/user/model/Account;->email:Ljava/lang/String;

    iget-object v11, v0, Lcom/kakao/sdk/user/model/Account;->ageRangeNeedsAgreement:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/kakao/sdk/user/model/Account;->ageRange:Lcom/kakao/sdk/user/model/AgeRange;

    iget-object v13, v0, Lcom/kakao/sdk/user/model/Account;->birthyearNeedsAgreement:Ljava/lang/Boolean;

    iget-object v14, v0, Lcom/kakao/sdk/user/model/Account;->birthyear:Ljava/lang/String;

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->birthdayNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->birthday:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->birthdayType:Lcom/kakao/sdk/user/model/BirthdayType;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->isLeapMonth:Ljava/lang/Boolean;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->genderNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->gender:Lcom/kakao/sdk/user/model/Gender;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalNameNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalName:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalBirthDateNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalBirthDate:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalGenderNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v26, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->legalGender:Lcom/kakao/sdk/user/model/Gender;

    move-object/from16 v27, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->phoneNumberNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v28, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->phoneNumber:Ljava/lang/String;

    move-object/from16 v29, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->isKoreanNeedsAgreement:Ljava/lang/Boolean;

    move-object/from16 v30, v15

    iget-object v15, v0, Lcom/kakao/sdk/user/model/Account;->isKorean:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v31, v15

    const-string v15, "Account(profileNeedsAgreement="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileNicknameNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profileImageNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEmailValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEmailVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ageRangeNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ageRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthyearNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthyear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthdayNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthdayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLeapMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", genderNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", legalNameNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", legalName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", legalBirthDateNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", legalBirthDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", legalGenderNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", legalGender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumberNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isKoreanNeedsAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isKorean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method
