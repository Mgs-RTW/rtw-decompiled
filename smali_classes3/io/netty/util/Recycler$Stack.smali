.class final Lio/netty/util/Recycler$Stack;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cursor:Lio/netty/util/Recycler$WeakOrderQueue;

.field private elements:[Lio/netty/util/Recycler$DefaultHandle;

.field private volatile head:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final maxCapacity:I

.field final parent:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private prev:Lio/netty/util/Recycler$WeakOrderQueue;

.field private size:I

.field final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler;Ljava/lang/Thread;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler<",
            "TT;>;",
            "Ljava/lang/Thread;",
            "I)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->parent:Lio/netty/util/Recycler;

    .line 261
    iput-object p2, p0, Lio/netty/util/Recycler$Stack;->thread:Ljava/lang/Thread;

    .line 262
    iput p3, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    .line 263
    invoke-static {}, Lio/netty/util/Recycler;->access$3()I

    move-result p1

    new-array p1, p1, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-void
.end method

.method static synthetic access$0(Lio/netty/util/Recycler$Stack;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 0

    .line 256
    iget-object p0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    return-object p0
.end method

.method static synthetic access$1(Lio/netty/util/Recycler$Stack;Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    return-void
.end method

.method static synthetic access$2(Lio/netty/util/Recycler$Stack;)I
    .locals 0

    .line 254
    iget p0, p0, Lio/netty/util/Recycler$Stack;->size:I

    return p0
.end method

.method static synthetic access$3(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;
    .locals 0

    .line 252
    iget-object p0, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-object p0
.end method

.method static synthetic access$4(Lio/netty/util/Recycler$Stack;[Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    return-void
.end method

.method static synthetic access$5(Lio/netty/util/Recycler$Stack;I)V
    .locals 0

    .line 254
    iput p1, p0, Lio/netty/util/Recycler$Stack;->size:I

    return-void
.end method


# virtual methods
.method newHandle()Lio/netty/util/Recycler$DefaultHandle;
    .locals 1

    .line 350
    new-instance v0, Lio/netty/util/Recycler$DefaultHandle;

    invoke-direct {v0, p0}, Lio/netty/util/Recycler$DefaultHandle;-><init>(Lio/netty/util/Recycler$Stack;)V

    return-object v0
.end method

.method pop()Lio/netty/util/Recycler$DefaultHandle;
    .locals 4

    .line 267
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    if-nez v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lio/netty/util/Recycler$Stack;->scavenge()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 275
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aget-object v1, v1, v0

    .line 276
    invoke-static {v1}, Lio/netty/util/Recycler$DefaultHandle;->access$3(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v2

    invoke-static {v1}, Lio/netty/util/Recycler$DefaultHandle;->access$2(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    .line 279
    invoke-static {v1, v2}, Lio/netty/util/Recycler$DefaultHandle;->access$4(Lio/netty/util/Recycler$DefaultHandle;I)V

    .line 280
    invoke-static {v1, v2}, Lio/netty/util/Recycler$DefaultHandle;->access$0(Lio/netty/util/Recycler$DefaultHandle;I)V

    .line 281
    iput v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    return-object v1

    .line 277
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recycled multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method push(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 3

    .line 331
    invoke-static {p1}, Lio/netty/util/Recycler$DefaultHandle;->access$2(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v0

    invoke-static {p1}, Lio/netty/util/Recycler$DefaultHandle;->access$3(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 334
    invoke-static {}, Lio/netty/util/Recycler;->access$4()I

    move-result v0

    invoke-static {p1, v0}, Lio/netty/util/Recycler$DefaultHandle;->access$0(Lio/netty/util/Recycler$DefaultHandle;I)V

    invoke-static {p1, v0}, Lio/netty/util/Recycler$DefaultHandle;->access$4(Lio/netty/util/Recycler$DefaultHandle;I)V

    .line 336
    iget v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    .line 337
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 338
    iget v1, p0, Lio/netty/util/Recycler$Stack;->maxCapacity:I

    if-ne v0, v1, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    shl-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/util/Recycler$DefaultHandle;

    iput-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    .line 345
    :cond_1
    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->elements:[Lio/netty/util/Recycler$DefaultHandle;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 346
    iput v0, p0, Lio/netty/util/Recycler$Stack;->size:I

    return-void

    .line 332
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "recycled already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method scavenge()Z
    .locals 1

    .line 287
    invoke-virtual {p0}, Lio/netty/util/Recycler$Stack;->scavengeSome()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 293
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->head:Lio/netty/util/Recycler$WeakOrderQueue;

    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    const/4 v0, 0x0

    return v0
.end method

.method scavengeSome()Z
    .locals 4

    .line 299
    iget-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    iget-object v1, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    :goto_0
    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 301
    :cond_0
    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 325
    :goto_1
    iput-object v1, p0, Lio/netty/util/Recycler$Stack;->prev:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 326
    iput-object v0, p0, Lio/netty/util/Recycler$Stack;->cursor:Lio/netty/util/Recycler$WeakOrderQueue;

    return v2

    .line 305
    :cond_1
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->access$0(Lio/netty/util/Recycler$WeakOrderQueue;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object v2

    .line 306
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->access$1(Lio/netty/util/Recycler$WeakOrderQueue;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 310
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue;->hasFinalData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 312
    :cond_2
    invoke-virtual {v0, p0}, Lio/netty/util/Recycler$WeakOrderQueue;->transfer(Lio/netty/util/Recycler$Stack;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    if-eqz v1, :cond_5

    .line 318
    invoke-static {v1, v2}, Lio/netty/util/Recycler$WeakOrderQueue;->access$2(Lio/netty/util/Recycler$WeakOrderQueue;Lio/netty/util/Recycler$WeakOrderQueue;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    :cond_5
    :goto_2
    move-object v0, v2

    goto :goto_0
.end method
