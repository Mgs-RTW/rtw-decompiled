.class Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf$1;
.super Lio/netty/util/Recycler;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/Recycler<",
        "Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Lio/netty/util/Recycler;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;
    .locals 2

    .line 454
    new-instance v0, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;-><init>(Lio/netty/util/Recycler$Handle;Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;)V

    return-object v0
.end method

.method protected bridge synthetic newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf$1;->newObject(Lio/netty/util/Recycler$Handle;)Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;

    move-result-object p1

    return-object p1
.end method
