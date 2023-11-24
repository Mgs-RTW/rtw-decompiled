.class public Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;
.super Lcom/netease/pharos/protocolCheck/kcp/KcpJava;
.source "KcpJavaClient.java"


# instance fields
.field public mDatagramSocket:Ljava/net/DatagramSocket;

.field private mInetAddress:Ljava/net/InetAddress;

.field private mPort:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/netease/pharos/protocolCheck/kcp/KcpJava;-><init>(J)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 27
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->mInetAddress:Ljava/net/InetAddress;

    .line 34
    new-instance p1, Ljava/net/DatagramSocket;

    invoke-direct {p1}, Ljava/net/DatagramSocket;-><init>()V

    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 35
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->mInetAddress:Ljava/net/InetAddress;

    .line 36
    iput p4, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->mPort:I

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .line 53
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output([BI)V
    .locals 3

    .line 41
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->mInetAddress:Ljava/net/InetAddress;

    iget v2, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->mPort:I

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 43
    :try_start_0
    iget-object p1, p0, Lcom/netease/pharos/protocolCheck/kcp/KcpJavaClient;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
