.class Lio/netty/channel/AbstractChannelHandlerContext$WriteTask$1;
.super Lio/netty/util/Recycler;
.source "AbstractChannelHandlerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/Recycler<",
        "Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 945
    invoke-direct {p0}, Lio/netty/util/Recycler;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    .locals 2

    .line 948
    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;-><init>(Lio/netty/util/Recycler$Handle;Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;)V

    return-object v0
.end method

.method protected bridge synthetic newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask$1;->newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;

    move-result-object p1

    return-object p1
.end method
