.class public interface abstract Lio/netty/channel/RecvByteBufAllocator$Handle;
.super Ljava/lang/Object;
.source "RecvByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/RecvByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handle"
.end annotation


# virtual methods
.method public abstract allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract guess()I
.end method

.method public abstract record(I)V
.end method
