.class public Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SSLCustomSocketFactory.java"


# static fields
.field private static final KEY_PASS:Ljava/lang/String; = ""

.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 11
    sput-object v0, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    return-void
.end method

.method public static getSocketFactory(Landroid/content/Context;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 2

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 26
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, ""

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 32
    new-instance p0, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;

    invoke-direct {p0, v0}, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;-><init>(Ljava/security/KeyStore;)V

    return-object p0

    :catchall_0
    move-exception v0

    .line 30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 31
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 35
    sget-object v0, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;->LOGTAG:Ljava/lang/String;

    const-string v1, "ssl socket factory exception"

    invoke-static {v0, v1, p0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
