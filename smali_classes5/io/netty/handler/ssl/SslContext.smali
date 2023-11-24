.class public abstract Lio/netty/handler/ssl/SslContext;
.super Ljava/lang/Object;
.source "SslContext.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultClientProvider()Lio/netty/handler/ssl/SslProvider;
    .locals 1

    .line 74
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    return-object v0
.end method

.method public static defaultServerProvider()Lio/netty/handler/ssl/SslProvider;
    .locals 1

    .line 61
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;

    return-object v0

    .line 64
    :cond_0
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    return-object v0
.end method

.method public static newClientContext()Lio/netty/handler/ssl/SslContext;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    .line 207
    invoke-static/range {v0 .. v8}, Lio/netty/handler/ssl/SslContext;->newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object v0

    return-object v0
.end method

.method public static newClientContext(Lio/netty/handler/ssl/SslProvider;)Lio/netty/handler/ssl/SslContext;
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

    .line 287
    invoke-static/range {v0 .. v8}, Lio/netty/handler/ssl/SslContext;->newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;)Lio/netty/handler/ssl/SslContext;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 301
    invoke-static/range {v0 .. v8}, Lio/netty/handler/ssl/SslContext;->newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContext;
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

    .line 335
    invoke-static/range {v0 .. v8}, Lio/netty/handler/ssl/SslContext;->newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/SslProvider;",
            "Ljava/io/File;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Lio/netty/handler/ssl/SslContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object v0, p0

    if-eqz v0, :cond_1

    .line 365
    sget-object v1, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client context unsupported for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_1
    :goto_0
    new-instance v0, Lio/netty/handler/ssl/JdkSslClientContext;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v2 .. v10}, Lio/netty/handler/ssl/JdkSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)V

    return-object v0
.end method

.method public static newClientContext(Lio/netty/handler/ssl/SslProvider;Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContext;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 317
    invoke-static/range {v0 .. v8}, Lio/netty/handler/ssl/SslContext;->newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newClientContext(Ljava/io/File;)Lio/netty/handler/ssl/SslContext;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    .line 218
    invoke-static/range {v0 .. v8}, Lio/netty/handler/ssl/SslContext;->newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newClientContext(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContext;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 247
    invoke-static/range {v0 .. v8}, Lio/netty/handler/ssl/SslContext;->newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newClientContext(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;
    .locals 9
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
            ">;JJ)",
            "Lio/netty/handler/ssl/SslContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide v7, p6

    .line 273
    invoke-static/range {v0 .. v8}, Lio/netty/handler/ssl/SslContext;->newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object v0

    return-object v0
.end method

.method public static newClientContext(Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContext;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p0

    .line 231
    invoke-static/range {v0 .. v8}, Lio/netty/handler/ssl/SslContext;->newClientContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method private static newHandler(Ljavax/net/ssl/SSLEngine;)Lio/netty/handler/ssl/SslHandler;
    .locals 1

    .line 450
    new-instance v0, Lio/netty/handler/ssl/SslHandler;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;)V

    return-object v0
.end method

.method public static newServerContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljava/io/File;)Lio/netty/handler/ssl/SslContext;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 139
    invoke-static/range {v0 .. v9}, Lio/netty/handler/ssl/SslContext;->newServerContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newServerContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/netty/handler/ssl/SslContext;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 155
    invoke-static/range {v0 .. v9}, Lio/netty/handler/ssl/SslContext;->newServerContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newServerContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/SslProvider;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Lio/netty/handler/ssl/SslContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    if-nez p0, :cond_1

    .line 184
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/handler/ssl/SslProvider;->OPENSSL:Lio/netty/handler/ssl/SslProvider;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 187
    :goto_0
    sget-object v1, Lio/netty/handler/ssl/SslContext$1;->$SwitchMap$io$netty$handler$ssl$SslProvider:[I

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslProvider;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 197
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslProvider;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :pswitch_0
    new-instance v0, Lio/netty/handler/ssl/OpenSslServerContext;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v2 .. v11}, Lio/netty/handler/ssl/OpenSslServerContext;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)V

    return-object v0

    .line 189
    :pswitch_1
    new-instance v0, Lio/netty/handler/ssl/JdkSslServerContext;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lio/netty/handler/ssl/JdkSslServerContext;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newServerContext(Ljava/io/File;Ljava/io/File;)Lio/netty/handler/ssl/SslContext;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 85
    invoke-static/range {v0 .. v9}, Lio/netty/handler/ssl/SslContext;->newServerContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newServerContext(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lio/netty/handler/ssl/SslContext;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 99
    invoke-static/range {v0 .. v9}, Lio/netty/handler/ssl/SslContext;->newServerContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static newServerContext(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;JJ)",
            "Lio/netty/handler/ssl/SslContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-wide/from16 v8, p7

    .line 123
    invoke-static/range {v0 .. v9}, Lio/netty/handler/ssl/SslContext;->newServerContext(Lio/netty/handler/ssl/SslProvider;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)Lio/netty/handler/ssl/SslContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract cipherSuites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isClient()Z
.end method

.method public final isServer()Z
    .locals 1

    .line 380
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslContext;->isClient()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract newEngine(Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;
.end method

.method public abstract newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
.end method

.method public final newHandler(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/handler/ssl/SslHandler;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Lio/netty/handler/ssl/SslContext;->newEngine(Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/ssl/SslContext;->newHandler(Ljavax/net/ssl/SSLEngine;)Lio/netty/handler/ssl/SslHandler;

    move-result-object p1

    return-object p1
.end method

.method public final newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Lio/netty/handler/ssl/SslHandler;
    .locals 0

    .line 446
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/ssl/SslContext;->newEngine(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/ssl/SslContext;->newHandler(Ljavax/net/ssl/SSLEngine;)Lio/netty/handler/ssl/SslHandler;

    move-result-object p1

    return-object p1
.end method

.method public abstract nextProtocols()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sessionCacheSize()J
.end method

.method public abstract sessionTimeout()J
.end method
