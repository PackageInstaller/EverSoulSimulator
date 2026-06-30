.class public final Lcom/kakao/sdk/common/util/AESCipher;
.super Ljava/lang/Object;
.source "AESCipher.kt"

# interfaces
.implements Lcom/kakao/sdk/common/util/Cipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/util/AESCipher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u0008H\u0002J\u0010\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0008H\u0016J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0008H\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0018\u001a\u00020\u0008H\u0002J\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0008H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/AESCipher;",
        "Lcom/kakao/sdk/common/util/Cipher;",
        "contextInfo",
        "Lcom/kakao/sdk/common/model/ContextInfo;",
        "(Lcom/kakao/sdk/common/model/ContextInfo;)V",
        "charSet",
        "Ljava/nio/charset/Charset;",
        "cipherAlgorithm",
        "",
        "decryptor",
        "Ljavax/crypto/Cipher;",
        "encryptor",
        "initVector",
        "",
        "ivParameterSpec",
        "Ljavax/crypto/spec/IvParameterSpec;",
        "keyGenAlgorithm",
        "base64DecodeAndXor",
        "source",
        "decrypt",
        "encrypted",
        "encrypt",
        "value",
        "xorMessage",
        "message",
        "key",
        "Companion",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field public static final Companion:Lcom/kakao/sdk/common/util/AESCipher$Companion;

.field private static final ITEM_COUNT:I = 0x2

.field private static final KEY_LENGTH:I = 0x100


# instance fields
.field private final charSet:Ljava/nio/charset/Charset;

.field private final cipherAlgorithm:Ljava/lang/String;

.field private final decryptor:Ljavax/crypto/Cipher;

.field private final encryptor:Ljavax/crypto/Cipher;

.field private final initVector:[B

.field private final ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private final keyGenAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/common/util/AESCipher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/util/AESCipher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/util/AESCipher;->Companion:Lcom/kakao/sdk/common/util/AESCipher$Companion;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/kakao/sdk/common/util/AESCipher;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method public constructor <init>(Lcom/kakao/sdk/common/model/ContextInfo;)V
    .locals 10

    const-string v0, "contextInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "My0oeSI1IzInbyA+LVFaW2wiNSokPAMiMipOLS4="

    .line 369
    invoke-direct {p0, v0}, Lcom/kakao/sdk/common/util/AESCipher;->base64DecodeAndXor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->keyGenAlgorithm:Ljava/lang/String;

    const-string v1, "Iio+ASgjKE4/ZSIjXDMOCUoCDww="

    .line 379
    invoke-direct {p0, v1}, Lcom/kakao/sdk/common/util/AESCipher;->base64DecodeAndXor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kakao/sdk/common/util/AESCipher;->cipherAlgorithm:Ljava/lang/String;

    .line 389
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->charSet:Ljava/nio/charset/Charset;

    const/16 v2, 0x10

    new-array v3, v2, [B

    .line 449
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/kakao/sdk/common/util/AESCipher;->initVector:[B

    .line 459
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v4, p0, Lcom/kakao/sdk/common/util/AESCipher;->ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 489
    invoke-interface {p1}, Lcom/kakao/sdk/common/model/ContextInfo;->getSigningKeyHash()Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 509
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    .line 519
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string/jumbo v3, "toCharArray(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-interface {p1}, Lcom/kakao/sdk/common/model/ContextInfo;->getSalt()[B

    move-result-object p1

    const/16 v3, 0x100

    const/4 v7, 0x2

    .line 509
    invoke-direct {v5, v2, p1, v7, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 569
    check-cast v5, Ljava/security/spec/KeySpec;

    invoke-virtual {v0, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 579
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v0, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 599
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const-string v5, "getInstance(cipherAlgorithm)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/kakao/sdk/common/util/AESCipher;->encryptor:Ljavax/crypto/Cipher;

    .line 609
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kakao/sdk/common/util/AESCipher;->decryptor:Ljavax/crypto/Cipher;

    const/4 v5, 0x1

    .line 639
    :try_start_0
    move-object v8, v0

    check-cast v8, Ljava/security/Key;

    move-object v9, v4

    check-cast v9, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v2, v5, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 649
    check-cast v0, Ljava/security/Key;

    check-cast v4, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v7, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 689
    :catch_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    array-length p1, p1

    div-int/2addr p1, v7

    invoke-static {v1, v6, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v0, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 699
    iget-object p1, p0, Lcom/kakao/sdk/common/util/AESCipher;->encryptor:Ljavax/crypto/Cipher;

    check-cast v0, Ljava/security/Key;

    iget-object v1, p0, Lcom/kakao/sdk/common/util/AESCipher;->ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v5, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 709
    iget-object p1, p0, Lcom/kakao/sdk/common/util/AESCipher;->decryptor:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/kakao/sdk/common/util/AESCipher;->ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1, v7, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0x4et
        0x4bt
        0x37t
        -0x36t
        -0x1et
        -0xat
        0x2ct
        0x66t
        -0x7et
        -0x7et
        0x5ct
        -0x74t
        -0x30t
        -0x7bt
        -0x37t
    .end array-data

    .array-data 1
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/kakao/sdk/common/model/ContextInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 349
    sget-object p1, Lcom/kakao/sdk/common/KakaoSdk;->INSTANCE:Lcom/kakao/sdk/common/KakaoSdk;

    invoke-virtual {p1}, Lcom/kakao/sdk/common/KakaoSdk;->getApplicationContextInfo()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/model/ContextInfo;

    .line 339
    :cond_0
    invoke-direct {p0, p1}, Lcom/kakao/sdk/common/util/AESCipher;-><init>(Lcom/kakao/sdk/common/model/ContextInfo;)V

    return-void

    .array-data 1
    .end array-data
.end method

.method private final base64DecodeAndXor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1119
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "decode(source, Base64.DEFAULT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/kakao/sdk/common/util/AESCipher;->xorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .array-data 1
    .end array-data
.end method

.method private final xorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.kakao.api"

    .line 849
    invoke-direct {p0, p1, v0}, Lcom/kakao/sdk/common/util/AESCipher;->xorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    .array-data 1
    .end array-data
.end method

.method private final xorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "toCharArray(...)"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 939
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 949
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    array-length v0, p1

    .line 979
    array-length v2, p2

    .line 989
    new-array v3, v0, [C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1019
    aget-char v5, p1, v4

    rem-int v6, v4, v2

    aget-char v6, p2, v6

    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1039
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_1
    return-object v1

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "encrypted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->decryptor:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string v0, "decryptor.doFinal(Base64\u2026crypted, Base64.NO_WRAP))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->charSet:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    nop

    .array-data 1
    .end array-data
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/kakao/sdk/common/util/AESCipher;->encryptor:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lcom/kakao/sdk/common/util/AESCipher;->charSet:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "getBytes(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encodeToString(encryptor\u2026harSet)), Base64.NO_WRAP)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .array-data 1
    .end array-data
.end method
