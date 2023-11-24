.class public final Lio/netty/handler/ssl/JdkSslClientContext;
.super Lio/netty/handler/ssl/JdkSslContext;
.source "JdkSslClientContext.java"


# instance fields
.field private final ctx:Ljavax/net/ssl/SSLContext;

.field private final nextProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    .line 48
    invoke-direct/range {v0 .. v8}, Lio/netty/handler/ssl/JdkSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/JdkSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 82
    invoke-direct/range {v0 .. v8}, Lio/netty/handler/ssl/JdkSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p3}, Lio/netty/handler/ssl/JdkSslContext;-><init>(Ljava/lang/Iterable;)V

    if-eqz p4, :cond_3

    .line 109
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 110
    invoke-static {}, Lio/netty/handler/ssl/JettyNpnSslEngine;->isAvailable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 114
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_1
    :goto_1
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lio/netty/handler/ssl/JdkSslClientContext;->nextProtocols:Ljava/util/List;

    goto :goto_2

    .line 111
    :cond_2
    new-instance p1, Ljavax/net/ssl/SSLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NPN/ALPN unsupported: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lio/netty/handler/ssl/JdkSslClientContext;->nextProtocols:Ljava/util/List;

    :goto_2
    const/4 p3, 0x0

    if-nez p1, :cond_5

    :try_start_0
    const-string p1, "TLS"

    .line 128
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    if-nez p2, :cond_4

    .line 130
    iget-object p1, p0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1, p3, p3, p3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto :goto_5

    .line 132
    :cond_4
    move-object p1, p3

    check-cast p1, Ljava/security/KeyStore;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 133
    iget-object p1, p0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_5
    const-string p4, "JKS"

    .line 136
    invoke-static {p4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p4

    .line 137
    invoke-virtual {p4, p3, p3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v0, "X.509"

    .line 138
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 140
    invoke-static {p1}, Lio/netty/handler/ssl/PemReader;->readCertificates(Ljava/io/File;)[Lio/netty/buffer/ByteBuf;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 142
    :try_start_1
    array-length v2, p1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    aget-object v4, p1, v3

    .line 143
    new-instance v5, Lio/netty/buffer/ByteBufInputStream;

    invoke-direct {v5, v4}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 144
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    const-string v6, "RFC2253"

    .line 145
    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 148
    :cond_6
    :try_start_2
    array-length v0, p1

    :goto_4
    if-ge v1, v0, :cond_7

    aget-object v2, p1, v1

    .line 149
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    if-nez p2, :cond_8

    .line 155
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p2

    .line 157
    :cond_8
    invoke-virtual {p2, p4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string p1, "TLS"

    .line 160
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    .line 161
    iget-object p1, p0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p2

    invoke-virtual {p1, p3, p2, p3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 164
    :goto_5
    iget-object p1, p0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object p1

    const-wide/32 p2, 0x7fffffff

    const-wide/16 v0, 0x0

    cmp-long p4, p5, v0

    if-lez p4, :cond_9

    .line 166
    invoke-static {p5, p6, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    long-to-int p4, p4

    invoke-interface {p1, p4}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    :cond_9
    cmp-long p4, p7, v0

    if-lez p4, :cond_a

    .line 169
    invoke-static {p7, p8, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    invoke-interface {p1, p2}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    :cond_a
    return-void

    :catchall_0
    move-exception p2

    .line 148
    array-length p3, p1

    :goto_6
    if-ge v1, p3, :cond_b

    aget-object p4, p1, v1

    .line 149
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->release()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 148
    :cond_b
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :goto_7
    new-instance p2, Ljavax/net/ssl/SSLException;

    const-string p3, "failed to initialize the server-side SSL context"

    invoke-direct {p2, p3, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/JdkSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)V

    return-void
.end method


# virtual methods
.method public context()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 188
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public isClient()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslClientContext;->nextProtocols:Ljava/util/List;

    return-object v0
.end method
