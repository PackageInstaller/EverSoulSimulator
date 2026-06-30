.class public Lcom/gamania/beanfunsdk/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "access_token"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "beanfunData"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "beanfunData"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "beanfun"

    invoke-static {v0}, Lcom/gamania/beanfunsdk/util/EncodeUtil;->genProductKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1111111111111111"

    invoke-static {v0, v1, p1}, Lcom/gamania/beanfunsdk/util/EncodeUtil;->encodeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/gamania/beanfunsdk/a/a;->a:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0

    :cond_0
    return v1

    .array-data 1
    .end array-data
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "beanfunData"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_0

    sget-object v1, Lcom/gamania/beanfunsdk/a/a;->a:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "beanfun"

    invoke-static {v0}, Lcom/gamania/beanfunsdk/util/EncodeUtil;->genProductKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1111111111111111"

    invoke-static {v0, v1, p0}, Lcom/gamania/beanfunsdk/util/EncodeUtil;->decodeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
