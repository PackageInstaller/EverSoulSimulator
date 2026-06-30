.class Ltwitter4j/conf/PropertyConfigurationFactory;
.super Ljava/lang/Object;
.source "PropertyConfigurationFactory.java"

# interfaces
.implements Ltwitter4j/conf/ConfigurationFactory;


# static fields
.field private static final ROOT_CONFIGURATION:Ltwitter4j/conf/PropertyConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 299
    new-instance v0, Ltwitter4j/conf/PropertyConfiguration;

    invoke-direct {v0}, Ltwitter4j/conf/PropertyConfiguration;-><init>()V

    sput-object v0, Ltwitter4j/conf/PropertyConfigurationFactory;->ROOT_CONFIGURATION:Ltwitter4j/conf/PropertyConfiguration;

    return-void

    .array-data 1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void

    nop

    .array-data 1
    .end array-data
.end method

.method public getInstance()Ltwitter4j/conf/Configuration;
    .locals 1

    .line 369
    sget-object v0, Ltwitter4j/conf/PropertyConfigurationFactory;->ROOT_CONFIGURATION:Ltwitter4j/conf/PropertyConfiguration;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;
    .locals 1

    .line 439
    new-instance v0, Ltwitter4j/conf/PropertyConfiguration;

    invoke-direct {v0, p1}, Ltwitter4j/conf/PropertyConfiguration;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ltwitter4j/conf/PropertyConfiguration;->dumpConfiguration()V

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
