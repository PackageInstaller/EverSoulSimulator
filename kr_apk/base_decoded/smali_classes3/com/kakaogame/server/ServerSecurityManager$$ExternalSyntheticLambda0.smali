.class public final synthetic Lcom/kakaogame/server/ServerSecurityManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public final synthetic f$0:Ljava/net/URL;


# direct methods
.method public synthetic constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kakaogame/server/ServerSecurityManager$$ExternalSyntheticLambda0;->f$0:Ljava/net/URL;

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    iget-object v0, p0, Lcom/kakaogame/server/ServerSecurityManager$$ExternalSyntheticLambda0;->f$0:Ljava/net/URL;

    invoke-static {v0, p1, p2}, Lcom/kakaogame/server/ServerSecurityManager;->$r8$lambda$au4zmNlm0kYXJfWKP9ZBPRr6ceg(Ljava/net/URL;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1

    nop

    .array-data 1
    .end array-data
.end method
