.class final Lio/netty/channel/local/LocalChannelRegistry;
.super Ljava/lang/Object;
.source "LocalChannelRegistry.java"


# static fields
.field private static final boundChannels:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lio/netty/channel/local/LocalAddress;",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lio/netty/channel/local/LocalChannelRegistry;->boundChannels:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Ljava/net/SocketAddress;)Lio/netty/channel/Channel;
    .locals 1

    .line 52
    sget-object v0, Lio/netty/channel/local/LocalChannelRegistry;->boundChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/channel/Channel;

    return-object p0
.end method

.method static register(Lio/netty/channel/Channel;Lio/netty/channel/local/LocalAddress;Ljava/net/SocketAddress;)Lio/netty/channel/local/LocalAddress;
    .locals 1

    if-nez p1, :cond_3

    .line 35
    instance-of p1, p2, Lio/netty/channel/local/LocalAddress;

    if-eqz p1, :cond_2

    .line 39
    check-cast p2, Lio/netty/channel/local/LocalAddress;

    .line 40
    sget-object p1, Lio/netty/channel/local/LocalAddress;->ANY:Lio/netty/channel/local/LocalAddress;

    invoke-virtual {p1, p2}, Lio/netty/channel/local/LocalAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    new-instance p2, Lio/netty/channel/local/LocalAddress;

    invoke-direct {p2, p0}, Lio/netty/channel/local/LocalAddress;-><init>(Lio/netty/channel/Channel;)V

    .line 44
    :cond_0
    sget-object p1, Lio/netty/channel/local/LocalChannelRegistry;->boundChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/channel/Channel;

    if-nez p0, :cond_1

    return-object p2

    .line 46
    :cond_1
    new-instance p1, Lio/netty/channel/ChannelException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "address already in use by: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p0, Lio/netty/channel/ChannelException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unsupported address type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_3
    new-instance p0, Lio/netty/channel/ChannelException;

    const-string p1, "already bound"

    invoke-direct {p0, p1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static unregister(Lio/netty/channel/local/LocalAddress;)V
    .locals 1

    .line 56
    sget-object v0, Lio/netty/channel/local/LocalChannelRegistry;->boundChannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
