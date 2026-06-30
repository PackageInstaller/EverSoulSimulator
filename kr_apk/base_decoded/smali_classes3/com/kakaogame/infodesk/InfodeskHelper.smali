.class public final Lcom/kakaogame/infodesk/InfodeskHelper;
.super Ljava/lang/Object;
.source "InfodeskHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/infodesk/InfodeskHelper$AgreementType;,
        Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;,
        Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;,
        Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;,
        Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;,
        Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;,
        Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0089\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0003\u0008\u00ad\u0001\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000e\u00f5\u0001\u00f6\u0001\u00f7\u0001\u00f8\u0001\u00f9\u0001\u00fa\u0001\u00fb\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\u0006\u001a\u00020\u00072\u0016\u0010\u0008\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\t\"\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\nJ\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\"\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0006\u0010\u0014\u001a\u00020\u0007J\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010c\u001a\u00020\u0007J\u0006\u0010e\u001a\u00020\u0007J\u0006\u0010f\u001a\u00020\u0007J\u0012\u0010\u00aa\u0001\u001a\u00020!2\t\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u0013J\u0012\u0010\u00ac\u0001\u001a\u00020!2\t\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\u0013J\u0007\u0010\u00bd\u0001\u001a\u00020!J\u0007\u0010\u00ce\u0001\u001a\u00020\u0007J\u0007\u0010\u00cf\u0001\u001a\u00020\u0007J\u0007\u0010\u00d0\u0001\u001a\u00020\u0007J\u0007\u0010\u00d1\u0001\u001a\u00020\u0007J\u0007\u0010\u00d2\u0001\u001a\u00020\u0007J\u0007\u0010\u00d3\u0001\u001a\u00020\u0007J\u0007\u0010\u00d4\u0001\u001a\u000205J\u0007\u0010\u00d5\u0001\u001a\u000205J\u0007\u0010\u00d6\u0001\u001a\u00020\u0007J\u001c\u0010\u00d7\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0007\u0010\u00d8\u0001\u001a\u00020\u0005J\u0010\u0010\u00d9\u0001\u001a\u00020\u00072\u0007\u0010\u00da\u0001\u001a\u00020\u0005J\u0019\u0010\u00db\u0001\u001a\u00020\u00072\u0007\u0010\u00dc\u0001\u001a\u00020\u00052\u0007\u0010\u00dd\u0001\u001a\u000205J\r\u0010\u00de\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0017J\u001d\u0010\u00df\u0001\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0002J\u0019\u0010\u00e0\u0001\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0007H\u0002J\u0019\u0010\u00e1\u0001\u001a\u0002052\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u000205H\u0002J+\u0010\u00e2\u0001\u001a\u00020!2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020!2\u0007\u0010\u00e3\u0001\u001a\u00020!2\u0007\u0010\u00e4\u0001\u001a\u00020!H\u0002JC\u0010\u00e2\u0001\u001a\u00020!2\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u000f2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020!2\u0007\u0010\u00e3\u0001\u001a\u00020!2\u0007\u0010\u00e4\u0001\u001a\u00020!H\u0002J!\u0010\u00e5\u0001\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020!\u0018\u00010\u000f2\u0006\u0010\u000c\u001a\u00020\u0005H\u0002J&\u0010\u00e6\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000f2\u0006\u0010\u000c\u001a\u00020\u00052\u0007\u0010\u00d8\u0001\u001a\u00020\u0005H\u0002J\u0017\u0010\u00e7\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00172\u0006\u0010\u000c\u001a\u00020\u0005H\u0002J \u0010\u00e8\u0001\u001a\u0008\u0012\u0004\u0012\u0002050\u00172\u0006\u0010\u000c\u001a\u00020\u00052\u0007\u0010\u00dc\u0001\u001a\u00020\u0005H\u0002J \u0010\u00e9\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00172\u0006\u0010\u000c\u001a\u00020\u00052\u0007\u0010\u00ea\u0001\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R!\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0013\u0010$\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0011\u0010\'\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001fR\u0016\u0010(\u001a\u0004\u0018\u00010)8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0011\u0010,\u001a\u00020-8F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0011\u00100\u001a\u0002018F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u0011\u00104\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0011\u00108\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u00089\u00107R\u0011\u0010:\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u0008;\u00107R\u0011\u0010<\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u0008=\u00107R\u0011\u0010>\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010&R\u0011\u0010@\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010\u001fR\u0013\u0010B\u001a\u0004\u0018\u00010C8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010ER\u0013\u0010F\u001a\u0004\u0018\u00010G8F\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR\u0011\u0010J\u001a\u00020K8F\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010MR\u0011\u0010N\u001a\u00020O8F\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010QR\u0016\u0010R\u001a\u0004\u0018\u00010)8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008S\u0010+R\u0011\u0010T\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010\u001fR\u0013\u0010U\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010&R\u0013\u0010W\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010&R\u0011\u0010Y\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u0008Z\u00107R\u0011\u0010[\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u0008\\\u00107R\u0011\u0010]\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010\u001fR\u0011\u0010_\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010#R\u0013\u0010a\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008b\u0010&R\u0011\u0010d\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010\u001fR\u0013\u0010g\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010&R\u0013\u0010i\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010&R\u0013\u0010k\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010&R\u0013\u0010m\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008n\u0010&R\u0013\u0010o\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008p\u0010&R\u0013\u0010q\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010&R\u0011\u0010s\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010#R\u0011\u0010u\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010#R\u0011\u0010w\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010#R\u0011\u0010y\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u0008z\u00107R\u0011\u0010{\u001a\u0002058F\u00a2\u0006\u0006\u001a\u0004\u0008|\u00107R\u0011\u0010}\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008~\u0010#R\u0012\u0010\u007f\u001a\u0002058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0080\u0001\u00107R\u0013\u0010\u0081\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u0081\u0001\u0010\u001fR\u0013\u0010\u0082\u0001\u001a\u0002058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0001\u00107R\u0015\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0085\u0001\u0010&R\u0013\u0010\u0086\u0001\u001a\u0002058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0087\u0001\u00107R\u0015\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0089\u0001\u0010&R\u0015\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u008b\u0001\u0010&R\u0015\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u008d\u0001\u0010&R\u0015\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u008f\u0001\u0010&R\u0015\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0091\u0001\u0010&R\u0015\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0093\u0001\u0010&R\u0015\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0095\u0001\u0010&R\u0015\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0097\u0001\u0010&R\u0015\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u0099\u0001\u0010&R\u0015\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u009b\u0001\u0010&R\u0015\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u009d\u0001\u0010&R\u0015\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u009f\u0001\u0010&R\u0015\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a1\u0001\u0010&R\u0015\u0010\u00a2\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a3\u0001\u0010&R\u0015\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a5\u0001\u0010&R\u0013\u0010\u00a6\u0001\u001a\u00020!8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a7\u0001\u0010#R\u0013\u0010\u00a8\u0001\u001a\u00020!8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a9\u0001\u0010#R\u0015\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ae\u0001\u0010&R\u0015\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b0\u0001\u0010&R\u0015\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b2\u0001\u0010&R\u0015\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b4\u0001\u0010&R\u0015\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b6\u0001\u0010&R\u0015\u0010\u00b7\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b8\u0001\u0010&R\u0013\u0010\u00b9\u0001\u001a\u0002058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ba\u0001\u00107R\u0013\u0010\u00bb\u0001\u001a\u00020!8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00bc\u0001\u0010#R\u0015\u0010\u00be\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00bf\u0001\u0010&R\u0013\u0010\u00c0\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c1\u0001\u0010\u001fR\u0013\u0010\u00c2\u0001\u001a\u00020!8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c3\u0001\u0010#R\u0013\u0010\u00c4\u0001\u001a\u00020!8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c5\u0001\u0010#R\u0013\u0010\u00c6\u0001\u001a\u00020!8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c7\u0001\u0010#R\u0013\u0010\u00c8\u0001\u001a\u00020!8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00c9\u0001\u0010#R\u0013\u0010\u00ca\u0001\u001a\u00020!8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00cb\u0001\u0010#R\u0013\u0010\u00cc\u0001\u001a\u00020!8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00cd\u0001\u0010#R\u0015\u0010\u00eb\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ec\u0001\u0010&R\u0015\u0010\u00ed\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ee\u0001\u0010&R\u0015\u0010\u00ef\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00f0\u0001\u0010&R\u0013\u0010\u00f1\u0001\u001a\u00020\u00078F\u00a2\u0006\u0007\u001a\u0005\u0008\u00f2\u0001\u0010\u001fR\u0015\u0010\u00f3\u0001\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0007\u001a\u0005\u0008\u00f4\u0001\u0010&\u00a8\u0006\u00fc\u0001"
    }
    d2 = {
        "Lcom/kakaogame/infodesk/InfodeskHelper;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "containsKey",
        "",
        "keys",
        "",
        "([Ljava/lang/String;)Z",
        "getValue",
        "key",
        "defaultValue",
        "appOption",
        "",
        "getAppOption",
        "()Ljava/util/Map;",
        "infodeskData",
        "Lcom/kakaogame/infodesk/InfodeskData;",
        "isKakaoGame",
        "useGoogleGame",
        "supportedIdpCodes",
        "",
        "getSupportedIdpCodes",
        "()Ljava/util/List;",
        "deviceSecurityOptionType",
        "Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;",
        "getDeviceSecurityOptionType",
        "()Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;",
        "isCheckNewUser",
        "()Z",
        "firstLoginBaseTime",
        "",
        "getFirstLoginBaseTime",
        "()J",
        "deviceVerifyEncryptKey",
        "getDeviceVerifyEncryptKey",
        "()Ljava/lang/String;",
        "isEnable2ndPWSecurity",
        "getSecondaryPwOption",
        "Lcom/kakaogame/util/json/JSONObject;",
        "getGetSecondaryPwOption",
        "()Lcom/kakaogame/util/json/JSONObject;",
        "secondaryPasswordOptionType",
        "Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;",
        "getSecondaryPasswordOptionType",
        "()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;",
        "secondaryPasswordAuthType",
        "Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;",
        "getSecondaryPasswordAuthType",
        "()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;",
        "keypadValidTime",
        "",
        "getKeypadValidTime",
        "()I",
        "pinFailBlockTime",
        "getPinFailBlockTime",
        "pinFailLimitCount",
        "getPinFailLimitCount",
        "authCodeValidTime",
        "getAuthCodeValidTime",
        "benefitString",
        "getBenefitString",
        "skip2ndPassword",
        "getSkip2ndPassword",
        "agreementType",
        "Lcom/kakaogame/infodesk/InfodeskHelper$AgreementType;",
        "getAgreementType",
        "()Lcom/kakaogame/infodesk/InfodeskHelper$AgreementType;",
        "serverConnectionType",
        "Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;",
        "getServerConnectionType",
        "()Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;",
        "appUpdateStatus",
        "Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;",
        "getAppUpdateStatus",
        "()Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;",
        "appServiceStatus",
        "Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;",
        "getAppServiceStatus",
        "()Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;",
        "deviceSecurityOption",
        "getDeviceSecurityOption",
        "isEnableDeviceSecurity",
        "registerDeviceUrl",
        "getRegisterDeviceUrl",
        "emailPublicKey",
        "getEmailPublicKey",
        "traceSampleRate",
        "getTraceSampleRate",
        "rttSampleRate",
        "getRttSampleRate",
        "sdkTraceStopNow",
        "getSdkTraceStopNow",
        "sdkTracingMin",
        "getSdkTracingMin",
        "marketUrl",
        "getMarketUrl",
        "isPlayerOnline",
        "isShowInvitationRewardNoReferrer",
        "isUseHttpHeartbeat",
        "isWhitelist",
        "cSEmail",
        "getCSEmail",
        "appLatestVersion",
        "getAppLatestVersion",
        "sessionUrl",
        "getSessionUrl",
        "snsInvitationShareUrl",
        "getSnsInvitationShareUrl",
        "snsInvitationShareHostUrl",
        "getSnsInvitationShareHostUrl",
        "snsInvitationShareGuestUrl",
        "getSnsInvitationShareGuestUrl",
        "sesseionTimeout",
        "getSesseionTimeout",
        "heartbeatInterval",
        "getHeartbeatInterval",
        "cachedRequestTerm",
        "getCachedRequestTerm",
        "percentOfSendingAPICallLog",
        "getPercentOfSendingAPICallLog",
        "percentOfSendingErrorLog",
        "getPercentOfSendingErrorLog",
        "logInterval",
        "getLogInterval",
        "userAgeCheck",
        "getUserAgeCheck",
        "isReachBoardGame",
        "ageAuthLimit",
        "getAgeAuthLimit",
        "ageAuthLevel",
        "getAgeAuthLevel",
        "ageAuthValidDays",
        "getAgeAuthValidDays",
        "publisherId",
        "getPublisherId",
        "termsUrl",
        "getTermsUrl",
        "termsSummaryUrl",
        "getTermsSummaryUrl",
        "privacyUrl",
        "getPrivacyUrl",
        "privacySummaryUrl",
        "getPrivacySummaryUrl",
        "policyVersion",
        "getPolicyVersion",
        "customerServiceUrl",
        "getCustomerServiceUrl",
        "noticeUrl",
        "getNoticeUrl",
        "noticeOnlyUrl",
        "getNoticeOnlyUrl",
        "eventWallUrl",
        "getEventWallUrl",
        "eventProgressWallUrl",
        "getEventProgressWallUrl",
        "gachaOddsUrl",
        "getGachaOddsUrl",
        "daumCafeLoginUrl",
        "getDaumCafeLoginUrl",
        "daumCafeUrl",
        "getDaumCafeUrl",
        "eventWinnerUrl",
        "getEventWinnerUrl",
        "refreshInfodeskInterval",
        "getRefreshInfodeskInterval",
        "messageCountCacheSec",
        "getMessageCountCacheSec",
        "getInfodeskCacheHour",
        "data",
        "getInfodeskDataTime",
        "termsOfServiceVer",
        "getTermsOfServiceVer",
        "termsOfServiceUrl",
        "getTermsOfServiceUrl",
        "agreementUrl",
        "getAgreementUrl",
        "unregisterAgreementUrl",
        "getUnregisterAgreementUrl",
        "communityUrl",
        "getCommunityUrl",
        "socialPushMessage",
        "getSocialPushMessage",
        "socialPushReceiverCount",
        "getSocialPushReceiverCount",
        "zatRefreshInterval",
        "getZatRefreshInterval",
        "checkWarningSDK",
        "useKakaoAuthType",
        "getUseKakaoAuthType",
        "useCustomMarketRefundUIGooglePlay",
        "getUseCustomMarketRefundUIGooglePlay",
        "maxRequestWaitingTime",
        "getMaxRequestWaitingTime",
        "initialRequestWaitingTime",
        "getInitialRequestWaitingTime",
        "nextValueToMultiply",
        "getNextValueToMultiply",
        "nextValueToSum",
        "getNextValueToSum",
        "logFileSize",
        "getLogFileSize",
        "logFileCount",
        "getLogFileCount",
        "sendLogFile",
        "offWebViewPopupUI",
        "useDaumCafeOldUI",
        "offPromotion3",
        "offPushAgreementPopup",
        "offWebviewTopBarYellow",
        "webviewTitleBgColor",
        "webviewTitleTextColor",
        "offWriteLogToFile",
        "getStringSet",
        "languageCode",
        "isCustomDialogDevice",
        "modelName",
        "isZrtError",
        "idpCode",
        "errorCode",
        "rttCheckUrls",
        "getString",
        "getBoolean",
        "getInt",
        "getLong",
        "minValue",
        "maxValue",
        "getVersionMapData",
        "getResourceMapData",
        "getModelList",
        "getErrorList",
        "getStringList",
        "valueKey",
        "encryptKey",
        "getEncryptKey",
        "encryptIV",
        "getEncryptIV",
        "logKey",
        "getLogKey",
        "offTermsAgreementPopup",
        "getOffTermsAgreementPopup",
        "getKBSHostUrl",
        "getGetKBSHostUrl",
        "SecondaryPWAuthType",
        "SecondaryPWSettingType",
        "AgreementType",
        "ServerConnectionType",
        "InfodeskAppUpdateStatus",
        "InfodeskAppServiceStatus",
        "DeviceSecuritySettingType",
        "gamesdk_release"
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
.field public static final INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

.field private static final TAG:Ljava/lang/String; = "InfodeskHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-direct {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;-><init>()V

    sput-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final getAppOption(Lcom/kakaogame/infodesk/InfodeskData;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/infodesk/InfodeskData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const v0, 0x5d12dcdf

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p1, v0}, Lcom/kakaogame/infodesk/InfodeskData;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {p1, v0}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/util/json/JSONObject;

    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 479
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final getBoolean(Ljava/lang/String;Z)Z
    .locals 4

    .line 7649
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7669
    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskData;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 7679
    invoke-static {v2, p1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7689
    invoke-virtual {v0, v2}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return p2

    .array-data 1
    .end array-data
.end method

.method private final getDeviceSecurityOption()Lcom/kakaogame/util/json/JSONObject;
    .locals 2

    .line 2769
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v1, -0x451ba6a7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 2789
    invoke-virtual {v0, v1}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final getErrorList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 9429
    invoke-direct {p0, p1, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 9449
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-object v0

    .line 9489
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9499
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9509
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/json/JSONArray;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    return-object v0

    .line 9529
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    :goto_3
    if-ge v2, p2, :cond_5

    .line 9539
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    .line 9609
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d0ed7e8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, -0x224003dc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;
    .locals 2

    .line 1389
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v1, 0x543bc9aa

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 1409
    invoke-virtual {v0, v1}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final getInt(Ljava/lang/String;I)I
    .locals 6

    const v0, -0x451ae527

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d1565d7

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 7769
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 7789
    invoke-virtual {v2}, Lcom/kakaogame/infodesk/InfodeskData;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 7799
    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7809
    invoke-virtual {v2, v4}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7829
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 7839
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p2

    goto :goto_0

    .line 7849
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 7869
    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v1, v4, v5, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7879
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v2, p1, v1}, Lkotlin/text/Regex;->replaceFirst(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7909
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    return p2

    .line 7959
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v2, :cond_3

    .line 7969
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7979
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7989
    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 7999
    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    shl-int/lit8 p2, v0, 0x18

    add-int/2addr p2, p1

    return p2

    .line 8029
    :cond_3
    invoke-static {v3}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 8049
    :cond_4
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return p2

    .array-data 1
    .end array-data
.end method

.method private final getLong(Ljava/lang/String;JJJ)J
    .locals 10

    .line 8189
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    .line 8199
    invoke-direct/range {v1 .. v9}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/util/Map;Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method private final getLong(Ljava/util/Map;Ljava/lang/String;JJJ)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "JJJ)J"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 8309
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 8319
    invoke-static {v1, p2, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8329
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8349
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_1

    .line 8359
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    goto :goto_0

    .line 8369
    :cond_1
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 8389
    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    cmp-long p1, p3, p5

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    cmp-long p1, p3, p7

    if-lez p1, :cond_4

    move-wide p5, p7

    goto :goto_1

    :cond_4
    move-wide p5, p3

    :goto_1
    return-wide p5

    :cond_5
    return-wide p3

    .array-data 1
    .end array-data
.end method

.method private final getModelList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9219
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    .line 9229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 9249
    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskData;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 9259
    invoke-static {v3, p1, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9269
    invoke-virtual {v0, p1}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9279
    instance-of v4, v3, Lcom/kakaogame/util/json/JSONArray;

    if-eqz v4, :cond_1

    .line 9289
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 9299
    move-object v6, v3

    check-cast v6, Lcom/kakaogame/util/json/JSONArray;

    invoke-virtual {v6, v5}, Lcom/kakaogame/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    const v7, -0x2244b41c

    invoke-static {v7}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9319
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 9329
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method private final getResourceMapData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x6d093948

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 8849
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v1

    .line 8859
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    if-nez v1, :cond_0

    return-object v2

    .line 8899
    :cond_0
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 8909
    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8919
    invoke-virtual {v1, v4}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8929
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v5, Lkotlin/text/Regex;

    const v6, 0x33606f03

    invoke-static {v6}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const v6, 0x2257cdc6

    invoke-static {v6}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8939
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const v7, 0x7d72c495

    invoke-static {v7}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, -0x224003dc

    invoke-static {v7}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8959
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8969
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 8979
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/json/JSONObject;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    check-cast v4, Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_3

    goto :goto_3

    .line 8989
    :cond_3
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 8999
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_4

    move-object v6, v4

    check-cast v6, Lorg/json/JSONObject;

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    .line 9009
    :cond_5
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 9019
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 9029
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9039
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 9139
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const v8, 0x6d0ed7e8

    invoke-static {v8}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-object v2

    nop

    .array-data 1
    .end array-data
.end method

.method private final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 7529
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7549
    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskData;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 7559
    invoke-static {v2, p1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7569
    invoke-virtual {v0, v2}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    return-object p2

    nop

    .array-data 1
    .end array-data
.end method

.method private final getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 9669
    invoke-direct {p0, p1, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 9689
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-object v0

    .line 9729
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9739
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9749
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/json/JSONArray;

    if-eqz p2, :cond_3

    check-cast p1, Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_4

    return-object v0

    .line 9769
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    :goto_3
    if-ge v2, p2, :cond_5

    .line 9779
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    .line 9849
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x6d0ed7e8

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, -0x224003dc

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .array-data 1
    .end array-data
.end method

.method private final getVersionMapData(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 8569
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 8589
    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskData;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 8599
    invoke-static {v3, p1, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8609
    invoke-virtual {v0, v3}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8619
    instance-of v0, p1, Lcom/kakaogame/util/json/JSONArray;

    if-eqz v0, :cond_4

    .line 8629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 8639
    check-cast p1, Lcom/kakaogame/util/json/JSONArray;

    invoke-virtual {p1}, Lcom/kakaogame/util/json/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v1, -0x22400da4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8649
    instance-of v2, v1, Lcom/kakaogame/util/json/JSONObject;

    if-eqz v2, :cond_1

    .line 8669
    check-cast v1, Lcom/kakaogame/util/json/JSONObject;

    const v2, -0x22400c5c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x2254690e

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    .line 8689
    invoke-virtual {v1, v3}, Lcom/kakaogame/util/json/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8699
    invoke-virtual {v1, v3}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 8719
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final checkWarningSDK()J
    .locals 5

    const v0, 0x33606153

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 6179
    invoke-direct {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getVersionMapData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const v3, -0x2241ea24

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    .line 6189
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6199
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :cond_1
    return-wide v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final varargs containsKey([Ljava/lang/String;)Z
    .locals 7

    const v0, -0x22400c84

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 209
    :cond_0
    array-length v2, p1

    .line 219
    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    .line 239
    aget-object v5, p1, v4

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    return v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1

    .array-data 1
    .end array-data
.end method

.method public final getAgeAuthLevel()Ljava/lang/String;
    .locals 2

    const v0, 0x543bc482

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x2247369c

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 4489
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAgeAuthLimit()I
    .locals 2

    const v0, 0x7d72c63d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4429
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAgeAuthValidDays()I
    .locals 2

    const v0, 0x5d12ef87

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16d

    .line 4549
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getAgreementType()Lcom/kakaogame/infodesk/InfodeskHelper$AgreementType;
    .locals 8

    .line 2319
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x7d72c7dd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 2329
    invoke-virtual {v0, v2}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2339
    invoke-static {}, Lcom/kakaogame/infodesk/InfodeskHelper$AgreementType;->values()[Lcom/kakaogame/infodesk/InfodeskHelper$AgreementType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 2349
    invoke-virtual {v5}, Lcom/kakaogame/infodesk/InfodeskHelper$AgreementType;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v0, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAgreementUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x5d12ee8f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5829
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAppLatestVersion()Ljava/lang/String;
    .locals 2

    const v0, -0x2240092c

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x2257c976

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 3619
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAppOption()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 379
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    .line 389
    invoke-direct {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAppOption(Lcom/kakaogame/infodesk/InfodeskData;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAppServiceStatus()Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;
    .locals 7

    const v0, 0x7d72c065

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x543bcffa

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 2659
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2669
    invoke-static {}, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;->values()[Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2679
    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2719
    :cond_1
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;->READY:Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppServiceStatus;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getAppUpdateStatus()Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;
    .locals 7

    const v0, 0x2257c8e6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x543bccd2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    .line 2549
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2559
    invoke-static {}, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;->values()[Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2569
    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2609
    :cond_1
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;->LATEST:Lcom/kakaogame/infodesk/InfodeskHelper$InfodeskAppUpdateStatus;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getAuthCodeValidTime()I
    .locals 3

    .line 1949
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v2, 0x33606573

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    .line 1959
    invoke-virtual {v0, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 1969
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_1
    return v1

    .array-data 1
    .end array-data
.end method

.method public final getBenefitString()Ljava/lang/String;
    .locals 8

    .line 2029
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x543bc0d2

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    .line 2039
    invoke-virtual {v0, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    goto :goto_2

    .line 2069
    :cond_1
    invoke-static {}, Lcom/kakaogame/KGSystem;->getLanguageCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const v7, 0x7d72c26d

    invoke-static {v7}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_4

    .line 2079
    invoke-static {}, Lcom/kakaogame/KGSystem;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2089
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v4

    :goto_1
    if-eqz v6, :cond_5

    .line 2099
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    .line 2129
    :cond_4
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 2159
    :cond_5
    :goto_2
    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    if-eqz v3, :cond_9

    const v2, 0x7d72c24d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 2169
    invoke-virtual {v0, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, v0

    goto :goto_3

    :cond_9
    move-object v1, v5

    :goto_3
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCSEmail()Ljava/lang/String;
    .locals 2

    const v0, 0x336067b3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3569
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCachedRequestTerm()J
    .locals 8

    const v1, 0x7d72c315

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0xbb8

    const-wide/32 v6, 0x1d4c0

    move-object v0, p0

    move-wide v2, v4

    .line 4069
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCommunityUrl()Ljava/lang/String;
    .locals 2

    const v0, -0x22401524

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5929
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCustomerServiceUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x543bde6a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4899
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDaumCafeLoginUrl()Ljava/lang/String;
    .locals 2

    const v0, -0x224014fc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5199
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDaumCafeUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x2257d7de

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5249
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getDeviceSecurityOptionType()Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;
    .locals 3

    .line 849
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;->OPTIONAL:Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;

    return-object v0

    :cond_0
    const v1, -0x451ba6a7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 859
    invoke-virtual {v0, v1}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    if-nez v0, :cond_1

    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;->OPTIONAL:Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;

    return-object v0

    :cond_1
    const v1, 0x5d12f727

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 869
    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 879
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 889
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;->OPTIONAL:Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;

    return-object v0

    :cond_4
    const v1, -0x451ba3e7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 919
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;->MANDATORY:Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;

    goto :goto_2

    .line 939
    :cond_5
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;->OPTIONAL:Lcom/kakaogame/infodesk/InfodeskHelper$DeviceSecuritySettingType;

    :goto_2
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getDeviceVerifyEncryptKey()Ljava/lang/String;
    .locals 3

    .line 1179
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x2257d70e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 1189
    invoke-virtual {v0, v2}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/util/json/JSONObject;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const v1, 0x2257d69e

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 1199
    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getEmailPublicKey()Ljava/lang/String;
    .locals 2

    const v0, -0x224016ec

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2979
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEncryptIV()Ljava/lang/String;
    .locals 2

    const v0, 0x6d0ec5c0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x451bb7af

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    .line 9979
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEncryptKey()Ljava/lang/String;
    .locals 2

    const v0, 0x543bdb02

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x2257d3de

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    .line 9929
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEventProgressWallUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x7d72dbad

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5099
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEventWallUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x2257d276

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5049
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getEventWinnerUrl()Ljava/lang/String;
    .locals 2

    const v0, -0x451bbb37

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5299
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFirstLoginBaseTime()J
    .locals 4

    .line 1099
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getDeviceSecurityOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const v3, -0x451bbbb7

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    .line 1109
    invoke-virtual {v0, v3}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 1119
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :cond_1
    return-wide v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGachaOddsUrl()Ljava/lang/String;
    .locals 2

    const v0, -0x451bba17

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5149
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getGetKBSHostUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x5d12fcf7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 10149
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getHeartbeatInterval()J
    .locals 8

    const v1, -0x451bbacf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const-wide/32 v4, 0x1d4c0

    const-wide/32 v6, 0x36ee80

    move-object v0, p0

    move-wide v2, v4

    .line 3979
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getInfodeskCacheHour(Lcom/kakaogame/infodesk/InfodeskData;)J
    .locals 11

    const v2, 0x2257df56

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 5549
    invoke-direct {p0, p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAppOption(Lcom/kakaogame/infodesk/InfodeskData;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v9, 0x3e8

    const/16 v10, 0x3c

    if-nez v0, :cond_0

    int-to-long v0, v10

    const-wide/16 v2, 0x18

    mul-long/2addr v2, v0

    mul-long/2addr v2, v0

    int-to-long v0, v9

    mul-long/2addr v2, v0

    return-wide v2

    :cond_0
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x2238

    .line 5599
    invoke-direct {p0, p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getAppOption(Lcom/kakaogame/infodesk/InfodeskData;)Ljava/util/Map;

    move-result-object v1

    const-wide/16 v3, 0x18

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/util/Map;Ljava/lang/String;JJJ)J

    move-result-wide v0

    int-to-long v2, v10

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    int-to-long v2, v9

    mul-long/2addr v0, v2

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getInfodeskDataTime(Lcom/kakaogame/infodesk/InfodeskData;)J
    .locals 9

    const v2, 0x2257f93e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    .line 5669
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    move-object v0, p0

    move-wide v3, v5

    invoke-direct/range {v0 .. v8}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/util/Map;Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getInitialRequestWaitingTime()J
    .locals 8

    const v1, 0x2257dece

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0xa

    move-object v0, p0

    .line 6439
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getKeypadValidTime()I
    .locals 3

    .line 1739
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v2, 0x7d72d74d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 1749
    invoke-virtual {v0, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 1759
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_1
    return v1

    .array-data 1
    .end array-data
.end method

.method public final getLogFileCount()J
    .locals 8

    const v1, -0x224019c4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0x5

    const-wide/16 v6, 0x14

    move-object v0, p0

    .line 6719
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLogFileSize()J
    .locals 8

    const v1, 0x336075c3

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x5

    move-object v0, p0

    .line 6639
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLogInterval()J
    .locals 8

    const v1, 0x336075ab

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x7530

    move-object v0, p0

    move-wide v2, v6

    move-wide v4, v6

    .line 4249
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLogKey()Ljava/lang/String;
    .locals 2

    const v0, 0x5d12fb4f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d72d2e5

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    .line 10029
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMarketUrl()Ljava/lang/String;
    .locals 5

    const v0, 0x5d17543f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3259
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3269
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3279
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3299
    sget-object v2, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakaogame/config/Configuration;->getMarket()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const v4, -0x4514434f

    invoke-static {v4}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3319
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, -0x224fe5ac

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kakaogame/util/AndroidManifestUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMaxRequestWaitingTime()J
    .locals 8

    const v1, 0x6d0130a0

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0xa

    const-wide/16 v6, 0x258

    move-object v0, p0

    .line 6379
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getMessageCountCacheSec()J
    .locals 8

    const v1, 0x225827e6

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x258

    move-object v0, p0

    move-wide v2, v4

    .line 5479
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getNextValueToMultiply()J
    .locals 8

    const v1, -0x451441c7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x64

    move-object v0, p0

    .line 6499
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNextValueToSum()J
    .locals 8

    const v1, 0x336f8b5b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    move-object v0, p0

    .line 6559
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNoticeOnlyUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x54342a9a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4999
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getNoticeUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x5d1d013f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4949
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getOffTermsAgreementPopup()Z
    .locals 1

    const v0, 0x54342a52

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 10089
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getPercentOfSendingAPICallLog()I
    .locals 2

    const v0, 0x6d013458

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4129
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPercentOfSendingErrorLog()I
    .locals 2

    const v0, 0x7d7d2add

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    .line 4189
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getPinFailBlockTime()I
    .locals 3

    .line 1809
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v2, 0x225822e6

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 1819
    invoke-virtual {v0, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 1829
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_1
    return v1

    .array-data 1
    .end array-data
.end method

.method public final getPinFailLimitCount()I
    .locals 3

    .line 1879
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v2, -0x45144497

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 1889
    invoke-virtual {v0, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 1899
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_1
    return v1

    .array-data 1
    .end array-data
.end method

.method public final getPolicyVersion()Ljava/lang/String;
    .locals 2

    const v0, 0x22582d9e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4849
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPrivacySummaryUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x6d013978

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4799
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPrivacyUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x5d1d0c6f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4749
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPublisherId()Ljava/lang/String;
    .locals 2

    const v0, 0x336f814b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4599
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRefreshInfodeskInterval()J
    .locals 8

    const v1, 0x5d1d0f57

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x3c

    move-object v0, p0

    .line 5399
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRegisterDeviceUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x6d013b38

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2919
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRttSampleRate()I
    .locals 2

    const v0, 0x7d7d27c5

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3079
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSdkTraceStopNow()Z
    .locals 1

    const v0, 0x6d013a28

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3129
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getSdkTracingMin()J
    .locals 8

    const v1, 0x5d1d092f

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xb4

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x10e0

    move-object v0, p0

    .line 3209
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSecondaryPasswordAuthType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;
    .locals 3

    .line 1599
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->SMS:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    return-object v0

    :cond_0
    const v1, 0x33619deb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 1609
    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1619
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 1629
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->SMS:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    return-object v0

    .line 1649
    :cond_3
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->EMAIL:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1659
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->EMAIL:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    goto :goto_2

    .line 1679
    :cond_4
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;->SMS:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWAuthType;

    :goto_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSecondaryPasswordOptionType()Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;
    .locals 3

    .line 1459
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;->OPTIONAL:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;

    return-object v0

    :cond_0
    const v1, 0x5d12f727

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    .line 1469
    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1479
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 1489
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;->OPTIONAL:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;

    return-object v0

    .line 1509
    :cond_3
    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;->MANDATORY:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1519
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;->MANDATORY:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;

    goto :goto_2

    .line 1539
    :cond_4
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;->OPTIONAL:Lcom/kakaogame/infodesk/InfodeskHelper$SecondaryPWSettingType;

    :goto_2
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getServerConnectionType()Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;
    .locals 8

    .line 2429
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x22582926

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    .line 2439
    invoke-virtual {v0, v2}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2449
    invoke-static {}, Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;->values()[Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 2459
    invoke-virtual {v5}, Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v0, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSesseionTimeout()J
    .locals 8

    const v1, 0x22582876

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x4e20

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-wide v2, v6

    .line 3889
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0

    .array-data 1
    .end array-data
.end method

.method public final getSessionUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x22582bf6

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3669
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSkip2ndPassword()Z
    .locals 2

    .line 2229
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const v1, 0x336f86bb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 2239
    invoke-virtual {v0, v1}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2259
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final getSnsInvitationShareGuestUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x5434204a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3819
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSnsInvitationShareHostUrl()Ljava/lang/String;
    .locals 2

    const v0, -0x45144c4f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3769
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSnsInvitationShareUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x22582a26

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3719
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSocialPushMessage()Ljava/lang/String;
    .locals 2

    const v0, -0x4514537f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5979
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSocialPushReceiverCount()I
    .locals 2

    const v0, 0x5d1d15a7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 6029
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getStringSet(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, -0x451a5247

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d1d14ef

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 7249
    invoke-direct {p0, v0, p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getResourceMapData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final getSupportedIdpCodes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 709
    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const v2, 0x7d7d3ead

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-virtual {v1, v2}, Lcom/kakaogame/infodesk/InfodeskData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/util/json/JSONArray;

    if-eqz v1, :cond_1

    .line 739
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 749
    invoke-virtual {v1, v3}, Lcom/kakaogame/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    const v5, -0x2244b41c

    invoke-static {v5}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    .line 759
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getTermsOfServiceUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x5d1d17ff

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5779
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTermsOfServiceVer()Ljava/lang/String;
    .locals 2

    const v0, 0x7d7d3ffd

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5729
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTermsSummaryUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x2258360e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4699
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTermsUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x54343af2

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4649
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTraceSampleRate()I
    .locals 2

    const v0, 0x6d012568

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3029
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUnregisterAgreementUrl()Ljava/lang/String;
    .locals 2

    const v0, 0x7d7d3985

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5879
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUseCustomMarketRefundUIGooglePlay()Z
    .locals 1

    const v0, 0x7d7d3945

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 6319
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getUseKakaoAuthType()Ljava/lang/String;
    .locals 2

    const v0, 0x6d0126c8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6269
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getUserAgeCheck()I
    .locals 2

    .line 4289
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x54343932

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getMarket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 4309
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x543dc3ba

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, p1, p2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getZatRefreshInterval()J
    .locals 8

    const v1, 0x336f90cb

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x168

    const-wide/16 v4, 0x78

    const-wide/16 v6, 0x294

    move-object v0, p0

    .line 6129
    invoke-direct/range {v0 .. v7}, Lcom/kakaogame/infodesk/InfodeskHelper;->getLong(Ljava/lang/String;JJJ)J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isCheckNewUser()Z
    .locals 3

    .line 1009
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getDeviceSecurityOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v2, -0x45145bf7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 1019
    invoke-virtual {v0, v2}, Lcom/kakaogame/util/json/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1039
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_1
    return v1

    .array-data 1
    .end array-data
.end method

.method public final isCustomDialogDevice(Ljava/lang/String;)Z
    .locals 2

    const v0, 0x6d012880

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x224ffcd4

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    .line 7299
    invoke-direct {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getModelList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7309
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7339
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final isEnable2ndPWSecurity()Z
    .locals 1

    .line 1249
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getGetSecondaryPwOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {v0}, Lcom/kakaogame/util/json/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final isEnableDeviceSecurity()Z
    .locals 1

    .line 2839
    invoke-direct {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getDeviceSecurityOption()Lcom/kakaogame/util/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2849
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isKakaoGame()Z
    .locals 4

    const/4 v0, 0x0

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPublisherId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "kakao"

    const/4 v3, 0x1

    .line 539
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isPlayerOnline()Z
    .locals 1

    const v0, 0x6d012b88

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 3389
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final isReachBoardGame()Z
    .locals 3

    const v0, -0x224fffbc

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x336f9393

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    .line 4359
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x4514585f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4369
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isShowInvitationRewardNoReferrer()Z
    .locals 1

    const v0, -0x45145f2f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 3439
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final isUseHttpHeartbeat()Z
    .locals 1

    const v0, 0x336f946b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3479
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final isWhitelist()Z
    .locals 2

    const v0, 0x6d0f37e8

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3519
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isZrtError(Ljava/lang/String;I)Z
    .locals 1

    const v0, 0x6d0bddd0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6d012c90

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    .line 7389
    invoke-direct {p0, v0, p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getErrorList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 7399
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7429
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .array-data 1
    .end array-data
.end method

.method public final offPromotion3()Z
    .locals 1

    const v0, 0x5d1d18e7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 6939
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final offPushAgreementPopup()Z
    .locals 1

    const v0, -0x45145d0f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    .line 6989
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final offWebViewPopupUI()Z
    .locals 1

    const v0, 0x22583b36

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    .line 6829
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final offWebviewTopBarYellow()Z
    .locals 1

    const v0, 0x543431fa

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    .line 7039
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    return v0

    .array-data 1
    .end array-data
.end method

.method public final offWriteLogToFile()Z
    .locals 3

    const v0, 0x336fa8fb

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x2247ce84

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 7189
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x22546766

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 7199
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final rttCheckUrls()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const v0, 0x6d011118

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0110e8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 7489
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendLogFile()Z
    .locals 3

    const v0, -0x224fc404

    invoke-static {v0}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x2247ce84

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 6769
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x22546766

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 6779
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final useDaumCafeOldUI()Z
    .locals 3

    const v0, 0x5d1d249f

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d011390

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    .line 6879
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x45146157

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 6889
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final useGoogleGame()Z
    .locals 3

    const v0, 0x2258074e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x2247ce84

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x22546766

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 639
    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final webviewTitleBgColor()I
    .locals 2

    const v0, 0x7d7d0fad

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0xc1c1c2

    .line 7089
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final webviewTitleTextColor()I
    .locals 2

    const v0, 0x6d011260

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 7139
    invoke-direct {p0, v0, v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    nop

    .array-data 1
    .end array-data
.end method
