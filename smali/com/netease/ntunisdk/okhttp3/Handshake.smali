.class public final Lcom/netease/ntunisdk/okhttp3/Handshake;
.super Ljava/lang/Object;


# instance fields
.field private final cipherSuite:Lcom/netease/ntunisdk/okhttp3/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsVersion:Lcom/netease/ntunisdk/okhttp3/TlsVersion;


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/okhttp3/TlsVersion;Lcom/netease/ntunisdk/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/okhttp3/TlsVersion;",
            "Lcom/netease/ntunisdk/okhttp3/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->tlsVersion:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    iput-object p2, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->cipherSuite:Lcom/netease/ntunisdk/okhttp3/CipherSuite;

    iput-object p3, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iput-object p4, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-void
.end method

.method public static get(Lcom/netease/ntunisdk/okhttp3/TlsVersion;Lcom/netease/ntunisdk/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lcom/netease/ntunisdk/okhttp3/Handshake;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/okhttp3/TlsVersion;",
            "Lcom/netease/ntunisdk/okhttp3/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lcom/netease/ntunisdk/okhttp3/Handshake;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/netease/ntunisdk/okhttp3/Handshake;

    invoke-static {p2}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {p3}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/okhttp3/Handshake;-><init>(Lcom/netease/ntunisdk/okhttp3/TlsVersion;Lcom/netease/ntunisdk/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "cipherSuite == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "tlsVersion == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lcom/netease/ntunisdk/okhttp3/Handshake;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/netease/ntunisdk/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/CipherSuite;

    move-result-object v0

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "NONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    move-result-object v1

    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/netease/ntunisdk/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_2
    new-instance v3, Lcom/netease/ntunisdk/okhttp3/Handshake;

    invoke-direct {v3, v1, v0, v2, p0}, Lcom/netease/ntunisdk/okhttp3/Handshake;-><init>(Lcom/netease/ntunisdk/okhttp3/TlsVersion;Lcom/netease/ntunisdk/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "tlsVersion == NONE"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "tlsVersion == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cipherSuite == SSL_NULL_WITH_NULL_NULL"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cipherSuite == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cipherSuite()Lcom/netease/ntunisdk/okhttp3/CipherSuite;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->cipherSuite:Lcom/netease/ntunisdk/okhttp3/CipherSuite;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/netease/ntunisdk/okhttp3/Handshake;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/netease/ntunisdk/okhttp3/Handshake;

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->tlsVersion:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    iget-object v2, p1, Lcom/netease/ntunisdk/okhttp3/Handshake;->tlsVersion:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->cipherSuite:Lcom/netease/ntunisdk/okhttp3/CipherSuite;

    iget-object v2, p1, Lcom/netease/ntunisdk/okhttp3/Handshake;->cipherSuite:Lcom/netease/ntunisdk/okhttp3/CipherSuite;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v2, p1, Lcom/netease/ntunisdk/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    iget-object p1, p1, Lcom/netease/ntunisdk/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->tlsVersion:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/TlsVersion;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->cipherSuite:Lcom/netease/ntunisdk/okhttp3/CipherSuite;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public localCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->localCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public peerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public tlsVersion()Lcom/netease/ntunisdk/okhttp3/TlsVersion;
    .locals 1

    iget-object v0, p0, Lcom/netease/ntunisdk/okhttp3/Handshake;->tlsVersion:Lcom/netease/ntunisdk/okhttp3/TlsVersion;

    return-object v0
.end method