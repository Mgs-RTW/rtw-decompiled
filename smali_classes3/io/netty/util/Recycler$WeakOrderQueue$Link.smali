.class final Lio/netty/util/Recycler$WeakOrderQueue$Link;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler$WeakOrderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Link"
.end annotation


# instance fields
.field private final elements:[Lio/netty/util/Recycler$DefaultHandle;

.field private next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

.field private readIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/16 v0, 0x10

    .line 150
    new-array v0, v0, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lio/netty/util/Recycler$WeakOrderQueue$Link;Lio/netty/util/Recycler$WeakOrderQueue$Link;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    return-void
.end method

.method static synthetic access$2(Lio/netty/util/Recycler$WeakOrderQueue$Link;)[Lio/netty/util/Recycler$DefaultHandle;
    .locals 0

    .line 150
    iget-object p0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-object p0
.end method

.method static synthetic access$3(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I
    .locals 0

    .line 152
    iget p0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    return p0
.end method

.method static synthetic access$4(Lio/netty/util/Recycler$WeakOrderQueue$Link;)Lio/netty/util/Recycler$WeakOrderQueue$Link;
    .locals 0

    .line 153
    iget-object p0, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->next:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    return-object p0
.end method

.method static synthetic access$5(Lio/netty/util/Recycler$WeakOrderQueue$Link;I)V
    .locals 0

    .line 152
    iput p1, p0, Lio/netty/util/Recycler$WeakOrderQueue$Link;->readIndex:I

    return-void
.end method
