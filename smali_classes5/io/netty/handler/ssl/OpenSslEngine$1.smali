.class Lio/netty/handler/ssl/OpenSslEngine$1;
.super Ljava/lang/Object;
.source "OpenSslEngine.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/OpenSslEngine;->getSession()Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/OpenSslEngine;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngine;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslEngine$1;->this$0:Lio/netty/handler/ssl/OpenSslEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 1

    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 708
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine$1;->this$0:Lio/netty/handler/ssl/OpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/OpenSslEngine;->access$300(Lio/netty/handler/ssl/OpenSslEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getId()[B
    .locals 2

    .line 636
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine$1;->this$0:Lio/netty/handler/ssl/OpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/OpenSslEngine;->access$000(Lio/netty/handler/ssl/OpenSslEngine;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 688
    invoke-static {}, Lio/netty/handler/ssl/OpenSslEngine;->access$100()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    const/16 v0, 0x4919

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1

    .line 693
    invoke-static {}, Lio/netty/handler/ssl/OpenSslEngine;->access$200()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 683
    invoke-static {}, Lio/netty/handler/ssl/OpenSslEngine;->access$100()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 3

    .line 714
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine$1;->this$0:Lio/netty/handler/ssl/OpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/OpenSslEngine;->access$400(Lio/netty/handler/ssl/OpenSslEngine;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    .line 718
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 1

    .line 678
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    return-void
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
