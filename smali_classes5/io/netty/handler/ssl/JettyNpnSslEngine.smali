.class final Lio/netty/handler/ssl/JettyNpnSslEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "JettyNpnSslEngine.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static available:Z


# instance fields
.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private final session:Lio/netty/handler/ssl/JettyNpnSslSession;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/SSLEngine;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLEngine;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 66
    iput-object p1, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    .line 67
    new-instance v0, Lio/netty/handler/ssl/JettyNpnSslSession;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/JettyNpnSslSession;-><init>(Ljavax/net/ssl/SSLEngine;)V

    iput-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->session:Lio/netty/handler/ssl/JettyNpnSslSession;

    if-eqz p3, :cond_0

    .line 70
    new-instance p3, Lio/netty/handler/ssl/JettyNpnSslEngine$1;

    invoke-direct {p3, p0, p2}, Lio/netty/handler/ssl/JettyNpnSslEngine$1;-><init>(Lio/netty/handler/ssl/JettyNpnSslEngine;Ljava/util/List;)V

    invoke-static {p1, p3}, Lorg/eclipse/jetty/npn/NextProtoNego;->put(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/npn/NextProtoNego$Provider;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 88
    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    aget-object p3, p2, p3

    .line 90
    new-instance v0, Lio/netty/handler/ssl/JettyNpnSslEngine$2;

    invoke-direct {v0, p0, p2, p3}, Lio/netty/handler/ssl/JettyNpnSslEngine$2;-><init>(Lio/netty/handler/ssl/JettyNpnSslEngine;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/eclipse/jetty/npn/NextProtoNego;->put(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/npn/NextProtoNego$Provider;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/JettyNpnSslEngine;)Lio/netty/handler/ssl/JettyNpnSslSession;
    .locals 0

    .line 32
    iget-object p0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->session:Lio/netty/handler/ssl/JettyNpnSslSession;

    return-object p0
.end method

.method static isAvailable()Z
    .locals 1

    .line 37
    invoke-static {}, Lio/netty/handler/ssl/JettyNpnSslEngine;->updateAvailability()V

    .line 38
    sget-boolean v0, Lio/netty/handler/ssl/JettyNpnSslEngine;->available:Z

    return v0
.end method

.method private static updateAvailability()V
    .locals 3

    .line 42
    sget-boolean v0, Lio/netty/handler/ssl/JettyNpnSslEngine;->available:Z

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_1
    const-string v1, "sun.security.ssl.NextProtoNegoExtension"

    const/4 v2, 0x1

    .line 53
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 54
    sput-boolean v2, Lio/netty/handler/ssl/JettyNpnSslEngine;->available:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public beginHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    return-void
.end method

.method public closeInbound()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-static {v0}, Lorg/eclipse/jetty/npn/NextProtoNego;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/npn/NextProtoNego$Provider;

    .line 122
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    return-void
.end method

.method public closeOutbound()V
    .locals 1

    .line 127
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-static {v0}, Lorg/eclipse/jetty/npn/NextProtoNego;->remove(Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/npn/NextProtoNego$Provider;

    .line 128
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    return-void
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    .line 173
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 218
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .line 228
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    .line 138
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .line 273
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lio/netty/handler/ssl/JettyNpnSslSession;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->session:Lio/netty/handler/ssl/JettyNpnSslSession;

    return-object v0
.end method

.method public bridge synthetic getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lio/netty/handler/ssl/JettyNpnSslEngine;->getSession()Lio/netty/handler/ssl/JettyNpnSslSession;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .line 258
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    return v0
.end method

.method public isOutboundDone()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    .line 263
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1

    .line 233
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    .line 253
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method

.method public wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslEngine;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    return-object p1
.end method
