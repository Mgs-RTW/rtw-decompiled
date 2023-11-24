.class final Lio/netty/util/internal/MpscLinkedQueue;
.super Lio/netty/util/internal/MpscLinkedQueueTailRef;
.source "MpscLinkedQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/MpscLinkedQueueTailRef<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1a116d2b49548c11L


# instance fields
.field p00:J

.field p01:J

.field p02:J

.field p03:J

.field p04:J

.field p05:J

.field p06:J

.field p07:J

.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueueTailRef;-><init>()V

    .line 91
    new-instance v0, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;-><init>(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->setHeadRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 93
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->setTailRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    return-void
.end method

.method static synthetic access$000(Lio/netty/util/internal/MpscLinkedQueue;)Lio/netty/util/internal/MpscLinkedQueueNode;
    .locals 0

    .line 68
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object p0

    return-object p0
.end method

.method private peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/MpscLinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    .line 101
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->headRef()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->next()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 106
    :cond_1
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->tailRef()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 361
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 363
    new-instance v0, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;-><init>(Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->setHeadRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 365
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->setTailRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 369
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 354
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 355
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 230
    invoke-virtual {p0, p1}, Lio/netty/util/internal/MpscLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "queue full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    const/4 v0, 0x0

    .line 328
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 329
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 324
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "c == this"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "c"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 347
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 187
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 192
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->value()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 195
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->next()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 310
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 311
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 182
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 202
    new-instance v0, Lio/netty/util/internal/MpscLinkedQueue$1;

    invoke-direct {v0, p0}, Lio/netty/util/internal/MpscLinkedQueue$1;-><init>(Lio/netty/util/internal/MpscLinkedQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 125
    instance-of v0, p1, Lio/netty/util/internal/MpscLinkedQueueNode;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Lio/netty/util/internal/MpscLinkedQueueNode;

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->setNext(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;

    invoke-direct {v0, p1}, Lio/netty/util/internal/MpscLinkedQueue$DefaultNode;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    .line 132
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/util/internal/MpscLinkedQueue;->getAndSetTailRef(Lio/netty/util/internal/MpscLinkedQueueNode;)Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Lio/netty/util/internal/MpscLinkedQueueNode;->setNext(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->headRef()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v1

    .line 149
    invoke-virtual {p0, v0}, Lio/netty/util/internal/MpscLinkedQueue;->lazySetHeadRef(Lio/netty/util/internal/MpscLinkedQueueNode;)V

    .line 152
    invoke-virtual {v1}, Lio/netty/util/internal/MpscLinkedQueueNode;->unlink()V

    .line 154
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->clearMaybe()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 242
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 305
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 337
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 342
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 2

    .line 169
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueue;->peekNode()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 175
    invoke-virtual {v0}, Lio/netty/util/internal/MpscLinkedQueueNode;->next()Lio/netty/util/internal/MpscLinkedQueueNode;

    move-result-object v0

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 256
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 257
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 258
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->size()I

    move-result v0

    .line 273
    array-length v1, p1

    if-lt v1, v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 279
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/MpscLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 280
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 285
    aput-object v1, v0, v3

    return-object v0

    .line 289
    :cond_2
    array-length v4, p1

    if-ge v4, v3, :cond_3

    .line 290
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 293
    :cond_3
    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    array-length v0, p1

    if-le v0, v3, :cond_4

    .line 295
    aput-object v1, p1, v3

    :cond_4
    return-object p1

    :cond_5
    return-object v0
.end method
