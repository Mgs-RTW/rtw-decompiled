.class public interface abstract Lio/netty/channel/EventLoopGroup;
.super Ljava/lang/Object;
.source "EventLoopGroup.java"

# interfaces
.implements Lio/netty/util/concurrent/EventExecutorGroup;


# virtual methods
.method public abstract next()Lio/netty/channel/EventLoop;
.end method

.method public abstract register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method
