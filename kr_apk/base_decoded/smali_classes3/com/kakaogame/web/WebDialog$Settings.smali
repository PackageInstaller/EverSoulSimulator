.class public final Lcom/kakaogame/web/WebDialog$Settings;
.super Ljava/lang/Object;
.source "WebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakaogame/web/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakaogame/web/WebDialog$Settings$Builder;,
        Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;,
        Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0003=>?B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u00107\u001a\u00020\n2\u0006\u00108\u001a\u00020\u0013J\u000e\u00109\u001a\u00020\n2\u0006\u00108\u001a\u00020\u0013J\u0006\u0010:\u001a\u00020;R\"\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u001e\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u001a\u0010\u0017\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015\"\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015R\u001e\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015R\u001e\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u0013@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015R\"\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u001d@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R:\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010!2\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010!@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R>\u0010%\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010!2\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010!@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010$R\u001e\u0010\'\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0010R\u001e\u0010)\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0010R\u001e\u0010+\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0010R\u001e\u0010-\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u0010R\u001e\u00100\u001a\u00020/2\u0006\u0010\u0004\u001a\u00020/@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u001e\u00104\u001a\u0002032\u0006\u0010\u0004\u001a\u000203@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0011\u0010<\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\u0015\u00a8\u0006@"
    }
    d2 = {
        "Lcom/kakaogame/web/WebDialog$Settings;",
        "",
        "<init>",
        "()V",
        "value",
        "",
        "title",
        "getTitle",
        "()Ljava/lang/String;",
        "port_width",
        "",
        "port_height",
        "land_width",
        "land_height",
        "verticalMargin",
        "getVerticalMargin",
        "()I",
        "horizontalMargin",
        "getHorizontalMargin",
        "",
        "isFixedTitle",
        "()Z",
        "isCustomSize",
        "isPulltoRefresh",
        "setPulltoRefresh",
        "(Z)V",
        "isFixedTextFontSize",
        "isHideTopbar",
        "isHideCloseButton",
        "Lcom/kakaogame/web/WebDialog$OnCloseListener;",
        "closeListener",
        "getCloseListener",
        "()Lcom/kakaogame/web/WebDialog$OnCloseListener;",
        "",
        "requestHeaders",
        "getRequestHeaders",
        "()Ljava/util/Map;",
        "customCookie",
        "getCustomCookie",
        "cookieExcludeOption",
        "getCookieExcludeOption",
        "backgroundColor",
        "getBackgroundColor",
        "titleBackgroundColor",
        "getTitleBackgroundColor",
        "titleTextColor",
        "getTitleTextColor",
        "Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;",
        "closeButtonColor",
        "getCloseButtonColor",
        "()Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;",
        "Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;",
        "previousButtonColor",
        "getPreviousButtonColor",
        "()Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;",
        "getWidth",
        "isPortrait",
        "getHeight",
        "hideTopbar",
        "",
        "isMarginSet",
        "CloseButtonColor",
        "PreviousButtonColor",
        "Builder",
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


# instance fields
.field private backgroundColor:I

.field private closeButtonColor:Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;

.field private closeListener:Lcom/kakaogame/web/WebDialog$OnCloseListener;

.field private cookieExcludeOption:I

.field private customCookie:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalMargin:I

.field private isCustomSize:Z

.field private isFixedTextFontSize:Z

.field private isFixedTitle:Z

.field private isHideCloseButton:Z

.field private isHideTopbar:Z

.field private isPulltoRefresh:Z

.field private land_height:I

.field private land_width:I

.field private port_height:I

.field private port_width:I

.field private previousButtonColor:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

.field private requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private titleBackgroundColor:I

.field private titleTextColor:I

.field private verticalMargin:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8949
    iput-boolean v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->isPulltoRefresh:Z

    const v0, 0x7fffffff

    .line 9099
    iput v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->backgroundColor:I

    .line 9119
    iput v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->titleBackgroundColor:I

    .line 9139
    iput v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->titleTextColor:I

    .line 9159
    sget-object v0, Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;->BLACK:Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;

    iput-object v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->closeButtonColor:Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;

    .line 9179
    sget-object v0, Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;->BLACK:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

    iput-object v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->previousButtonColor:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

    return-void

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setBackgroundColor$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->backgroundColor:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setCloseButtonColor$p(Lcom/kakaogame/web/WebDialog$Settings;Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;)V
    .locals 0

    .line 8799
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->closeButtonColor:Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setCloseListener$p(Lcom/kakaogame/web/WebDialog$Settings;Lcom/kakaogame/web/WebDialog$OnCloseListener;)V
    .locals 0

    .line 8799
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->closeListener:Lcom/kakaogame/web/WebDialog$OnCloseListener;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setCookieExcludeOption$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->cookieExcludeOption:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setCustomCookie$p(Lcom/kakaogame/web/WebDialog$Settings;Ljava/util/Map;)V
    .locals 0

    .line 8799
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->customCookie:Ljava/util/Map;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setCustomSize$p(Lcom/kakaogame/web/WebDialog$Settings;Z)V
    .locals 0

    .line 8799
    iput-boolean p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->isCustomSize:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setFixedTextFontSize$p(Lcom/kakaogame/web/WebDialog$Settings;Z)V
    .locals 0

    .line 8799
    iput-boolean p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->isFixedTextFontSize:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setFixedTitle$p(Lcom/kakaogame/web/WebDialog$Settings;Z)V
    .locals 0

    .line 8799
    iput-boolean p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->isFixedTitle:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setHideCloseButton$p(Lcom/kakaogame/web/WebDialog$Settings;Z)V
    .locals 0

    .line 8799
    iput-boolean p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->isHideCloseButton:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setHideTopbar$p(Lcom/kakaogame/web/WebDialog$Settings;Z)V
    .locals 0

    .line 8799
    iput-boolean p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->isHideTopbar:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setHorizontalMargin$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->horizontalMargin:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setLand_height$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->land_height:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setLand_width$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->land_width:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setPort_height$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->port_height:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setPort_width$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->port_width:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setPreviousButtonColor$p(Lcom/kakaogame/web/WebDialog$Settings;Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;)V
    .locals 0

    .line 8799
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->previousButtonColor:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setRequestHeaders$p(Lcom/kakaogame/web/WebDialog$Settings;Ljava/util/Map;)V
    .locals 0

    .line 8799
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->requestHeaders:Ljava/util/Map;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setTitle$p(Lcom/kakaogame/web/WebDialog$Settings;Ljava/lang/String;)V
    .locals 0

    .line 8799
    iput-object p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->title:Ljava/lang/String;

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setTitleBackgroundColor$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->titleBackgroundColor:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setTitleTextColor$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->titleTextColor:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public static final synthetic access$setVerticalMargin$p(Lcom/kakaogame/web/WebDialog$Settings;I)V
    .locals 0

    .line 8799
    iput p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->verticalMargin:I

    return-void

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public final getBackgroundColor()I
    .locals 1

    .line 9099
    iget v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->backgroundColor:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCloseButtonColor()Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;
    .locals 1

    .line 9159
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->closeButtonColor:Lcom/kakaogame/web/WebDialog$Settings$CloseButtonColor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCloseListener()Lcom/kakaogame/web/WebDialog$OnCloseListener;
    .locals 1

    .line 9019
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->closeListener:Lcom/kakaogame/web/WebDialog$OnCloseListener;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCookieExcludeOption()I
    .locals 1

    .line 9079
    iget v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->cookieExcludeOption:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getCustomCookie()Ljava/util/Map;
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

    .line 9059
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->customCookie:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getHeight(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 9609
    iget p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->port_height:I

    goto :goto_0

    .line 9629
    :cond_0
    iget p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->land_height:I

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public final getHorizontalMargin()I
    .locals 1

    .line 8889
    iget v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->horizontalMargin:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getPreviousButtonColor()Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;
    .locals 1

    .line 9179
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->previousButtonColor:Lcom/kakaogame/web/WebDialog$Settings$PreviousButtonColor;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9039
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->requestHeaders:Ljava/util/Map;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 8809
    iget-object v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->title:Ljava/lang/String;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTitleBackgroundColor()I
    .locals 1

    .line 9119
    iget v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->titleBackgroundColor:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getTitleTextColor()I
    .locals 1

    .line 9139
    iget v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->titleTextColor:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getVerticalMargin()I
    .locals 1

    .line 8869
    iget v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->verticalMargin:I

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final getWidth(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 9529
    iget p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->port_width:I

    goto :goto_0

    .line 9549
    :cond_0
    iget p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->land_width:I

    :goto_0
    return p1

    .array-data 1
    .end array-data
.end method

.method public final hideTopbar()V
    .locals 1

    const/4 v0, 0x1

    .line 9679
    iput-boolean v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->isHideTopbar:Z

    return-void

    .array-data 1
    .end array-data
.end method

.method public final isCustomSize()Z
    .locals 1

    .line 8929
    iget-boolean v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->isCustomSize:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isFixedTextFontSize()Z
    .locals 1

    .line 8959
    iget-boolean v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->isFixedTextFontSize:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isFixedTitle()Z
    .locals 1

    .line 8909
    iget-boolean v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->isFixedTitle:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isHideCloseButton()Z
    .locals 1

    .line 8999
    iget-boolean v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->isHideCloseButton:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isHideTopbar()Z
    .locals 1

    .line 8979
    iget-boolean v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->isHideTopbar:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final isMarginSet()Z
    .locals 1

    .line 9719
    iget v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->verticalMargin:I

    if-lez v0, :cond_0

    .line 9729
    iget v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->horizontalMargin:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .array-data 1
    .end array-data
.end method

.method public final isPulltoRefresh()Z
    .locals 1

    .line 8949
    iget-boolean v0, p0, Lcom/kakaogame/web/WebDialog$Settings;->isPulltoRefresh:Z

    return v0

    nop

    .array-data 1
    .end array-data
.end method

.method public final setPulltoRefresh(Z)V
    .locals 0

    .line 8949
    iput-boolean p1, p0, Lcom/kakaogame/web/WebDialog$Settings;->isPulltoRefresh:Z

    return-void

    nop

    .array-data 1
    .end array-data
.end method
