.class public Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SSLTrustAllSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory$SSLTrustAllManager;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mCtx:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    :try_start_0
    const-string p1, "TLS"

    .line 45
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    .line 46
    iget-object p1, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory$SSLTrustAllManager;

    invoke-direct {v2, p0}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory$SSLTrustAllManager;-><init>(Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;)V

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 48
    sget-object p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    sget-object v0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->LOGTAG:Ljava/lang/String;

    const-string v1, "trust all socket factory exception"

    invoke-static {v0, v1, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 4

    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 71
    new-instance v2, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;

    invoke-direct {v2, v1}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 74
    sget-object v2, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->LOGTAG:Ljava/lang/String;

    const-string v3, "get socket factory exception"

    invoke-static {v2, v3, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public getSslEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method
