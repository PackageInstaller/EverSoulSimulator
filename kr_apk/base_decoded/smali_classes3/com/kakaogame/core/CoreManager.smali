.class public final Lcom/kakaogame/core/CoreManager;
.super Ljava/lang/Object;
.source "CoreManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/core/CoreManager$Companion;,
        Lcom/kakaogame/core/CoreManager$CoreState;,
        Lcom/kakaogame/core/CoreManager$CoreStateListener;,
        Lcom/kakaogame/core/CoreManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoreManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoreManager.kt\ncom/kakaogame/core/CoreManager\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1674:1\n32#2,2:1675\n1#3:1677\n*S KotlinDebug\n*F\n+ 1 CoreManager.kt\ncom/kakaogame/core/CoreManager\n*L\n262#1:1675,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00fa\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008F\u0018\u0000 \u00e5\u00012\u00020\u0001:\u0006\u00e3\u0001\u00e4\u0001\u00e5\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010Y\u001a\u00020ZJ\u0006\u0010[\u001a\u00020ZJ\u0006\u0010\\\u001a\u00020ZJ\u0008\u0010]\u001a\u0004\u0018\u000101J\u001a\u0010^\u001a\u00020Z2\u0008\u0010_\u001a\u0004\u0018\u00010`2\u0008\u0010a\u001a\u0004\u0018\u00010bJ\u0018\u0010c\u001a\u0004\u0018\u00010)2\u0006\u0010V\u001a\u00020M2\u0006\u0010d\u001a\u00020eJ\u000e\u0010f\u001a\u00020\u000f2\u0006\u0010_\u001a\u00020`J\u0010\u0010g\u001a\u00020Z2\u0008\u0010h\u001a\u0004\u0018\u00010)J\u0010\u0010i\u001a\u00020Z2\u0008\u0010j\u001a\u0004\u0018\u000103J\u0010\u0010k\u001a\u00020Z2\u0008\u0010l\u001a\u0004\u0018\u00010)J\u0010\u0010m\u001a\u00020Z2\u0008\u0010n\u001a\u0004\u0018\u00010=J\u000e\u0010o\u001a\u00020Z2\u0006\u0010p\u001a\u00020JJ\u0006\u0010q\u001a\u00020ZJ\u0006\u0010r\u001a\u00020ZJ\u0010\u0010v\u001a\u00020Z2\u0008\u0010w\u001a\u0004\u0018\u00010xJ\u0008\u0010y\u001a\u0004\u0018\u00010)J\u0006\u0010z\u001a\u00020ZJ\u0008\u0010{\u001a\u00020ZH\u0002J\u0006\u0010|\u001a\u00020ZJ\u0008\u0010}\u001a\u00020ZH\u0002J\u0006\u0010~\u001a\u00020ZJ \u0010\u007f\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u00012\u0006\u0010V\u001a\u00020M2\u0006\u0010\u0004\u001a\u00020\u0005J\u000f\u0010\u0082\u0001\u001a\u00020Z2\u0006\u0010R\u001a\u00020SJ\t\u0010\u0087\u0001\u001a\u00020ZH\u0002J\'\u0010\u0088\u0001\u001a\u00020Z2\u0007\u0010\u0089\u0001\u001a\u00020)2\u0007\u0010\u008a\u0001\u001a\u00020)2\u000c\u0010\u008b\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0080\u0001J\u0010\u0010\u008c\u0001\u001a\u00020J2\u0007\u0010\u008d\u0001\u001a\u00020)J\u0019\u0010\u008e\u0001\u001a\u00020Z2\u0007\u0010\u008f\u0001\u001a\u00020J2\u0007\u0010\u0090\u0001\u001a\u00020)J\u001e\u0010\u0091\u0001\u001a\u00020Z2\u0007\u0010\u008f\u0001\u001a\u00020J2\u000c\u0010\u008b\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0092\u0001J%\u0010\u0093\u0001\u001a\u00020J2\u0007\u0010\u008d\u0001\u001a\u00020)2\u0013\u0010\u0094\u0001\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)0/J%\u0010\u0095\u0001\u001a\u00020Z2\u0007\u0010\u008f\u0001\u001a\u00020J2\u0013\u0010\u0094\u0001\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)0/J\u0011\u0010\u0096\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0097\u00010\u0080\u0001J-\u0010\u0098\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0097\u00010\u0080\u00012\u0008\u0010V\u001a\u0004\u0018\u00010M2\u0007\u0010\u0099\u0001\u001a\u00020\u000f2\u0007\u0010\u009a\u0001\u001a\u00020JJ\u0019\u0010\u009b\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0080\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u000fJ\u0011\u0010\u009d\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u0001J\u001d\u0010\u009e\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u00012\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u00a0\u0001J\u0011\u0010\u00a1\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u0001J\u001d\u0010\u00a1\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u00012\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u00a0\u0001J\u0011\u0010\u00a2\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u0001J/\u0010\u00a3\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0097\u00010\u0080\u00012\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u00a0\u00012\u0007\u0010\u00a4\u0001\u001a\u00020\u000f2\u0007\u0010\u009a\u0001\u001a\u00020JJ/\u0010\u00a5\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u00012\n\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u00a0\u00012\u0007\u0010\u00a4\u0001\u001a\u00020\u000f2\u0007\u0010\u009a\u0001\u001a\u00020JJ\u0011\u0010\u0099\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u0001J\u0011\u0010\u00a7\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u0001J`\u0010\u00a8\u0001\u001a\u0017\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0001\u0018\u00010/0\u0080\u00012\u0007\u0010\u00a9\u0001\u001a\u00020)2\u0017\u0010\u00aa\u0001\u001a\u0012\u0012\u0004\u0012\u00020)\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010/2\u0017\u0010\u00ab\u0001\u001a\u0012\u0012\u0004\u0012\u00020)\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010/2\u0007\u0010\u00ac\u0001\u001a\u00020%J\u001c\u0010\u00ad\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u00012\t\u0008\u0002\u0010\u009a\u0001\u001a\u00020JJ\u000f\u0010\u00bb\u0001\u001a\u00020Z2\u0006\u0010n\u001a\u00020\u001fJ\u000f\u0010\u00bc\u0001\u001a\u00020Z2\u0006\u0010n\u001a\u00020\u001fJ\u0007\u0010\u00bd\u0001\u001a\u00020%J\u0011\u0010\u00be\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u0001J>\u0010\u00bf\u0001\u001a\u00020Z2\u0006\u0010V\u001a\u00020M2\u0007\u0010\u00c0\u0001\u001a\u00020)2\t\u0010\u00c1\u0001\u001a\u0004\u0018\u00010)2\u0007\u0010\u00c2\u0001\u001a\u00020%2\u0007\u0010\u00c3\u0001\u001a\u00020%2\u0007\u0010\u00c4\u0001\u001a\u00020%J\u0010\u0010\u00c5\u0001\u001a\u00020Z2\u0007\u0010\u00c0\u0001\u001a\u00020)J\u0007\u0010\u00c6\u0001\u001a\u00020ZJ\t\u0010\u00c7\u0001\u001a\u00020ZH\u0002J\t\u0010\u00c8\u0001\u001a\u00020ZH\u0002J\t\u0010\u00c9\u0001\u001a\u00020ZH\u0002J8\u0010\u00ca\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0097\u00010\u0080\u00012\u0008\u0010V\u001a\u0004\u0018\u00010M2\u0007\u0010\u00cb\u0001\u001a\u00020\u000f2\u0007\u0010\u0099\u0001\u001a\u00020\u000f2\u0007\u0010\u009a\u0001\u001a\u00020JH\u0002J\u0012\u0010\u00cc\u0001\u001a\u00020Z2\t\u0010\u00b9\u0001\u001a\u0004\u0018\u00010)J8\u0010\u00cd\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0097\u00010\u0080\u00012\u0008\u0010V\u001a\u0004\u0018\u00010M2\u0007\u0010\u00cb\u0001\u001a\u00020\u000f2\u0007\u0010\u0099\u0001\u001a\u00020\u000f2\u0007\u0010\u009a\u0001\u001a\u00020JH\u0002J\u0011\u0010\u00ce\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0097\u00010\u0080\u0001J/\u0010\u00cf\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0097\u00010\u0080\u00012\u0008\u0010\u009f\u0001\u001a\u00030\u00a0\u00012\u0007\u0010\u00a4\u0001\u001a\u00020\u000f2\u0007\u0010\u009a\u0001\u001a\u00020JH\u0002J\t\u0010\u00d0\u0001\u001a\u00020ZH\u0004J%\u0010\u00d1\u0001\u001a\u00020Z2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0007\u0010\u00d2\u0001\u001a\u00020\u000f2\u0007\u0010\u009c\u0001\u001a\u00020\u000fH\u0002J\t\u0010\u00d3\u0001\u001a\u00020ZH\u0002J,\u0010\u00d4\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u0081\u00010\u0080\u00012\u0006\u0010V\u001a\u00020M2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0007\u0010\u009c\u0001\u001a\u00020\u000fJ\u0010\u0010\u00d5\u0001\u001a\u00020Z2\u0007\u0010\u00d6\u0001\u001a\u00020%J3\u0010\u00d7\u0001\u001a\u00020Z2\u0007\u0010\u00d8\u0001\u001a\u00020\u00182\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u00a0\u00012\n\u0010\u00d9\u0001\u001a\u0005\u0018\u00010\u0097\u00012\u0007\u0010\u00a4\u0001\u001a\u00020\u000fH\u0002J\u0017\u0010\u00da\u0001\u001a\u00020\u000f2\u000e\u0010\u00db\u0001\u001a\t\u0012\u0002\u0008\u0003\u0018\u00010\u0080\u0001J#\u0010\u00dc\u0001\u001a\u00020Z2\u000c\u0010\u00db\u0001\u001a\u0007\u0012\u0002\u0008\u00030\u0080\u00012\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u00a0\u0001H\u0002J\u0010\u0010\u00dd\u0001\u001a\u00020Z2\u0007\u0010\u00b6\u0001\u001a\u00020)J\u0012\u0010\u00de\u0001\u001a\u00020Z2\u0007\u0010\u00b6\u0001\u001a\u00020)H\u0002J\t\u0010\u00df\u0001\u001a\u00020ZH\u0002J\t\u0010\u00e0\u0001\u001a\u00020ZH\u0002J\t\u0010\u00e1\u0001\u001a\u00020ZH\u0002J\t\u0010\u00e2\u0001\u001a\u00020ZH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0010R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010.\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)0/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u00109\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u0010R\u001e\u0010:\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010\u0010R\u0014\u0010;\u001a\u0008\u0012\u0004\u0012\u00020=0<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010>\u001a\n\u0012\u0004\u0012\u00020@\u0018\u00010?X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001e\u0010E\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010\u0010R\u001a\u0010F\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0010\"\u0004\u0008G\u0010\u0012R\u000e\u0010H\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020JX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010K\u001a\u0008\u0012\u0004\u0012\u00020M0LX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u0011\u0010R\u001a\u00020S8F\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0011\u0010V\u001a\u00020M8F\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010XR\u0011\u0010s\u001a\u00020)8F\u00a2\u0006\u0006\u001a\u0004\u0008t\u0010uR\u0013\u0010\u0083\u0001\u001a\u00020\u000f8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0084\u0001\u0010\u0010R\u0013\u0010\u0085\u0001\u001a\u00020)8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0086\u0001\u0010uR\u0013\u0010\u00ae\u0001\u001a\u00020\u000f8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ae\u0001\u0010\u0010R\u0013\u0010\u00af\u0001\u001a\u00020\u000f8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00af\u0001\u0010\u0010R\u0017\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u00a0\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R\u0013\u0010\u00b2\u0001\u001a\u00020)8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b3\u0001\u0010uR\u0013\u0010\u00b4\u0001\u001a\u00020)8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b5\u0001\u0010uR\u0013\u0010\u00b6\u0001\u001a\u00020)8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b7\u0001\u0010uR\u0013\u0010\u00b8\u0001\u001a\u00020\u000f8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00b8\u0001\u0010\u0010R\u0013\u0010\u00b9\u0001\u001a\u00020)8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00ba\u0001\u0010u\u00a8\u0006\u00e6\u0001"
    }
    d2 = {
        "Lcom/kakaogame/core/CoreManager;",
        "",
        "<init>",
        "()V",
        "configuration",
        "Lcom/kakaogame/config/Configuration;",
        "getConfiguration",
        "()Lcom/kakaogame/config/Configuration;",
        "setConfiguration",
        "(Lcom/kakaogame/config/Configuration;)V",
        "coreState",
        "Lcom/kakaogame/core/CoreManager$CoreState;",
        "pauseTimer",
        "Ljava/util/concurrent/ScheduledFuture;",
        "isGetFirstInfodesk",
        "",
        "()Z",
        "setGetFirstInfodesk",
        "(Z)V",
        "value",
        "Lcom/kakaogame/infodesk/InfodeskData;",
        "infodesk",
        "getInfodesk",
        "()Lcom/kakaogame/infodesk/InfodeskData;",
        "Lcom/kakaogame/player/LocalPlayer;",
        "player",
        "getPlayer",
        "()Lcom/kakaogame/player/LocalPlayer;",
        "isPaused",
        "coreStateListeners",
        "",
        "Lcom/kakaogame/core/CoreManager$CoreStateListener;",
        "infodeskRefreshLock",
        "onlineAlarmLock",
        "infodeskTimer",
        "Lcom/kakaogame/core/TimerManager;",
        "refreshInterval",
        "",
        "warningTimer",
        "onlineAlarmTimer",
        "onlineNotificationId",
        "",
        "logManager",
        "Lcom/kakaogame/log/SDKLogManager;",
        "waitCount",
        "useWaitCount",
        "customResourceMap",
        "",
        "snsShareData",
        "Lcom/kakaogame/promotion/SNSShareData;",
        "captureDialog",
        "Lcom/kakaogame/promotion/share/ScreenShotDialog;",
        "customUIManager",
        "Lcom/kakaogame/ui/CustomUIManager;",
        "firebaseInterface",
        "Lcom/kakaogame/log/IFirebase;",
        "launchingReferrer",
        "isUnity",
        "isUnreal",
        "eventListeners",
        "",
        "Lcom/kakaogame/KGSNSShare$KGEventListener;",
        "marketRefundInfoList",
        "",
        "Lcom/kakaogame/KGMarketRefundInfo;",
        "getMarketRefundInfoList",
        "()Ljava/util/List;",
        "setMarketRefundInfoList",
        "(Ljava/util/List;)V",
        "isKakaoCacheMode",
        "isLoggedInWithCredentialManager",
        "setLoggedInWithCredentialManager",
        "serverTimeDiffer",
        "googleGameVersion",
        "",
        "activityHolder",
        "Lkotlin/Function0;",
        "Landroid/app/Activity;",
        "getActivityHolder",
        "()Lkotlin/jvm/functions/Function0;",
        "setActivityHolder",
        "(Lkotlin/jvm/functions/Function0;)V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "activity",
        "getActivity",
        "()Landroid/app/Activity;",
        "offKakaoCacheMode",
        "",
        "resetWaitTime",
        "sendLogFilesImmediately",
        "getSnsShareData",
        "registerShowCustomAlertHandler",
        "type",
        "Lcom/kakaogame/KGCustomUI$KGCustomAlertType;",
        "handler",
        "Lcom/kakaogame/KGCustomUI$KGShowCustomAlertHandler;",
        "showCustomUI",
        "alert",
        "Lcom/kakaogame/KGCustomUI$KGCustomAlert;",
        "hasCustomAlertHandler",
        "onCustomUICallback",
        "action",
        "setCaptureDialog",
        "dialog",
        "requestSnsShare",
        "imagePath",
        "putEventListener",
        "listener",
        "sendEvent",
        "eventId",
        "retryWaiting",
        "increaseWaitCount",
        "preferenceKey",
        "getPreferenceKey",
        "()Ljava/lang/String;",
        "setLaunchingReferrer",
        "bundle",
        "Landroid/os/Bundle;",
        "getLaunchingReferrer",
        "setEngine",
        "setIsUnity",
        "checkUnity",
        "setIsUnreal",
        "checkUnreal",
        "init",
        "Lcom/kakaogame/KGResult;",
        "Ljava/lang/Void;",
        "initFirebase",
        "useFirebase",
        "getUseFirebase",
        "fCMToken",
        "getFCMToken",
        "setCrashlyticsUserIdentifier",
        "sendLogFirebase",
        "cls",
        "function",
        "result",
        "startFirebaseTrace",
        "name",
        "addTraceMetric",
        "traceId",
        "event",
        "stopFirebaseTrace",
        "Lcom/kakaogame/server/KeyBaseResult;",
        "startFirebaseTraceOnUnity",
        "attr",
        "stopFirebaseTraceOnUnity",
        "reconnectAutoLogin",
        "Lcom/kakaogame/auth/LoginData;",
        "autoLogin",
        "resume",
        "traceJobId",
        "loadInfodesk",
        "isRefresh",
        "logout",
        "idpLogout",
        "authData",
        "Lcom/kakaogame/idp/IdpAccount;",
        "unregister",
        "requestUnregister",
        "authorize",
        "saveAccount",
        "connect",
        "account",
        "pause",
        "request",
        "requestUri",
        "header",
        "body",
        "timeout",
        "refreshPlayer",
        "isAuthorized",
        "isNotAuthorized",
        "getAuthData",
        "()Lcom/kakaogame/idp/IdpAccount;",
        "appId",
        "getAppId",
        "appSecret",
        "getAppSecret",
        "playerId",
        "getPlayerId",
        "isFirstLogin",
        "accessToken",
        "getAccessToken",
        "addCoreStateListener",
        "removeCoreStateListener",
        "currentTimeMillis",
        "tryKakaoReConnect",
        "startOnlineAlarmTimer",
        "notificationId",
        "message",
        "interval",
        "startTime",
        "endTime",
        "stopOnlineAlarmTimer",
        "startWarningSDKTimer",
        "stopWarningSDKTimer",
        "startInfodeskTimer",
        "stopInfodeskTimer",
        "autoLoginInternal",
        "reconnect",
        "updateIdpAccessToken",
        "requestAutoLogin",
        "autoLoginInternalForZatRefresh",
        "loginInternal",
        "updateRefreshSetting",
        "onInfodesk",
        "isCache",
        "requestInfodesk",
        "handleInfodesk",
        "setServerTimeStamp",
        "timeStamp",
        "onLogin",
        "localPlayer",
        "loginData",
        "isAuthError",
        "loginResult",
        "onLoginFailed",
        "onLogout",
        "onUnregister",
        "startPauseTimer",
        "cancelPauseTimer",
        "pauseInternal",
        "initModules",
        "CoreState",
        "CoreStateListener",
        "Companion",
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
.field public static final Companion:Lcom/kakaogame/core/CoreManager$Companion;

.field private static final REFRESH_OFF_KEY:Ljava/lang/String; = "stopAutoRefreshInfodesk"

.field private static final TAG:Ljava/lang/String; = "CoreManager"

.field private static final instance:Lcom/kakaogame/core/CoreManager;

.field public static testGoogleErrorCode:I

.field public static testKakaoErrorCode:I


# instance fields
.field public activityHolder:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private captureDialog:Lcom/kakaogame/promotion/share/ScreenShotDialog;

.field public configuration:Lcom/kakaogame/config/Configuration;

.field private coreState:Lcom/kakaogame/core/CoreManager$CoreState;

.field private final coreStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kakaogame/core/CoreManager$CoreStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private customResourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customUIManager:Lcom/kakaogame/ui/CustomUIManager;

.field private final eventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGSNSShare$KGEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private firebaseInterface:Lcom/kakaogame/log/IFirebase;

.field private googleGameVersion:I

.field private infodesk:Lcom/kakaogame/infodesk/InfodeskData;

.field private final infodeskRefreshLock:Ljava/lang/Object;

.field private infodeskTimer:Lcom/kakaogame/core/TimerManager;

.field private isGetFirstInfodesk:Z

.field private isKakaoCacheMode:Z

.field private isLoggedInWithCredentialManager:Z

.field private isPaused:Z

.field private isUnity:Z

.field private isUnreal:Z

.field private launchingReferrer:Ljava/lang/String;

.field private logManager:Lcom/kakaogame/log/SDKLogManager;

.field private marketRefundInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMarketRefundInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final onlineAlarmLock:Ljava/lang/Object;

.field private onlineAlarmTimer:Lcom/kakaogame/core/TimerManager;

.field private onlineNotificationId:Ljava/lang/String;

.field private pauseTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private player:Lcom/kakaogame/player/LocalPlayer;

.field private refreshInterval:J

.field private serverTimeDiffer:J

.field private snsShareData:Lcom/kakaogame/promotion/SNSShareData;

.field private useWaitCount:Z

.field private waitCount:J

.field private warningTimer:Lcom/kakaogame/core/TimerManager;


# direct methods
.method public static synthetic $r8$lambda$S_M8aMUuvTOL5OdSZtcq-GDEUEs(Lcom/kakaogame/core/CoreManager;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/core/CoreManager;->startPauseTimer$lambda$34(Lcom/kakaogame/core/CoreManager;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$_rlONimUlvg0zho6hK5VUJhbl4k(Lcom/kakaogame/core/CoreManager;JLandroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/kakaogame/core/CoreManager;->startOnlineAlarmTimer$lambda$24$lambda$23(Lcom/kakaogame/core/CoreManager;JLandroid/app/Activity;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$bO0Exc-4U3ayq3uBRGuFMavLWd0(Lcom/kakaogame/core/CoreManager;)V
    .locals 0

    invoke-static {p0}, Lcom/kakaogame/core/CoreManager;->startInfodeskTimer$lambda$28$lambda$27(Lcom/kakaogame/core/CoreManager;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static synthetic $r8$lambda$ncs1uOUOZV9InQH0iNozqF6wmnA()V
    .locals 0

    invoke-static {}, Lcom/kakaogame/core/CoreManager;->startWarningSDKTimer$lambda$26()V

    return-void

    .array-data 1
    .end array-data
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakaogame/core/CoreManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakaogame/core/CoreManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    .line 16509
    new-instance v0, Lcom/kakaogame/core/CoreManager;

    invoke-direct {v0}, Lcom/kakaogame/core/CoreManager;-><init>()V

    sput-object v0, Lcom/kakaogame/core/CoreManager;->instance:Lcom/kakaogame/core/CoreManager;

    const/16 v0, 0xc8

    .line 16539
    sput v0, Lcom/kakaogame/core/CoreManager;->testKakaoErrorCode:I

    .line 16559
    sput v0, Lcom/kakaogame/core/CoreManager;->testGoogleErrorCode:I

    return-void

    .array-data 1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    sget-object v0, Lcom/kakaogame/core/CoreManager$CoreState;->NOT_INIT:Lcom/kakaogame/core/CoreManager$CoreState;

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    const/4 v0, 0x1

    .line 1199
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isGetFirstInfodesk:Z

    .line 1269
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    .line 1279
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kakaogame/core/CoreManager;->infodeskRefreshLock:Ljava/lang/Object;

    .line 1289
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/kakaogame/core/CoreManager;->onlineAlarmLock:Ljava/lang/Object;

    const-string v1, ""

    .line 1339
    iput-object v1, p0, Lcom/kakaogame/core/CoreManager;->onlineNotificationId:Ljava/lang/String;

    .line 1369
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->useWaitCount:Z

    .line 1379
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/kakaogame/core/CoreManager;->customResourceMap:Ljava/util/Map;

    .line 1479
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/kakaogame/core/CoreManager;->eventListeners:Ljava/util/List;

    .line 1559
    iput v0, p0, Lcom/kakaogame/core/CoreManager;->googleGameVersion:I

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getCustomResourceMap$p(Lcom/kakaogame/core/CoreManager;)Ljava/util/Map;
    .locals 0

    .line 1149
    iget-object p0, p0, Lcom/kakaogame/core/CoreManager;->customResourceMap:Ljava/util/Map;

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$getInstance$cp()Lcom/kakaogame/core/CoreManager;
    .locals 1

    .line 1149
    sget-object v0, Lcom/kakaogame/core/CoreManager;->instance:Lcom/kakaogame/core/CoreManager;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final declared-synchronized autoLoginInternal(Landroid/app/Activity;ZZI)Lcom/kakaogame/KGResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZZI)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/auth/LoginData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 10689
    :try_start_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->retryWaiting()V

    .line 10699
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kakaogame/core/CoreManager;->requestAutoLogin(Landroid/app/Activity;ZZI)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 10759
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result p2

    if-nez p2, :cond_0

    .line 10769
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNeedToWaitError()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10779
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->increaseWaitCount()V

    goto :goto_0

    .line 10809
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->resetWaitTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10829
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method private final cancelPauseTimer()V
    .locals 4

    .line 15829
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, -0x451a8897

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d73e56d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15839
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isPaused:Z

    .line 15859
    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->pauseTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 15869
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 15879
    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->pauseTimer:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15909
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getInstance()Lcom/kakaogame/core/CoreManager;
    .locals 1

    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$Companion;->getInstance()Lcom/kakaogame/core/CoreManager;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static final getResourceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    invoke-virtual {v0, p0}, Lcom/kakaogame/core/CoreManager$Companion;->getResourceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    .array-data 1
    .end array-data
.end method

.method private final initModules()V
    .locals 3

    .line 16149
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d73e56d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0ffd98

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16159
    new-instance v0, Lcom/kakaogame/log/SDKLogManager;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3361447b

    invoke-static {v2}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/kakaogame/log/SDKLogManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->logManager:Lcom/kakaogame/log/SDKLogManager;

    .line 16169
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kakaogame/auth/AuthDataManager;->initialize(Landroid/content/Context;Lcom/kakaogame/config/Configuration;)V

    .line 16179
    sget-object v0, Lcom/kakaogame/manager/SdkManager;->INSTANCE:Lcom/kakaogame/manager/SdkManager;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/manager/SdkManager;->initialize(Landroid/content/Context;)V

    .line 16189
    sget-object v0, Lcom/kakaogame/server/openapi/OpenApiService;->INSTANCE:Lcom/kakaogame/server/openapi/OpenApiService;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/server/openapi/OpenApiService;->initialize(Lcom/kakaogame/config/Configuration;)V

    .line 16199
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/infodesk/InfodeskService;->initialize(Lcom/kakaogame/config/Configuration;)V

    .line 16209
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/server/ServerService;->initialize(Lcom/kakaogame/config/Configuration;)V

    .line 16219
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/auth/AuthService;->initialize(Lcom/kakaogame/config/Configuration;)V

    .line 16229
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/player/PlayerService;->initialize(Lcom/kakaogame/config/Configuration;)V

    .line 16239
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kakaogame/idp/IdpAuthManager;->initialize(Landroid/app/Activity;)V

    .line 16249
    invoke-static {}, Lcom/kakaogame/server/PresenceService;->initialize()V

    .line 16259
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kakaogame/core/LocaleManager;->initialize(Landroid/content/Context;Lcom/kakaogame/config/Configuration;)V

    .line 16269
    invoke-static {}, Lcom/kakaogame/log/ErrorLogManager;->initialize()V

    .line 16279
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    const v1, 0x6d0ffc50

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/config/Configuration;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kakaogame/server/http/HttpService;->initialize(Ljava/lang/String;)V

    .line 16289
    invoke-static {}, Lcom/kakaogame/push/PushService;->initialize()V

    .line 16299
    invoke-static {}, Lcom/kakaogame/log/service/BasicLogService;->initialize()V

    .line 16309
    invoke-static {}, Lcom/kakaogame/log/PlayerLogManager;->initialize()V

    .line 16319
    invoke-static {}, Lcom/kakaogame/log/APILogManager;->initialize()V

    .line 16329
    invoke-static {}, Lcom/kakaogame/leaderboard/LeaderboardService;->initialize()V

    .line 16339
    invoke-static {}, Lcom/kakaogame/lifecycle/LifecycleService;->initialize()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final declared-synchronized loginInternal(Lcom/kakaogame/idp/IdpAccount;ZI)Lcom/kakaogame/KGResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/IdpAccount;",
            "ZI)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/auth/LoginData;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    const v8, -0x451a8d2f

    invoke-static {v8}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7d73e265

    invoke-static {v9}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x3361472b

    invoke-static {v10}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x2256f4ce

    invoke-static {v11}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v11

    monitor-enter p0

    const/4 v12, 0x0

    .line 12739
    :try_start_0
    invoke-virtual {p0, v12}, Lcom/kakaogame/core/CoreManager;->loadInfodesk(Z)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 12749
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12759
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12789
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "siwa"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpRefreshToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12799
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/kakaogame/auth/AuthService$LoginType;->AUTO:Lcom/kakaogame/auth/AuthService$LoginType;

    const/4 v5, 0x0

    iget-wide v6, v1, Lcom/kakaogame/core/CoreManager;->waitCount:J

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/kakaogame/auth/AuthService;->getIDPLoginRequest(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/AuthService$LoginType;ZJ)Lcom/kakaogame/KGResult;

    move-result-object v2

    goto :goto_0

    .line 12819
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/kakaogame/auth/AuthService$LoginType;->MANUAL:Lcom/kakaogame/auth/AuthService$LoginType;

    const/4 v5, 0x0

    iget-wide v6, v1, Lcom/kakaogame/core/CoreManager;->waitCount:J

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/kakaogame/auth/AuthService;->getIDPLoginRequest(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/AuthService$LoginType;ZJ)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 12839
    :goto_0
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12849
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12869
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/kakaogame/server/ServerRequest;

    .line 12879
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "manual"

    move/from16 v4, p3

    invoke-static {v3, v2, v4}, Lcom/kakaogame/server/ServerService;->requestConnect(Lcom/kakaogame/server/ServerRequest;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 12889
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v5, "CoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12899
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 12909
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12929
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/server/ServerResult;

    .line 12939
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v5, "CoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12949
    invoke-static {v2}, Lcom/kakaogame/auth/AuthService;->handleLoginResult(Lcom/kakaogame/server/ServerResult;)Lcom/kakaogame/KGResult;

    move-result-object v10

    .line 12959
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v5, "CoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12969
    invoke-virtual {v10}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 12989
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    const-string v4, "accessToken"

    .line 12999
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/kakaogame/auth/LoginData;->getSiwaAccessToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v5

    :goto_1
    invoke-virtual {p1, v4, v6}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "refreshToken"

    .line 13009
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/kakaogame/auth/LoginData;->getSiwaRefreshToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v5

    :goto_2
    invoke-virtual {p1, v4, v6}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13049
    :cond_6
    invoke-virtual {v10}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    if-eqz v2, :cond_7

    .line 13059
    invoke-virtual {v2}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object v2

    move-object v5, v2

    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    .line 13039
    invoke-static/range {v2 .. v9}, Lcom/kakaogame/log/ErrorLogManager;->sendPlatformLoginError(ILcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;Lcom/kakaogame/auth/LoginData;Lcom/kakaogame/idp/IdpAccount;Ljava/lang/Exception;Ljava/lang/String;Z)V

    .line 13089
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v10, Ljava/util/Map;

    invoke-virtual {v0, v10}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 13109
    :cond_8
    :try_start_4
    invoke-virtual {v10}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/auth/LoginData;

    .line 13119
    new-instance v3, Lcom/kakaogame/player/LocalPlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/kakaogame/auth/LoginData;->getPlayer()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kakaogame/player/LocalPlayer;-><init>(Ljava/util/Map;)V

    .line 13129
    invoke-virtual {v2}, Lcom/kakaogame/auth/LoginData;->getPlayer()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "idpId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 13139
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v6, "CoreManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13149
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    const/4 v12, 0x1

    :cond_a
    if-nez v12, :cond_b

    const-string/jumbo v5, "userId"

    .line 13159
    invoke-virtual {p1, v5, v4}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13179
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "accessToken"

    .line 13189
    invoke-virtual {v2}, Lcom/kakaogame/auth/LoginData;->getSiwaAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "refreshToken"

    .line 13199
    invoke-virtual {v2}, Lcom/kakaogame/auth/LoginData;->getSiwaRefreshToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    move v4, p2

    .line 13229
    invoke-direct {p0, v3, p1, v2, p2}, Lcom/kakaogame/core/CoreManager;->onLogin(Lcom/kakaogame/player/LocalPlayer;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/LoginData;Z)V

    .line 13239
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method private final declared-synchronized onInfodesk(Lcom/kakaogame/infodesk/InfodeskData;ZZ)V
    .locals 4

    const v0, -0x451a913f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    .line 13599
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "CoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 13619
    monitor-exit p0

    return-void

    .line 13639
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->infodesk:Lcom/kakaogame/infodesk/InfodeskData;

    .line 13649
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 13659
    sget-object v0, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    :cond_1
    if-nez p2, :cond_2

    .line 13719
    sget-boolean p2, Lcom/kakaogame/version/SDKVersion;->isPublishing:Z

    if-nez p2, :cond_2

    .line 13729
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/kakaogame/infodesk/InfodeskDataCache;->savedCache(Landroid/content/Context;Lcom/kakaogame/config/Configuration;Lcom/kakaogame/infodesk/InfodeskData;)V

    .line 13759
    :cond_2
    invoke-static {}, Lcom/kakaogame/server/ServerService;->setSessionUrl()V

    .line 13779
    iget-boolean p1, p0, Lcom/kakaogame/core/CoreManager;->isGetFirstInfodesk:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 13789
    iput-boolean p1, p0, Lcom/kakaogame/core/CoreManager;->isGetFirstInfodesk:Z

    .line 13799
    sget-object p1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    sget-object p2, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getTraceSampleRate()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/kakaogame/log/tracer/Tracer;->setTarget(I)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 13819
    sget-object p1, Lcom/kakaogame/log/tracer/Tracer;->INSTANCE:Lcom/kakaogame/log/tracer/Tracer;

    invoke-virtual {p1}, Lcom/kakaogame/log/tracer/Tracer;->onInfodesk()V

    .line 13839
    :cond_4
    :goto_0
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getHeartbeatInterval()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/kakaogame/server/PresenceService;->setHeartbeatInterval(J)V

    .line 13849
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPercentOfSendingAPICallLog()I

    move-result p1

    invoke-static {p1}, Lcom/kakaogame/log/APILogManager;->setApiCallLogEnable(I)V

    .line 13859
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {p1}, Lcom/kakaogame/infodesk/InfodeskHelper;->getPercentOfSendingErrorLog()I

    move-result p1

    invoke-static {p1}, Lcom/kakaogame/log/ErrorLogManager;->setErrorLogEnable(I)V

    .line 13869
    sget-object p1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-static {}, Lcom/kakaogame/KGSystem;->getLanguageCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/kakaogame/infodesk/InfodeskHelper;->getStringSet(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->customResourceMap:Ljava/util/Map;

    .line 13879
    iget-object p1, p0, Lcom/kakaogame/core/CoreManager;->logManager:Lcom/kakaogame/log/SDKLogManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kakaogame/log/SDKLogManager;->uploadLogFiles(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13889
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final declared-synchronized onLogin(Lcom/kakaogame/player/LocalPlayer;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/LoginData;Z)V
    .locals 4

    const v0, 0x7d73fe35

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    monitor-enter p0

    .line 14669
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "CoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14679
    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->player:Lcom/kakaogame/player/LocalPlayer;

    .line 14689
    sget-object v0, Lcom/kakaogame/core/CoreManager$CoreState;->LOGIN:Lcom/kakaogame/core/CoreManager$CoreState;

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    .line 14699
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p2, p4}, Lcom/kakaogame/auth/AuthDataManager;->setAuthData(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;Lcom/kakaogame/idp/IdpAccount;Z)V

    .line 14709
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->cancelPauseTimer()V

    .line 14719
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->updateRefreshSetting()V

    .line 14729
    sget-object p2, Lcom/kakaogame/KGMessage;->Companion:Lcom/kakaogame/KGMessage$Companion;

    invoke-virtual {p2}, Lcom/kakaogame/KGMessage$Companion;->clearCacheData()V

    .line 14739
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->setCrashlyticsUserIdentifier()V

    .line 14749
    iget-object p2, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14759
    :try_start_1
    iget-object p3, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/kakaogame/core/CoreManager$CoreStateListener;

    .line 14769
    invoke-virtual {p1}, Lcom/kakaogame/player/LocalPlayer;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/kakaogame/core/CoreManager$CoreStateListener;->onLogin(Ljava/lang/String;)V

    goto :goto_0

    .line 14789
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14749
    :try_start_2
    monitor-exit p2

    .line 14799
    iget-object p1, p0, Lcom/kakaogame/core/CoreManager;->logManager:Lcom/kakaogame/log/SDKLogManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kakaogame/log/SDKLogManager;->uploadLogFiles(Landroid/content/Context;)V

    .line 14829
    sget-object p1, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object p2, Lcom/kakaogame/core/FeatureManager$Feature;->snsShare:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {p1, p2}, Lcom/kakaogame/core/FeatureManager;->isSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14839
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14859
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 14749
    :try_start_3
    monitor-exit p2

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method private final declared-synchronized onLoginFailed(Lcom/kakaogame/KGResult;Lcom/kakaogame/idp/IdpAccount;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "*>;",
            "Lcom/kakaogame/idp/IdpAccount;",
            ")V"
        }
    .end annotation

    const v0, -0x4519119f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x33615a33

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    monitor-enter p0

    .line 15069
    :try_start_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "CoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15079
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xbba

    if-ne v1, v2, :cond_0

    .line 15089
    monitor-exit p0

    return-void

    .line 15109
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/kakaogame/core/CoreManager;->isAuthError(Lcom/kakaogame/KGResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15119
    invoke-virtual {p0, p2}, Lcom/kakaogame/core/CoreManager;->idpLogout(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 15129
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v1, "CoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15149
    :cond_1
    invoke-static {}, Lcom/kakaogame/server/ServerService;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final declared-synchronized onUnregister(Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    .line 15469
    :try_start_0
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v1, "CoreManager"

    const-string v2, "onUnregister"

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15479
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 15489
    sget-object v0, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    :cond_0
    const/4 v0, 0x0

    .line 15509
    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->player:Lcom/kakaogame/player/LocalPlayer;

    .line 15519
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/auth/AuthDataManager;->clearAuthData(Landroid/content/Context;)V

    .line 15529
    sget-object v1, Lcom/kakaogame/KGMessage;->Companion:Lcom/kakaogame/KGMessage$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGMessage$Companion;->clearCacheData()V

    .line 15539
    invoke-static {}, Lcom/kakaogame/server/ServerService;->disconnect()V

    .line 15549
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->stopInfodeskTimer()V

    .line 15559
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15569
    :try_start_1
    iget-object v2, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/core/CoreManager$CoreStateListener;

    .line 15579
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v4, Lcom/kakaogame/core/CoreManager$onUnregister$1$1;

    invoke-direct {v4, v3, p1, v0}, Lcom/kakaogame/core/CoreManager$onUnregister$1$1;-><init>(Lcom/kakaogame/core/CoreManager$CoreStateListener;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 15599
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15559
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15609
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 15559
    :try_start_3
    monitor-exit v1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final pauseInternal()V
    .locals 10

    .line 15989
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d73e56d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x2241360c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16009
    :try_start_0
    iget-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isPaused:Z

    if-eqz v0, :cond_1

    .line 16019
    invoke-static {}, Lcom/kakaogame/server/ServerService;->disconnect()V

    .line 16029
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16039
    :try_start_1
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/core/CoreManager$CoreStateListener;

    .line 16049
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v3, Lcom/kakaogame/core/CoreManager$pauseInternal$1$1;

    const/4 v7, 0x0

    invoke-direct {v3, v2, v7}, Lcom/kakaogame/core/CoreManager$pauseInternal$1$1;-><init>(Lcom/kakaogame/core/CoreManager$CoreStateListener;Lkotlin/coroutines/Continuation;)V

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 16069
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16029
    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 16099
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x7d73e56d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static synthetic refreshPlayer$default(Lcom/kakaogame/core/CoreManager;IILjava/lang/Object;)Lcom/kakaogame/KGResult;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 8769
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kakaogame/core/CoreManager;->refreshPlayer(I)Lcom/kakaogame/KGResult;

    move-result-object p0

    return-object p0

    .array-data 1
    .end array-data
.end method

.method private final declared-synchronized requestAutoLogin(Landroid/app/Activity;ZZI)Lcom/kakaogame/KGResult;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZZI)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/auth/LoginData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v5, p3

    move/from16 v8, p4

    const v9, -0x451a8d2f

    invoke-static {v9}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x6d0fe238

    invoke-static {v10}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x6d0fe238

    invoke-static {v11}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x2256f136

    invoke-static {v12}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x2256f136

    invoke-static {v13}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7d73f95d

    invoke-static {v14}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v14

    const v2, 0x54396c22

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x2256f316

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x33615f8b

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    monitor-enter p0

    .line 11039
    :try_start_0
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v6

    const/16 v7, 0xbba

    if-nez v6, :cond_0

    .line 11049
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "CoreManager"

    const-string v3, "autoLogin: login data is not exist"

    invoke-virtual {v0, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11059
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v7}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11089
    :cond_0
    :try_start_1
    sget-object v6, Lcom/kakaogame/core/CoreManager;->instance:Lcom/kakaogame/core/CoreManager;

    invoke-virtual {v6}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/kakaogame/server/session/SessionService;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11099
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11129
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v6

    if-nez v6, :cond_2

    .line 11139
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v7}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11159
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v6

    .line 11169
    invoke-static {v6}, Lcom/kakaogame/auth/AuthService;->isSupportIdpCode(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 11189
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "CoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11199
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v7}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11239
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11249
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, ""

    const/16 v16, 0x0

    if-eqz p2, :cond_5

    .line 11299
    invoke-virtual {v4}, Lcom/kakaogame/auth/LoginData;->getAccessToken()Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 11309
    invoke-virtual {v4}, Lcom/kakaogame/auth/LoginData;->getAccessToken()Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->isExpired()Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v18, v7

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    goto :goto_1

    .line 11319
    :cond_5
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v6, v8, v5}, Lcom/kakaogame/idp/IdpAuthManager;->checkAuth(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;IZ)Lcom/kakaogame/KGResult;

    move-result-object v15

    move-object/from16 v18, v7

    .line 11329
    sget-object v7, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    move-object/from16 v19, v11

    const-string v11, "CoreManager"

    move-object/from16 v20, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v11, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11349
    invoke-virtual {v15}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v15}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/idp/IdpAccount;

    if-eqz v3, :cond_6

    move-object v11, v3

    goto :goto_2

    :cond_6
    :goto_1
    move-object v11, v6

    :goto_2
    move/from16 v13, v16

    move-object/from16 v7, v18

    goto :goto_4

    .line 11359
    :cond_7
    invoke-virtual {v15}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v3

    const v7, 0x30d40

    if-ne v3, v7, :cond_17

    .line 11379
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v3

    invoke-static {v3}, Lcom/kakaogame/auth/AuthService;->canLoginZat(Lcom/kakaogame/auth/LoginData;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v3

    invoke-static {v3}, Lcom/kakaogame/auth/AuthService;->canIssueZat(Lcom/kakaogame/auth/LoginData;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    .line 11479
    :cond_8
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v15}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x191

    invoke-virtual {v0, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11399
    :cond_9
    :goto_3
    :try_start_5
    invoke-virtual {v15}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11429
    invoke-virtual {v6}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v3

    sget-object v11, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->Kakao:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v11}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v3, v11, v13}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 11439
    iput-boolean v13, v1, Lcom/kakaogame/core/CoreManager;->isKakaoCacheMode:Z

    .line 11449
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v11, "CoreManager"

    const-string v13, "on KakaoCacheMode."

    invoke-virtual {v3, v11, v13}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object v11, v6

    const/4 v13, 0x1

    .line 11549
    :goto_4
    invoke-static {v4}, Lcom/kakaogame/auth/AuthService;->canLoginZat(Lcom/kakaogame/auth/LoginData;)Z

    move-result v3

    if-eqz v13, :cond_c

    if-nez v3, :cond_c

    .line 11589
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/kakaogame/auth/AuthDataManager;->requestIssueZAT(Landroid/content/Context;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 11599
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "CoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11609
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_b

    .line 11619
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x191

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11669
    :cond_b
    :try_start_6
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, v4

    const/4 v13, 0x1

    goto :goto_5

    :cond_c
    move v13, v3

    move-object v0, v4

    :goto_5
    if-eqz v13, :cond_d

    .line 11709
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, v1, Lcom/kakaogame/core/CoreManager;->waitCount:J

    invoke-static {v2, v0, v5, v3, v4}, Lcom/kakaogame/auth/AuthService;->getZatLoginRequest(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;ZJ)Lcom/kakaogame/KGResult;

    move-result-object v2

    goto :goto_6

    .line 11729
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcom/kakaogame/auth/AuthService$LoginType;->AUTO:Lcom/kakaogame/auth/AuthService$LoginType;

    iget-wide v6, v1, Lcom/kakaogame/core/CoreManager;->waitCount:J

    move-object v3, v11

    move/from16 v5, p3

    invoke-static/range {v2 .. v7}, Lcom/kakaogame/auth/AuthService;->getIDPLoginRequest(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/AuthService$LoginType;ZJ)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 11759
    :goto_6
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 11769
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11799
    :cond_e
    :try_start_7
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakaogame/server/ServerRequest;

    .line 11809
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "auto"

    invoke-static {v2, v3, v8}, Lcom/kakaogame/server/ServerService;->requestConnect(Lcom/kakaogame/server/ServerRequest;Ljava/lang/String;I)Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 11819
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v5, "CoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11849
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_f

    .line 11859
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11899
    :cond_f
    :try_start_8
    invoke-virtual {v1, v3}, Lcom/kakaogame/core/CoreManager;->isAuthError(Lcom/kakaogame/KGResult;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v4

    const/16 v5, 0x1cf

    if-ne v4, v5, :cond_10

    goto/16 :goto_7

    .line 11959
    :cond_10
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/server/ServerResult;

    .line 11969
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v5, "CoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_11

    .line 12009
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v2, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12029
    :cond_11
    :try_start_9
    invoke-static {v3}, Lcom/kakaogame/auth/AuthService;->handleLoginResult(Lcom/kakaogame/server/ServerResult;)Lcom/kakaogame/KGResult;

    move-result-object v4

    .line 12039
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v6, "CoreManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12049
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 12069
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->getCode()I

    move-result v17

    .line 12079
    invoke-virtual {v3}, Lcom/kakaogame/server/ServerResult;->getResponse()Lcom/kakaogame/server/ServerResponse;

    move-result-object v19

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v0

    move-object/from16 v21, v11

    move/from16 v24, p2

    .line 12059
    invoke-static/range {v17 .. v24}, Lcom/kakaogame/log/ErrorLogManager;->sendPlatformLoginError(ILcom/kakaogame/server/ServerRequest;Lcom/kakaogame/server/ServerResponse;Lcom/kakaogame/auth/LoginData;Lcom/kakaogame/idp/IdpAccount;Ljava/lang/Exception;Ljava/lang/String;Z)V

    .line 12109
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12129
    :cond_12
    :try_start_a
    invoke-virtual {v4}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/kakaogame/auth/LoginData;

    .line 12139
    new-instance v2, Lcom/kakaogame/player/LocalPlayer;

    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData;->getPlayer()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kakaogame/player/LocalPlayer;-><init>(Ljava/util/Map;)V

    .line 12149
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData;->getPlayer()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "idpId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12159
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v5, "CoreManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12169
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_13

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_14

    :cond_13
    const/16 v16, 0x1

    :cond_14
    if-nez v16, :cond_15

    const-string/jumbo v4, "userId"

    .line 12179
    invoke-virtual {v11, v4, v3}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12199
    invoke-virtual {v11}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v4}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "accessToken"

    .line 12209
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData;->getSiwaAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "refreshToken"

    .line 12219
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData;->getSiwaRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    const/4 v3, 0x1

    .line 12249
    invoke-direct {v1, v2, v11, v0, v3}, Lcom/kakaogame/core/CoreManager;->onLogin(Lcom/kakaogame/player/LocalPlayer;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/LoginData;Z)V

    .line 12259
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v2, v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11909
    :cond_16
    :goto_7
    :try_start_b
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "CoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11919
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakaogame/server/ServerResult;

    invoke-static {v0}, Lcom/kakaogame/auth/AuthService;->handleLoginResult(Lcom/kakaogame/server/ServerResult;)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 11929
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "CoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11939
    sget-object v2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v0

    .line 11509
    :cond_17
    :try_start_c
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v15, Ljava/util/Map;

    invoke-virtual {v0, v15}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    .array-data 1
    .end array-data
.end method

.method private final requestInfodesk()V
    .locals 3

    const/4 v0, 0x1

    .line 13919
    invoke-virtual {p0, v0}, Lcom/kakaogame/core/CoreManager;->loadInfodesk(Z)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 13929
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/infodesk/InfodeskData;

    if-nez v1, :cond_0

    .line 13949
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d73e56d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x451a9ba7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13999
    :cond_0
    invoke-static {}, Lcom/kakaogame/log/ErrorLogManager;->sendFailLogData()V

    .line 14009
    sget-object v2, Lcom/kakaogame/core/CoreManager;->instance:Lcom/kakaogame/core/CoreManager;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/kakaogame/core/CoreManager;->handleInfodesk(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData;Z)Lcom/kakaogame/KGResult;

    return-void

    .array-data 1
    .end array-data
.end method

.method private final setCrashlyticsUserIdentifier()V
    .locals 2

    .line 4239
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kakaogame/log/IFirebase;->setCrashUserIdentifier(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private final setIsUnity()V
    .locals 3

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 3369
    :try_start_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->checkUnity()V

    .line 3379
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "isUnity!!!"

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3409
    :catch_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x543af7ca

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3359
    :goto_0
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isUnity:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final setIsUnreal()V
    .locals 3

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 3539
    :try_start_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->checkUnreal()V

    .line 3549
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "isUnreal!!!"

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3579
    :catch_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, -0x451a9af7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3529
    :goto_0
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isUnreal:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private final startInfodeskTimer()V
    .locals 10

    const v0, 0x5d13df07

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    .line 10319
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->infodeskRefreshLock:Ljava/lang/Object;

    monitor-enter v1

    .line 10329
    :try_start_0
    iget-object v2, p0, Lcom/kakaogame/core/CoreManager;->infodeskTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v2, :cond_0

    .line 10339
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->stopInfodeskTimer()V

    .line 10359
    :cond_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "CoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/kakaogame/core/CoreManager;->refreshInterval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10369
    new-instance v5, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda2;-><init>(Lcom/kakaogame/core/CoreManager;)V

    .line 10409
    new-instance v0, Lcom/kakaogame/core/TimerManager;

    iget-wide v8, p0, Lcom/kakaogame/core/CoreManager;->refreshInterval:J

    move-object v4, v0

    move-wide v6, v8

    invoke-direct/range {v4 .. v9}, Lcom/kakaogame/core/TimerManager;-><init>(Ljava/lang/Runnable;JJ)V

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->infodeskTimer:Lcom/kakaogame/core/TimerManager;

    .line 10419
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/core/TimerManager;->startTimer()V

    .line 10429
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10319
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .array-data 1
    .end array-data
.end method

.method private static final startInfodeskTimer$lambda$28$lambda$27(Lcom/kakaogame/core/CoreManager;)V
    .locals 3

    .line 10379
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d73e56d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x451a9997

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10389
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->requestInfodesk()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final startOnlineAlarmTimer$lambda$24$lambda$23(Lcom/kakaogame/core/CoreManager;JLandroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 9749
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 9759
    iget-object p1, p0, Lcom/kakaogame/core/CoreManager;->onlineNotificationId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kakaogame/core/CoreManager;->stopOnlineAlarmTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 9779
    :cond_0
    invoke-static {p3, p4}, Lcom/kakaogame/push/OnlinePushManager;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method private final startPauseTimer()V
    .locals 6

    .line 15679
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d73f785

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d73e56d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15699
    :try_start_0
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->cancelPauseTimer()V

    const/4 v0, 0x1

    .line 15709
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isPaused:Z

    .line 15719
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 15729
    new-instance v0, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda1;-><init>(Lcom/kakaogame/core/CoreManager;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v0, v4, v5, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->pauseTimer:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15749
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method private static final startPauseTimer$lambda$34(Lcom/kakaogame/core/CoreManager;)V
    .locals 0

    .line 15729
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->pauseInternal()V

    return-void

    .array-data 1
    .end array-data
.end method

.method private static final startWarningSDKTimer$lambda$26()V
    .locals 3

    .line 10149
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x7d73e56d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x224125dc    # -1.719043E18f

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->he(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final stopInfodeskTimer()V
    .locals 2

    .line 10469
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->infodeskRefreshLock:Ljava/lang/Object;

    monitor-enter v0

    .line 10479
    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->infodeskTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v1, :cond_0

    .line 10489
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/core/TimerManager;->stopTimer()V

    const/4 v1, 0x0

    .line 10499
    iput-object v1, p0, Lcom/kakaogame/core/CoreManager;->infodeskTimer:Lcom/kakaogame/core/TimerManager;

    .line 10519
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10469
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    .array-data 1
    .end array-data
.end method

.method private final stopWarningSDKTimer()V
    .locals 1

    .line 10249
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->warningTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v0, :cond_0

    .line 10259
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/core/TimerManager;->stopTimer()V

    const/4 v0, 0x0

    .line 10269
    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->warningTimer:Lcom/kakaogame/core/TimerManager;

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final addCoreStateListener(Lcom/kakaogame/core/CoreManager$CoreStateListener;)V
    .locals 2

    const v0, 0x3365cce3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9379
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final addTraceMetric(ILjava/lang/String;)V
    .locals 2

    const v0, 0x6d0fea20

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4539
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    if-eqz v0, :cond_0

    .line 4559
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/kakaogame/log/IFirebase;->addTraceMetric(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4579
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x6d0fede8

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final authorize(Lcom/kakaogame/idp/IdpAccount;ZI)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/IdpAccount;",
            "ZI)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/auth/LoginData;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d73f045

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d73f1fd

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 7379
    :try_start_0
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7389
    iget-object v2, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v2

    sget-object v3, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7399
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, 0xbb9

    invoke-virtual {p2, v1, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 7429
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const-string p3, "authData is null"

    const/16 v1, 0xfa0

    invoke-virtual {p2, v1, p3}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 7449
    :cond_1
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->cancelPauseTimer()V

    .line 7459
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->retryWaiting()V

    .line 7469
    invoke-direct {p0, p1, p2, p3}, Lcom/kakaogame/core/CoreManager;->loginInternal(Lcom/kakaogame/idp/IdpAccount;ZI)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 7519
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 7529
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNeedToWaitError()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7539
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->increaseWaitCount()V

    .line 7559
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/kakaogame/core/CoreManager;->onLoginFailed(Lcom/kakaogame/KGResult;Lcom/kakaogame/idp/IdpAccount;)V

    goto :goto_0

    .line 7579
    :cond_3
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->resetWaitTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7619
    sget-object p3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p3, v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7629
    sget-object p3, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 7639
    invoke-direct {p0, p2, p1}, Lcom/kakaogame/core/CoreManager;->onLoginFailed(Lcom/kakaogame/KGResult;Lcom/kakaogame/idp/IdpAccount;)V

    :goto_0
    return-object p2

    .array-data 1
    .end array-data
.end method

.method public final autoLogin(Landroid/app/Activity;ZI)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZI)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/auth/LoginData;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73f045

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 5369
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x2256f85e

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7d73e56d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5389
    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/kakaogame/core/CoreManager$CoreState;->INIT:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5399
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xbb9

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 5419
    :cond_0
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->cancelPauseTimer()V

    const/4 v0, 0x0

    .line 5429
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/kakaogame/core/CoreManager;->autoLoginInternal(Landroid/app/Activity;ZZI)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 5499
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5509
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p2

    const/16 p3, 0xbba

    if-eq p2, p3, :cond_1

    .line 5519
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/kakaogame/core/CoreManager;->onLoginFailed(Lcom/kakaogame/KGResult;Lcom/kakaogame/idp/IdpAccount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5559
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p2, v3, p3, v0}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5569
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 5579
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/kakaogame/core/CoreManager;->onLoginFailed(Lcom/kakaogame/KGResult;Lcom/kakaogame/idp/IdpAccount;)V

    :cond_1
    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final declared-synchronized autoLoginInternalForZatRefresh()Lcom/kakaogame/KGResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/auth/LoginData;",
            ">;"
        }
    .end annotation

    const v0, 0x5d13d8a7

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x6d0fe238

    invoke-static {v1}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x2256f136

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    monitor-enter p0

    .line 12359
    :try_start_0
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v3

    .line 12369
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v10

    if-eqz v3, :cond_6

    if-nez v10, :cond_0

    goto/16 :goto_0

    .line 12439
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/kakaogame/auth/AuthService$LoginType;->AUTO:Lcom/kakaogame/auth/AuthService$LoginType;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, v10

    invoke-static/range {v4 .. v9}, Lcom/kakaogame/auth/AuthService;->getIDPLoginRequest(Landroid/content/Context;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/auth/AuthService$LoginType;ZJ)Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 12449
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12459
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12479
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/server/ServerRequest;

    .line 12489
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object v3

    .line 12499
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v5, "CoreManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12509
    invoke-static {v3}, Lcom/kakaogame/auth/AuthService;->handleLoginResult(Lcom/kakaogame/server/ServerResult;)Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 12519
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "CoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12529
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12539
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12559
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/auth/LoginData;

    .line 12569
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/kakaogame/auth/LoginData;->getPlayer()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "idpId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12579
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "CoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12589
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v6, v3

    :cond_4
    if-nez v6, :cond_5

    const-string/jumbo v0, "userId"

    .line 12599
    invoke-virtual {v10, v0, v2}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12619
    :cond_5
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v10, v3}, Lcom/kakaogame/auth/AuthDataManager;->setAuthData(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;Lcom/kakaogame/idp/IdpAccount;Z)V

    .line 12629
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 12409
    :cond_6
    :goto_0
    :try_start_3
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v1, "CoreManager"

    const-string v2, "autoLogin: login data is not exist"

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12419
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xbba

    invoke-virtual {v0, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public final checkUnity()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const v1, -0x451a9db7

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final checkUnreal()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3659
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const v1, 0x2256fa46

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    return-void

    .array-data 1
    .end array-data
.end method

.method public final connect(Lcom/kakaogame/idp/IdpAccount;ZI)Lcom/kakaogame/KGResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/IdpAccount;",
            "ZI)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d70ab5d    # 1.999403E37f

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 7769
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "CoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7779
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->cancelPauseTimer()V

    .line 7799
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7809
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    .line 7789
    invoke-static {v0, v1, p1, p3}, Lcom/kakaogame/auth/AuthService;->connect(Landroid/content/Context;Ljava/lang/String;Lcom/kakaogame/idp/IdpAccount;I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 7849
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 7859
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 7879
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/kakaogame/idp/IdpAccount;

    .line 7889
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7919
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "siwa"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "appleSIWAAccessToken"

    .line 7929
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/kakaogame/auth/LoginData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "appleSIWARefreshToken"

    .line 7939
    invoke-virtual {p1}, Lcom/kakaogame/idp/IdpAccount;->getIdpRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/kakaogame/auth/LoginData;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7959
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p1, p2}, Lcom/kakaogame/auth/AuthDataManager;->setAuthData(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;Lcom/kakaogame/idp/IdpAccount;Z)V

    .line 7969
    iget-object p1, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7979
    :try_start_1
    iget-object p2, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kakaogame/core/CoreManager$CoreStateListener;

    .line 7989
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/kakaogame/core/CoreManager$connect$1$1;

    const/4 v4, 0x0

    invoke-direct {v0, p3, p0, v4}, Lcom/kakaogame/core/CoreManager$connect$1$1;-><init>(Lcom/kakaogame/core/CoreManager$CoreStateListener;Lcom/kakaogame/core/CoreManager;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 8009
    :cond_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7969
    :try_start_2
    monitor-exit p1

    .line 8019
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 7969
    monitor-exit p1

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 8039
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string p3, "CoreManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p2, p3, v0, v1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8049
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final currentTimeMillis()J
    .locals 4

    .line 9459
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->infodesk:Lcom/kakaogame/infodesk/InfodeskData;

    if-eqz v0, :cond_0

    .line 9469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kakaogame/core/CoreManager;->serverTimeDiffer:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 9479
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    .line 9229
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9239
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9259
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData;->getAccessToken()Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9279
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9289
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData$ZinnyAccessToken;->getZat()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 1749
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivityHolder()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getActivityHolder()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1569
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->activityHolder:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x6d0fd100

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 9009
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAppSecret()Ljava/lang/String;
    .locals 1

    .line 9029
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/config/Configuration;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getAuthData()Lcom/kakaogame/idp/IdpAccount;
    .locals 1

    .line 8979
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getAccount()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getConfiguration()Lcom/kakaogame/config/Configuration;
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->configuration:Lcom/kakaogame/config/Configuration;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x2256234e

    invoke-static {v0}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1719
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivityHolder()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getFCMToken()Ljava/lang/String;
    .locals 1

    .line 4209
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kakaogame/log/IFirebase;->getFCMToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getInfodesk()Lcom/kakaogame/infodesk/InfodeskData;
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->infodesk:Lcom/kakaogame/infodesk/InfodeskData;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getLaunchingReferrer()Ljava/lang/String;
    .locals 2

    .line 3249
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->launchingReferrer:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3259
    iput-object v1, p0, Lcom/kakaogame/core/CoreManager;->launchingReferrer:Ljava/lang/String;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getMarketRefundInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMarketRefundInfo;",
            ">;"
        }
    .end annotation

    .line 1489
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->marketRefundInfoList:Ljava/util/List;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPlayer()Lcom/kakaogame/player/LocalPlayer;
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->player:Lcom/kakaogame/player/LocalPlayer;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 2

    .line 9059
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->player:Lcom/kakaogame/player/LocalPlayer;

    if-eqz v0, :cond_1

    .line 9079
    invoke-virtual {v0}, Lcom/kakaogame/player/LocalPlayer;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    .line 9089
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v0

    .line 9129
    :cond_1
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9139
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, ""

    :cond_3
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 4

    .line 3009
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakaogame/config/Configuration;->getServerTypeString()Ljava/lang/String;

    move-result-object v0

    .line 3019
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 3029
    sget-object v2, Lcom/kakaogame/config/Configuration$KGServerType;->LIVE:Lcom/kakaogame/config/Configuration$KGServerType;

    invoke-virtual {v2}, Lcom/kakaogame/config/Configuration$KGServerType;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final getSnsShareData()Lcom/kakaogame/promotion/SNSShareData;
    .locals 4

    .line 1909
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1919
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    .line 1929
    invoke-static {v0, v1}, Lcom/kakaogame/invite/InviteDataManager;->loadPlayerInvitationReferrer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1939
    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 1949
    invoke-static {}, Lcom/kakaogame/promotion/PromotionService;->getPlayerReferrer()Lcom/kakaogame/KGResult;

    move-result-object v2

    .line 1959
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1969
    invoke-virtual {v2}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1979
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/kakaogame/invite/InviteDataManager;->savePlayerInvitationReferrer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :cond_2
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->snsShareData:Lcom/kakaogame/promotion/SNSShareData;

    if-eqz v0, :cond_3

    .line 2019
    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData;->needRefresh()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    .line 2069
    :cond_3
    sget-object v0, Lcom/kakaogame/promotion/SNSShareData;->Companion:Lcom/kakaogame/promotion/SNSShareData$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/promotion/SNSShareData$Companion;->loadData()Lcom/kakaogame/promotion/SNSShareData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2089
    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->snsShareData:Lcom/kakaogame/promotion/SNSShareData;

    .line 2119
    :cond_4
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->snsShareData:Lcom/kakaogame/promotion/SNSShareData;

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final getUseFirebase()Z
    .locals 1

    .line 4169
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final handleInfodesk(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData;Z)Lcom/kakaogame/KGResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/infodesk/InfodeskData;",
            "Z)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14089
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x543acfca

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d73e56d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 14109
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0x270f

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 14149
    :cond_0
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getServerConnectionType()Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    move-result-object v0

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;->https:Lcom/kakaogame/infodesk/InfodeskHelper$ServerConnectionType;

    if-ne v0, v1, :cond_1

    .line 14159
    sget-object v0, Lcom/kakaogame/server/PresenceService;->INSTANCE:Lcom/kakaogame/server/PresenceService;

    sget-object v1, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskHelper;->isUseHttpHeartbeat()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/server/PresenceService;->setHeartbeatUri(Z)V

    .line 14179
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->updateRefreshSetting()V

    .line 14189
    invoke-static {p1, p2}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showAlarms(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData;)V

    const/16 v0, 0x26ac

    if-eqz p3, :cond_3

    .line 14209
    invoke-static {p1, p2}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showTerminateNoticeOnRefreshInfodesk(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 14219
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 14229
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p3

    if-ne p3, v0, :cond_2

    .line 14239
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    .line 14269
    :cond_2
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 14289
    :cond_3
    invoke-static {p1, p2}, Lcom/kakaogame/infodesk/InfodeskNoticeManager;->showNotices(Landroid/app/Activity;Lcom/kakaogame/infodesk/InfodeskData;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 14299
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 14309
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p3

    if-ne p3, v0, :cond_4

    .line 14319
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    .line 14339
    :cond_4
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 14359
    :cond_5
    invoke-static {p1}, Lcom/kakaogame/ui/AppUpdateManager;->checkUpdate(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object p2

    .line 14369
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 14379
    invoke-virtual {p2}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p3

    if-ne p3, v0, :cond_6

    .line 14389
    invoke-static {p1}, Lcom/kakaogame/util/AppUtil;->terminateApp(Landroid/app/Activity;)V

    .line 14409
    :cond_6
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 14449
    :cond_7
    sget-object p2, Lcom/kakaogame/core/FeatureManager;->INSTANCE:Lcom/kakaogame/core/FeatureManager;

    sget-object p3, Lcom/kakaogame/core/FeatureManager$Feature;->push:Lcom/kakaogame/core/FeatureManager$Feature;

    invoke-virtual {p2, p3}, Lcom/kakaogame/core/FeatureManager;->isSupportedFeature(Lcom/kakaogame/core/FeatureManager$Feature;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 14459
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/kakaogame/push/PushService;->checkManifest(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 14479
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const v0, -0x451aa2cf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14489
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xbb8

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 14519
    :cond_8
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z
    .locals 1

    const v0, 0x6d0b0e48

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2359
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->customUIManager:Lcom/kakaogame/ui/CustomUIManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2379
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/kakaogame/ui/CustomUIManager;->hasCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;)Z

    move-result p1

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public final idpLogout(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/IdpAccount;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d73f045

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x6d0fd348

    invoke-static {v2}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v2

    .line 6289
    :try_start_0
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6299
    iget-object v2, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v2

    sget-object v3, Lcom/kakaogame/core/CoreManager$CoreState;->INIT:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6309
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb9

    invoke-virtual {p1, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 6329
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 6349
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/kakaogame/idp/IdpAuthManager;->logout(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 6359
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6369
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 6399
    :cond_1
    invoke-virtual {p0, v1}, Lcom/kakaogame/core/CoreManager;->onLogout(Ljava/lang/String;)V

    .line 6409
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6429
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v0, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6439
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final increaseWaitCount()V
    .locals 4

    .line 2929
    iget-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->useWaitCount:Z

    if-eqz v0, :cond_0

    .line 2939
    iget-wide v0, p0, Lcom/kakaogame/core/CoreManager;->waitCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kakaogame/core/CoreManager;->waitCount:J

    const/4 v0, 0x0

    .line 2949
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->useWaitCount:Z

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final init(Landroid/app/Activity;Lcom/kakaogame/config/Configuration;)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kakaogame/config/Configuration;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x33616a2b

    invoke-static {v1}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x2256234e

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3719
    :try_start_0
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    invoke-virtual {p0, p2}, Lcom/kakaogame/core/CoreManager;->setConfiguration(Lcom/kakaogame/config/Configuration;)V

    .line 3739
    invoke-virtual {p2}, Lcom/kakaogame/config/Configuration;->getDebugLevel()Lcom/kakaogame/config/Configuration$KGDebugLevel;

    move-result-object p2

    sget-object v1, Lcom/kakaogame/core/CoreManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/kakaogame/config/Configuration$KGDebugLevel;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    .line 3779
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Lcom/kakaogame/Logger;->setLoggingLevel(I)V

    goto :goto_0

    .line 3769
    :cond_0
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Lcom/kakaogame/Logger;->setLoggingLevel(I)V

    goto :goto_0

    .line 3759
    :cond_1
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p2, v1}, Lcom/kakaogame/Logger;->setLoggingLevel(I)V

    goto :goto_0

    .line 3749
    :cond_2
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p2, v2}, Lcom/kakaogame/Logger;->setLoggingLevel(I)V

    .line 3799
    :goto_0
    sget-object p2, Lcom/kakaogame/manager/SdkManager;->INSTANCE:Lcom/kakaogame/manager/SdkManager;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/kakaogame/manager/SdkManager;->isTestMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3809
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p2, v2}, Lcom/kakaogame/Logger;->setLoggingLevel(I)V

    .line 3829
    :cond_3
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->initModules()V

    .line 3839
    iget-object p2, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {p2}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result p2

    sget-object v1, Lcom/kakaogame/core/CoreManager$CoreState;->INIT:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v1

    if-ge p2, v1, :cond_4

    .line 3849
    sget-object p2, Lcom/kakaogame/core/CoreManager$CoreState;->INIT:Lcom/kakaogame/core/CoreManager$CoreState;

    iput-object p2, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    :cond_4
    const-string p2, "android.permission.INTERNET"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 3869
    filled-new-array {p2, v1}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 3879
    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/kakaogame/util/AndroidManifestUtil;->checkPermissions(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3889
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_1

    .line 3899
    :cond_5
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p2, 0xbb8

    invoke-virtual {p1, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(I)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3919
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, v1, v2}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3929
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v0, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_1
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final initFirebase(Landroid/content/Context;)V
    .locals 4

    const v0, -0x451e0c57

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3979
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v1, 0x2256c6ee

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d73e56d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3989
    sget-object v0, Lcom/kakaogame/core/CoreManager;->Companion:Lcom/kakaogame/core/CoreManager$Companion;

    const v1, -0x224106d4

    invoke-static {v1}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kakaogame/core/CoreManager$Companion;->access$getFirebase(Lcom/kakaogame/core/CoreManager$Companion;Ljava/lang/String;)Lcom/kakaogame/log/IFirebase;

    move-result-object v0

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    if-eqz v0, :cond_1

    .line 4019
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->configuration:Lcom/kakaogame/config/Configuration;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakaogame/config/Configuration;->useFirebase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4029
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v3, 0x543aca62

    invoke-static {v3}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4039
    invoke-interface {v0, p1}, Lcom/kakaogame/log/IFirebase;->initialize(Landroid/content/Context;)V

    .line 4049
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4059
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->setCrashlyticsUserIdentifier()V

    goto :goto_0

    .line 4089
    :cond_0
    invoke-interface {v0, p1}, Lcom/kakaogame/log/IFirebase;->initialize(Landroid/content/Context;)V

    goto :goto_0

    .line 4109
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/kakaogame/core/CoreManager;

    .line 4119
    sget-object p1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v0, 0x6d0fd7d0

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final isAuthError(Lcom/kakaogame/KGResult;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/KGResult<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 14919
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p1

    const/16 v1, 0x191

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1cd

    if-eq p1, v1, :cond_1

    const/16 v1, 0xfaa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xfdc

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0

    .array-data 1
    .end array-data
.end method

.method public final isAuthorized()Z
    .locals 2

    .line 8939
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    sget-object v1, Lcom/kakaogame/core/CoreManager$CoreState;->LOGIN:Lcom/kakaogame/core/CoreManager$CoreState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final isFirstLogin()Z
    .locals 1

    .line 9179
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9189
    invoke-virtual {v0}, Lcom/kakaogame/auth/LoginData;->isFirstLogin()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isGetFirstInfodesk()Z
    .locals 1

    .line 1199
    iget-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isGetFirstInfodesk:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isKakaoCacheMode()Z
    .locals 1

    .line 1499
    iget-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isKakaoCacheMode:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isLoggedInWithCredentialManager()Z
    .locals 1

    .line 1529
    iget-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isLoggedInWithCredentialManager:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isNotAuthorized()Z
    .locals 1

    .line 8959
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isPaused()Z
    .locals 1

    .line 1249
    iget-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isPaused:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isUnity()Z
    .locals 1

    .line 1439
    iget-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isUnity:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isUnreal()Z
    .locals 1

    .line 1459
    iget-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isUnreal:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final loadInfodesk(Z)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/infodesk/InfodeskData;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 5679
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "loadInfodesk"

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5689
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getConfiguration()Lcom/kakaogame/config/Configuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kakaogame/infodesk/InfodeskDataCache;->getCachedData(Landroid/content/Context;Lcom/kakaogame/config/Configuration;)Lcom/kakaogame/infodesk/InfodeskData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5699
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "Get cached infodesk data."

    invoke-virtual {v2, v0, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 5709
    invoke-direct {p0, v1, v2, p1}, Lcom/kakaogame/core/CoreManager;->onInfodesk(Lcom/kakaogame/infodesk/InfodeskData;ZZ)V

    .line 5719
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 5759
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->retryWaiting()V

    .line 5789
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/infodesk/InfodeskService;->loadInfodeskByHttp(Landroid/app/Activity;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 5799
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5809
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->resetWaitTime()V

    .line 5819
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/kakaogame/infodesk/InfodeskData;

    .line 5829
    invoke-virtual {v1}, Lcom/kakaogame/infodesk/InfodeskData;->setGettingDataTime()V

    const/4 v2, 0x0

    .line 5839
    invoke-direct {p0, v1, v2, p1}, Lcom/kakaogame/core/CoreManager;->onInfodesk(Lcom/kakaogame/infodesk/InfodeskData;ZZ)V

    .line 5849
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult(Ljava/lang/Object;)Lcom/kakaogame/KGResult;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 5869
    invoke-virtual {v1}, Lcom/kakaogame/KGResult;->isNeedToWaitError()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5879
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->increaseWaitCount()V

    .line 5899
    :cond_3
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5929
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v0, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5939
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final logout()Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x4519119f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d73f045

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    .line 6029
    :try_start_0
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v4, "logout"

    invoke-virtual {v3, v0, v4}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6039
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6049
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbba

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 6069
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    .line 6079
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6089
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kakaogame/idp/IdpAuthManager;->logout(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 6099
    invoke-virtual {v3}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6109
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v1, v3}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 6139
    :cond_1
    invoke-static {}, Lcom/kakaogame/auth/AuthService;->logout()Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 6149
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6159
    invoke-virtual {p0, v2}, Lcom/kakaogame/core/CoreManager;->onLogout(Ljava/lang/String;)V

    .line 6169
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6189
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v0, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6199
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final offKakaoCacheMode()V
    .locals 1

    const/4 v0, 0x0

    .line 1779
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isKakaoCacheMode:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public final onCustomUICallback(Ljava/lang/String;)V
    .locals 1

    .line 2419
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->customUIManager:Lcom/kakaogame/ui/CustomUIManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/kakaogame/ui/CustomUIManager;->onCustomUICallbackOnUnity(Ljava/lang/String;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final declared-synchronized onLogout(Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "playerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15229
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v1, "CoreManager"

    const-string v2, "onLogout"

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15239
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v0}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 15249
    sget-object v0, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    :cond_0
    const/4 v0, 0x0

    .line 15269
    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->player:Lcom/kakaogame/player/LocalPlayer;

    .line 15279
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kakaogame/auth/AuthDataManager;->clearAuthData(Landroid/content/Context;)V

    .line 15289
    sget-object v1, Lcom/kakaogame/KGMessage;->Companion:Lcom/kakaogame/KGMessage$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGMessage$Companion;->clearCacheData()V

    .line 15299
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 15309
    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 15319
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    .line 15329
    invoke-static {}, Lcom/kakaogame/server/ServerService;->disconnect()V

    .line 15339
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->stopInfodeskTimer()V

    .line 15349
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15359
    :try_start_1
    iget-object v2, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kakaogame/core/CoreManager$CoreStateListener;

    .line 15369
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v4}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v4, Lcom/kakaogame/core/CoreManager$onLogout$1$1;

    invoke-direct {v4, v3, p1, v0}, Lcom/kakaogame/core/CoreManager$onLogout$1$1;-><init>(Lcom/kakaogame/core/CoreManager$CoreStateListener;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 15389
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15349
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15399
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 15349
    :try_start_3
    monitor-exit v1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .array-data 1
    .end array-data
.end method

.method public final pause()Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 8279
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "pause"

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8289
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->startPauseTimer()V

    .line 8299
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->stopInfodeskTimer()V

    .line 8309
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->stopWarningSDKTimer()V

    .line 8319
    sget-boolean v1, Lcom/kakaogame/version/SDKVersion;->isPublishing:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8329
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/kakaogame/core/CoreManager$pause$1;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/kakaogame/core/CoreManager$pause$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 8369
    :cond_0
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8389
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v0, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8399
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final putEventListener(Lcom/kakaogame/KGSNSShare$KGEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2569
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->eventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final declared-synchronized reconnectAutoLogin()Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Lcom/kakaogame/auth/LoginData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 5089
    :try_start_0
    invoke-static {v0}, Lcom/kakaogame/server/PresenceService;->setReconnect(Z)V

    .line 5109
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    .line 5099
    invoke-direct {p0, v1, v0, v0, v2}, Lcom/kakaogame/core/CoreManager;->autoLoginInternal(Landroid/app/Activity;ZZI)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 5159
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5169
    invoke-static {v1}, Lcom/kakaogame/server/PresenceService;->setReconnect(Z)V

    .line 5189
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    .line 5179
    invoke-static {v3, v4, v0, v1, v2}, Lcom/kakaogame/auth/AuthImpl;->handleLoginResult(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;Lcom/kakaogame/KGResult;ZI)Lcom/kakaogame/KGResult;

    .line 5249
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kakaogame/core/CoreManager;->onLoginFailed(Lcom/kakaogame/KGResult;Lcom/kakaogame/idp/IdpAccount;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5269
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .array-data 1
    .end array-data
.end method

.method public final refreshPlayer(I)Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 8789
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "refreshPlayer"

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8799
    invoke-static {p1}, Lcom/kakaogame/player/LocalPlayerService;->getLocalPlayer(I)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 8809
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8819
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 8839
    :cond_0
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakaogame/player/LocalPlayer;

    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->player:Lcom/kakaogame/player/LocalPlayer;

    .line 8849
    iget-object p1, p0, Lcom/kakaogame/core/CoreManager;->logManager:Lcom/kakaogame/log/SDKLogManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/kakaogame/log/SDKLogManager;->uploadLogFiles(Landroid/content/Context;)V

    .line 8859
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8879
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v0, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8889
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final registerShowCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Lcom/kakaogame/KGCustomUI$KGShowCustomAlertHandler;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 2199
    :cond_1
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->customUIManager:Lcom/kakaogame/ui/CustomUIManager;

    if-nez v0, :cond_2

    .line 2209
    new-instance v0, Lcom/kakaogame/ui/CustomUIManager;

    invoke-direct {v0}, Lcom/kakaogame/ui/CustomUIManager;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->customUIManager:Lcom/kakaogame/ui/CustomUIManager;

    .line 2229
    :cond_2
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->customUIManager:Lcom/kakaogame/ui/CustomUIManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/ui/CustomUIManager;->registerShowCustomAlertHandler(Lcom/kakaogame/KGCustomUI$KGCustomAlertType;Lcom/kakaogame/KGCustomUI$KGShowCustomAlertHandler;)V

    :cond_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final removeCoreStateListener(Lcom/kakaogame/core/CoreManager$CoreStateListener;)V
    .locals 2

    const v0, 0x3365cce3

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9419
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreStateListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final request(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/kakaogame/KGResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;J)",
            "Lcom/kakaogame/KGResult<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x5d179617

    invoke-static {v1}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d73f045

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x22465c0c

    invoke-static {v3}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x5d10f927

    invoke-static {v4}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8539
    :try_start_0
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8549
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8559
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xbba

    invoke-virtual {p1, p3, p2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 8579
    :cond_0
    new-instance v1, Lcom/kakaogame/server/ServerRequest;

    invoke-direct {v1, p1}, Lcom/kakaogame/server/ServerRequest;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 8599
    invoke-virtual {v1, p2}, Lcom/kakaogame/server/ServerRequest;->putAllHeader(Ljava/util/Map;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 8629
    invoke-virtual {v1, p3}, Lcom/kakaogame/server/ServerRequest;->putAllBody(Ljava/util/Map;)V

    .line 8649
    :cond_2
    invoke-virtual {v1, p4, p5}, Lcom/kakaogame/server/ServerRequest;->setTimeout(J)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 8659
    invoke-static {v1, p3, p1, p2}, Lcom/kakaogame/server/ServerService;->requestServer$default(Lcom/kakaogame/server/ServerRequest;IILjava/lang/Object;)Lcom/kakaogame/server/ServerResult;

    move-result-object p1

    .line 8669
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8689
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    move-object p4, p1

    check-cast p4, Ljava/lang/Throwable;

    invoke-virtual {p2, v0, p3, p4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8699
    sget-object p2, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 p3, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final requestSnsShare(Ljava/lang/String;)V
    .locals 1

    .line 2499
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->captureDialog:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    if-eqz v0, :cond_0

    .line 2509
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/kakaogame/promotion/share/ScreenShotDialog;->showShareDialog(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final requestUnregister()Lcom/kakaogame/KGResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x4519131f

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d706475

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    const v3, -0x451aa47f

    invoke-static {v3}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v3

    .line 6969
    :try_start_0
    sget-object v4, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v5, "requestUnregister"

    invoke-virtual {v4, v0, v5}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6979
    iget-object v4, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v4}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v4

    sget-object v5, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v5}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v6, 0x7d73f045

    invoke-static {v6}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v6

    if-ge v4, v5, :cond_0

    .line 6989
    :try_start_1
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbb9

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 7009
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    .line 7039
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 7049
    invoke-static {}, Lcom/kakaogame/player/LocalPlayerService;->waitForRemove()Lcom/kakaogame/KGResult;

    move-result-object v5

    .line 7059
    sget-object v6, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7069
    invoke-virtual {v5}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7079
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v1, v5}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 7099
    :cond_2
    invoke-virtual {v4}, Lcom/kakaogame/idp/IdpAccount;->getIdpCode()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->SigninWithApple:Lcom/kakaogame/KGIdpProfile$KGIdpCode;

    invoke-virtual {v5}, Lcom/kakaogame/KGIdpProfile$KGIdpCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7109
    invoke-virtual {v4}, Lcom/kakaogame/idp/IdpAccount;->getIdpRefreshToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7119
    sget-object v5, Lcom/kakaogame/auth/AuthService;->INSTANCE:Lcom/kakaogame/auth/AuthService;

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/kakaogame/auth/AuthService;->revokeSIWA(Ljava/lang/String;Ljava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v3

    .line 7129
    sget-object v5, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7169
    :cond_3
    invoke-virtual {p0, v4}, Lcom/kakaogame/core/CoreManager;->idpLogout(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object v1

    .line 7179
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7189
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_1

    .line 7019
    :cond_4
    :goto_0
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbba

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 7209
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v0, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7219
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_1
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final resetWaitTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1819
    iput-wide v0, p0, Lcom/kakaogame/core/CoreManager;->waitCount:J

    const/4 v0, 0x1

    .line 1829
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->useWaitCount:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public final resume()Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 8139
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v2, "resume"

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8149
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->cancelPauseTimer()V

    .line 8159
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8179
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v0, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8189
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_0
    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final retryWaiting()V
    .locals 10

    .line 2709
    iget-wide v0, p0, Lcom/kakaogame/core/CoreManager;->waitCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 2739
    :cond_0
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getMaxRequestWaitingTime()J

    move-result-wide v0

    .line 2749
    sget-object v4, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v4}, Lcom/kakaogame/infodesk/InfodeskHelper;->getInitialRequestWaitingTime()J

    move-result-wide v4

    .line 2759
    sget-object v6, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v6}, Lcom/kakaogame/infodesk/InfodeskHelper;->getNextValueToMultiply()J

    move-result-wide v6

    .line 2769
    sget-object v8, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v8}, Lcom/kakaogame/infodesk/InfodeskHelper;->getNextValueToSum()J

    move-result-wide v8

    mul-long/2addr v4, v6

    .line 2779
    iget-wide v6, p0, Lcom/kakaogame/core/CoreManager;->waitCount:J

    mul-long/2addr v4, v6

    mul-long/2addr v8, v6

    add-long/2addr v4, v8

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v4

    :goto_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    return-void

    .line 2859
    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    .line 2889
    iput-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->useWaitCount:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendEvent(I)V
    .locals 2

    .line 2619
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->eventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2629
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->eventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 16759
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakaogame/KGSNSShare$KGEventListener;

    .line 2639
    invoke-interface {v1, p1}, Lcom/kakaogame/KGSNSShare$KGEventListener;->onEvent(I)V

    goto :goto_0

    :cond_0
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final sendLogFilesImmediately()V
    .locals 2

    .line 1869
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->logManager:Lcom/kakaogame/log/SDKLogManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kakaogame/log/SDKLogManager;->uploadLogFilesImmediately(Landroid/content/Context;)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final sendLogFirebase(Ljava/lang/String;Ljava/lang/String;Lcom/kakaogame/KGResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kakaogame/KGResult<",
            "*>;)V"
        }
    .end annotation

    const v0, 0x6d0bd780

    invoke-static {v0}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x22502566

    invoke-static {v1}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d73c4ad

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x22410d5c

    invoke-static {v2}, Lcom/liapp/y;->״دش۲ݮ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x543e8a9a

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4279
    iget-object v2, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    if-eqz v2, :cond_3

    .line 4299
    :try_start_0
    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "sdk_api_success"

    goto :goto_0

    :cond_0
    const-string v3, "sdk_api_fail"

    .line 4309
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4319
    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4329
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->getServerErrorCode()I

    move-result p2

    if-lez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/kakaogame/KGResult;->getServerErrorCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p2, "api"

    .line 4339
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 4349
    invoke-interface {v2, v3, p1}, Lcom/kakaogame/log/IFirebase;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4369
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const v0, -0x451aabaf

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CoreManager"

    invoke-virtual {p2, p3, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    .array-data 1
    .end array-data
.end method

.method public final setActivityHolder(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1569
    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->activityHolder:Lkotlin/jvm/functions/Function0;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setCaptureDialog(Lcom/kakaogame/promotion/share/ScreenShotDialog;)V
    .locals 0

    .line 2459
    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->captureDialog:Lcom/kakaogame/promotion/share/ScreenShotDialog;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setConfiguration(Lcom/kakaogame/config/Configuration;)V
    .locals 1

    const v0, 0x3365ef8b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->configuration:Lcom/kakaogame/config/Configuration;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setEngine()V
    .locals 0

    .line 3309
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->setIsUnity()V

    .line 3319
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->setIsUnreal()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setGetFirstInfodesk(Z)V
    .locals 0

    .line 1199
    iput-boolean p1, p0, Lcom/kakaogame/core/CoreManager;->isGetFirstInfodesk:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setLaunchingReferrer(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x3361618b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    .line 3139
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 3149
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3159
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, -0x451aaac7

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7d73e56d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-void

    .line 3199
    :cond_1
    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->launchingReferrer:Ljava/lang/String;

    :cond_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setLoggedInWithCredentialManager(Z)V
    .locals 0

    .line 1529
    iput-boolean p1, p0, Lcom/kakaogame/core/CoreManager;->isLoggedInWithCredentialManager:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setMarketRefundInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kakaogame/KGMarketRefundInfo;",
            ">;)V"
        }
    .end annotation

    .line 1489
    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->marketRefundInfoList:Ljava/util/List;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final setServerTimeStamp(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 14569
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 14579
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v4, 0x4e20

    cmp-long p1, p1, v4

    if-ltz p1, :cond_0

    move-wide v0, v2

    :cond_0
    iput-wide v0, p0, Lcom/kakaogame/core/CoreManager;->serverTimeDiffer:J

    :cond_1
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;
    .locals 1

    const v0, 0x543d14da

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x5d13efcf

    invoke-static {v0}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2289
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->customUIManager:Lcom/kakaogame/ui/CustomUIManager;

    if-nez v0, :cond_0

    .line 2299
    new-instance v0, Lcom/kakaogame/ui/CustomUIManager;

    invoke-direct {v0}, Lcom/kakaogame/ui/CustomUIManager;-><init>()V

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->customUIManager:Lcom/kakaogame/ui/CustomUIManager;

    .line 2319
    :cond_0
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->customUIManager:Lcom/kakaogame/ui/CustomUIManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/kakaogame/ui/CustomUIManager;->showCustomUI(Landroid/app/Activity;Lcom/kakaogame/KGCustomUI$KGCustomAlert;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final startFirebaseTrace(Ljava/lang/String;)I
    .locals 4

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4429
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4449
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Lcom/kakaogame/log/IFirebase;->traceStart(Ljava/lang/String;Ljava/util/Map;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4469
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x2256cf06

    invoke-static {v3}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v2, 0x7d73e56d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    .array-data 1
    .end array-data
.end method

.method public final startFirebaseTraceOnUnity(Ljava/lang/String;Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const v0, -0x451eea5f

    invoke-static {v0}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3361636b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4839
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4859
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/kakaogame/log/IFirebase;->traceStart(Ljava/lang/String;Ljava/util/Map;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4879
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x2256cf06

    invoke-static {v2}, Lcom/liapp/y;->ֲֳگܱޭ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    nop

    .array-data 1
    .end array-data
.end method

.method public final startOnlineAlarmTimer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    const v2, 0x543d14da

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x451aa8cf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9639
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v3, 0x7d73e56d

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x6d0fddb0

    invoke-static {v5}, Lcom/liapp/y;->ٱڳܴڭܩ(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x5d179617

    invoke-static {v5}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x543ac3a2

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v12, p4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x543ac332

    invoke-static {v5}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v5, p8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9649
    iget-object v14, v7, Lcom/kakaogame/core/CoreManager;->onlineAlarmLock:Ljava/lang/Object;

    monitor-enter v14

    .line 9659
    :try_start_0
    iget-object v2, v7, Lcom/kakaogame/core/CoreManager;->onlineAlarmTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v2, :cond_1

    .line 9669
    iget-object v2, v7, Lcom/kakaogame/core/CoreManager;->onlineNotificationId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9679
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v1, "CoreManager"

    const-string v2, "startOnlineAlarmTimer: Already started."

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9689
    monitor-exit v14

    return-void

    .line 9709
    :cond_0
    :try_start_1
    iget-object v2, v7, Lcom/kakaogame/core/CoreManager;->onlineNotificationId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/kakaogame/core/CoreManager;->stopOnlineAlarmTimer(Ljava/lang/String;)V

    .line 9729
    :cond_1
    iput-object v1, v7, Lcom/kakaogame/core/CoreManager;->onlineNotificationId:Ljava/lang/String;

    .line 9739
    new-instance v9, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;

    move-object v1, v9

    move-object v2, p0

    move-wide/from16 v3, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda3;-><init>(Lcom/kakaogame/core/CoreManager;JLandroid/app/Activity;Ljava/lang/String;)V

    .line 9809
    sget-object v1, Lcom/kakaogame/core/CoreManager;->instance:Lcom/kakaogame/core/CoreManager;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v3, p6, v1

    if-lez v3, :cond_2

    sub-long v1, p6, v1

    move-wide v10, v1

    goto :goto_0

    :cond_2
    move-wide v10, v12

    :goto_0
    if-gez v3, :cond_3

    .line 9879
    invoke-static {v0, v8}, Lcom/kakaogame/push/OnlinePushManager;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 9899
    :cond_3
    new-instance v0, Lcom/kakaogame/core/TimerManager;

    move-object v8, v0

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v13}, Lcom/kakaogame/core/TimerManager;-><init>(Ljava/lang/Runnable;JJ)V

    iput-object v0, v7, Lcom/kakaogame/core/CoreManager;->onlineAlarmTimer:Lcom/kakaogame/core/TimerManager;

    .line 9909
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/core/TimerManager;->startTimer()V

    .line 9919
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9649
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v14

    throw v0

    .array-data 1
    .end array-data
.end method

.method public final startWarningSDKTimer()V
    .locals 7

    .line 10109
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->warningTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v0, :cond_0

    return-void

    .line 10139
    :cond_0
    new-instance v2, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/kakaogame/core/CoreManager$$ExternalSyntheticLambda0;-><init>()V

    .line 10199
    new-instance v0, Lcom/kakaogame/core/TimerManager;

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x2710

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/kakaogame/core/TimerManager;-><init>(Ljava/lang/Runnable;JJ)V

    iput-object v0, p0, Lcom/kakaogame/core/CoreManager;->warningTimer:Lcom/kakaogame/core/TimerManager;

    .line 10209
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/kakaogame/core/TimerManager;->startTimer()V

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final stopFirebaseTrace(ILcom/kakaogame/server/KeyBaseResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kakaogame/server/KeyBaseResult<",
            "*>;)V"
        }
    .end annotation

    const v0, 0x543e8a9a

    invoke-static {v0}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4639
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    if-eqz v0, :cond_3

    .line 4659
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 4669
    invoke-virtual {p2}, Lcom/kakaogame/server/KeyBaseResult;->isSuccess()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x7d73c2b5

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 4679
    :try_start_1
    invoke-virtual {p2}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4699
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 4709
    invoke-virtual {p2}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4729
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/kakaogame/server/KeyBaseResult;->getCode()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v2, 0x5f

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4759
    :goto_1
    invoke-interface {v0, p1, v1}, Lcom/kakaogame/log/IFirebase;->traceStop(ILjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4779
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x543ac0e2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public final stopFirebaseTraceOnUnity(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x3361636b

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4949
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->firebaseInterface:Lcom/kakaogame/log/IFirebase;

    if-eqz v0, :cond_0

    .line 4969
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/kakaogame/log/IFirebase;->traceStop(ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4989
    sget-object p2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x543ac0e2

    invoke-static {v1}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .array-data 1
    .end array-data
.end method

.method public final stopOnlineAlarmTimer(Ljava/lang/String;)V
    .locals 5

    const v0, 0x33616783

    invoke-static {v0}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x451aa8cf

    invoke-static {v1}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9959
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, 0x7d73e56d

    invoke-static {v2}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x33617813

    invoke-static {v4}, Lcom/liapp/y;->ׯ״ٲ֬ب(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9969
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->onlineAlarmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9979
    :try_start_0
    iget-object v2, p0, Lcom/kakaogame/core/CoreManager;->onlineNotificationId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9989
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string v3, "CoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9999
    monitor-exit v1

    return-void

    .line 10019
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/kakaogame/core/CoreManager;->onlineAlarmTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz p1, :cond_1

    .line 10029
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/kakaogame/core/TimerManager;->stopTimer()V

    const/4 p1, 0x0

    .line 10039
    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->onlineAlarmTimer:Lcom/kakaogame/core/TimerManager;

    :cond_1
    const-string p1, ""

    .line 10059
    iput-object p1, p0, Lcom/kakaogame/core/CoreManager;->onlineNotificationId:Ljava/lang/String;

    .line 10069
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9969
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    nop

    .array-data 1
    .end array-data
.end method

.method public final tryKakaoReConnect()Lcom/kakaogame/KGResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 9519
    iget-boolean v0, p0, Lcom/kakaogame/core/CoreManager;->isKakaoCacheMode:Z

    if-eqz v0, :cond_1

    .line 9529
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9539
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/kakaogame/idp/IdpAuthManager;->checkAuth(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;IZ)Lcom/kakaogame/KGResult;

    move-result-object v0

    .line 9549
    invoke-virtual {v0}, Lcom/kakaogame/KGResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9559
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->offKakaoCacheMode()V

    .line 9579
    :cond_0
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .line 9599
    :cond_1
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {v0}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object v0

    return-object v0

    .array-data 1
    .end array-data
.end method

.method public final unregister()Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    .line 6529
    :try_start_0
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const-string/jumbo v2, "unregister"

    invoke-virtual {v1, v0, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6549
    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v1}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x7d73f045

    invoke-static {v3}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v3

    if-ge v1, v2, :cond_0

    .line 6559
    :try_start_1
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbb9

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 6569
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isNotAuthorized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6579
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbba

    invoke-virtual {v1, v3, v2}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    goto :goto_0

    .line 6599
    :cond_1
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kakaogame/core/CoreManager;->unregister(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6629
    sget-object v2, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v2, v0, v3, v4}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6639
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v2, 0xfa1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final unregister(Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakaogame/idp/IdpAccount;",
            ")",
            "Lcom/kakaogame/KGResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const v0, 0x7d73e56d

    invoke-static {v0}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7d73f045

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x45191437

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    .line 6729
    :try_start_0
    sget-object v3, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/kakaogame/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6739
    iget-object v2, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v2

    sget-object v3, Lcom/kakaogame/core/CoreManager$CoreState;->START:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v3}, Lcom/kakaogame/core/CoreManager$CoreState;->ordinal()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 6749
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kakaogame/core/CoreManager;->coreState:Lcom/kakaogame/core/CoreManager$CoreState;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb9

    invoke-virtual {p1, v2, v1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 6769
    :cond_0
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 6789
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/kakaogame/idp/IdpAuthManager;->unregister(Landroid/app/Activity;Lcom/kakaogame/idp/IdpAccount;)Lcom/kakaogame/KGResult;

    move-result-object p1

    .line 6799
    invoke-virtual {p1}, Lcom/kakaogame/KGResult;->isNotSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6809
    sget-object v1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(Ljava/util/Map;)Lcom/kakaogame/KGResult;

    move-result-object p1

    return-object p1

    .line 6839
    :cond_1
    invoke-direct {p0, v1}, Lcom/kakaogame/core/CoreManager;->onUnregister(Ljava/lang/String;)V

    .line 6849
    sget-object p1, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    invoke-virtual {p1}, Lcom/kakaogame/KGResult$Companion;->getSuccessResult()Lcom/kakaogame/KGResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6869
    sget-object v1, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v0, v2, v3}, Lcom/kakaogame/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6879
    sget-object v0, Lcom/kakaogame/KGResult;->Companion:Lcom/kakaogame/KGResult$Companion;

    const/16 v1, 0xfa1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/kakaogame/KGResult$Companion;->getResult(ILjava/lang/String;)Lcom/kakaogame/KGResult;

    move-result-object p1

    :goto_0
    return-object p1

    .array-data 1
    .end array-data
.end method

.method public final updateIdpAccessToken(Ljava/lang/String;)V
    .locals 3

    .line 10869
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10879
    invoke-static {}, Lcom/kakaogame/auth/AuthDataManager;->getLoginData()Lcom/kakaogame/auth/LoginData;

    move-result-object v0

    .line 10889
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getAuthData()Lcom/kakaogame/idp/IdpAccount;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x5d13f4d7

    invoke-static {v2}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v2

    .line 10899
    invoke-virtual {v1, v2, p1}, Lcom/kakaogame/idp/IdpAccount;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10909
    invoke-virtual {p0}, Lcom/kakaogame/core/CoreManager;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/kakaogame/auth/AuthDataManager;->setAuthData(Landroid/content/Context;Lcom/kakaogame/auth/LoginData;Lcom/kakaogame/idp/IdpAccount;Z)V

    :cond_0
    return-void

    .array-data 1
    .end array-data
.end method

.method protected final updateRefreshSetting()V
    .locals 6

    .line 13289
    sget-boolean v0, Lcom/kakaogame/version/SDKVersion;->isPublishing:Z

    const v1, 0x7d73e56d

    invoke-static {v1}, Lcom/liapp/y;->حֲݴܳޯ(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 13299
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, -0x451ab2cf

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13309
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->stopInfodeskTimer()V

    return-void

    .line 13359
    :cond_0
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    const v2, 0x543add02

    invoke-static {v2}, Lcom/liapp/y;->׳ֳֳ֬د(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kakaogame/infodesk/InfodeskHelper;->containsKey([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13369
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    const v2, -0x451ab77f

    invoke-static {v2}, Lcom/liapp/y;->ڳݬ٬ۮݪ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13379
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->stopInfodeskTimer()V

    return-void

    .line 13409
    :cond_1
    sget-object v0, Lcom/kakaogame/infodesk/InfodeskHelper;->INSTANCE:Lcom/kakaogame/infodesk/InfodeskHelper;

    invoke-virtual {v0}, Lcom/kakaogame/infodesk/InfodeskHelper;->getRefreshInfodeskInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 13429
    iget-object v0, p0, Lcom/kakaogame/core/CoreManager;->infodeskTimer:Lcom/kakaogame/core/TimerManager;

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/kakaogame/core/CoreManager;->refreshInterval:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 13449
    :cond_2
    iput-wide v2, p0, Lcom/kakaogame/core/CoreManager;->refreshInterval:J

    .line 13459
    sget-object v0, Lcom/kakaogame/Logger;->INSTANCE:Lcom/kakaogame/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x5d13f3c7

    invoke-static {v3}, Lcom/liapp/y;->ڴݮگ֮ت(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/kakaogame/core/CoreManager;->refreshInterval:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kakaogame/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 13469
    invoke-direct {p0}, Lcom/kakaogame/core/CoreManager;->startInfodeskTimer()V

    :cond_3
    return-void

    nop

    .array-data 1
    .end array-data
.end method
