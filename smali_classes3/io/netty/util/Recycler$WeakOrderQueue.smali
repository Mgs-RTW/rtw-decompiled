.class final Lio/netty/util/Recycler$WeakOrderQueue;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeakOrderQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/Recycler$WeakOrderQueue$Link;
    }
.end annotation


# static fields
.field private static final LINK_CAPACITY:I = 0x10


# instance fields
.field private head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

.field private final id:I

.field private next:Lio/netty/util/Recycler$WeakOrderQueue;

.field private final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler$Stack;Ljava/lang/Thread;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Lio/netty/util/Recycler;->access$2()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    .line 164
    new-instance v0, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 165
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->owner:Ljava/lang/ref/WeakReference;

    .line 166
    monitor-enter p1

    .line 167
    :try_start_0
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$0(Lio/netty/util/Recycler$Stack;)Lio/netty/util/Recycler$WeakOrderQueue;

    move-result-object p2

    iput-object p2, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    .line 168
    invoke-static {p1, p0}, Lio/netty/util/Recycler$Stack;->access$1(Lio/netty/util/Recycler$Stack;Lio/netty/util/Recycler$WeakOrderQueue;)V

    .line 166
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method static synthetic access$0(Lio/netty/util/Recycler$WeakOrderQueue;)Lio/netty/util/Recycler$WeakOrderQueue;
    .locals 0

    .line 159
    iget-object p0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    return-object p0
.end method

.method static synthetic access$1(Lio/netty/util/Recycler$WeakOrderQueue;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 160
    iget-object p0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->owner:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$2(Lio/netty/util/Recycler$WeakOrderQueue;Lio/netty/util/Recycler$WeakOrderQueue;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->next:Lio/netty/util/Recycler$WeakOrderQueue;

    return-void
.end method


# virtual methods
.method add(Lio/netty/util/Recycler$DefaultHandle;)V
    .locals 5

    .line 173
    iget v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->id:I

    invoke-static {p1, v0}, Lio/netty/util/Recycler$DefaultHandle;->access$0(Lio/netty/util/Recycler$DefaultHandle;I)V

    .line 175
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 177
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    .line 178
    new-instance v1, Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-direct {v1, v2}, Lio/netty/util/Recycler$WeakOrderQueue$Link;-><init>(Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    invoke-static {v0, v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$1(Lio/netty/util/Recycler$WeakOrderQueue$Link;Lio/netty/util/Recycler$WeakOrderQueue$Link;)V

    iput-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 179
    invoke-virtual {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v0

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    .line 181
    :cond_0
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$2(Lio/netty/util/Recycler$WeakOrderQueue$Link;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v3

    aput-object p1, v3, v1

    .line 182
    invoke-static {p1, v2}, Lio/netty/util/Recycler$DefaultHandle;->access$1(Lio/netty/util/Recycler$DefaultHandle;Lio/netty/util/Recycler$Stack;)V

    add-int/lit8 v1, v1, 0x1

    .line 185
    invoke-virtual {v0, v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->lazySet(I)V

    return-void
.end method

.method hasFinalData()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$3(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I

    move-result v0

    iget-object v1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->tail:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    invoke-virtual {v1}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method transfer(Lio/netty/util/Recycler$Stack;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Stack<",
            "*>;)Z"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 201
    :cond_0
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$3(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 202
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$4(Lio/netty/util/Recycler$WeakOrderQueue$Link;)Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 205
    :cond_1
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$4(Lio/netty/util/Recycler$WeakOrderQueue$Link;)Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 208
    :cond_2
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$3(Lio/netty/util/Recycler$WeakOrderQueue$Link;)I

    move-result v2

    .line 209
    invoke-virtual {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->get()I

    move-result v4

    if-ne v2, v4, :cond_3

    return v1

    :cond_3
    sub-int v1, v4, v2

    .line 215
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$2(Lio/netty/util/Recycler$Stack;)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$3(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v6

    array-length v6, v6

    if-le v5, v6, :cond_4

    .line 216
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$3(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v5

    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$2(Lio/netty/util/Recycler$Stack;)I

    move-result v6

    add-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/util/Recycler$DefaultHandle;

    invoke-static {p1, v1}, Lio/netty/util/Recycler$Stack;->access$4(Lio/netty/util/Recycler$Stack;[Lio/netty/util/Recycler$DefaultHandle;)V

    .line 219
    :cond_4
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$2(Lio/netty/util/Recycler$WeakOrderQueue$Link;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v1

    .line 220
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$3(Lio/netty/util/Recycler$Stack;)[Lio/netty/util/Recycler$DefaultHandle;

    move-result-object v5

    .line 221
    invoke-static {p1}, Lio/netty/util/Recycler$Stack;->access$2(Lio/netty/util/Recycler$Stack;)I

    move-result v6

    :goto_0
    if-lt v2, v4, :cond_6

    .line 233
    invoke-static {p1, v6}, Lio/netty/util/Recycler$Stack;->access$5(Lio/netty/util/Recycler$Stack;I)V

    if-ne v4, v3, :cond_5

    .line 235
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$4(Lio/netty/util/Recycler$WeakOrderQueue$Link;)Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 236
    invoke-static {v0}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$4(Lio/netty/util/Recycler$WeakOrderQueue$Link;)Lio/netty/util/Recycler$WeakOrderQueue$Link;

    move-result-object p1

    iput-object p1, p0, Lio/netty/util/Recycler$WeakOrderQueue;->head:Lio/netty/util/Recycler$WeakOrderQueue$Link;

    .line 239
    :cond_5
    invoke-static {v0, v4}, Lio/netty/util/Recycler$WeakOrderQueue$Link;->access$5(Lio/netty/util/Recycler$WeakOrderQueue$Link;I)V

    const/4 p1, 0x1

    return p1

    .line 223
    :cond_6
    aget-object v7, v1, v2

    .line 224
    invoke-static {v7}, Lio/netty/util/Recycler$DefaultHandle;->access$2(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v8

    if-nez v8, :cond_7

    .line 225
    invoke-static {v7}, Lio/netty/util/Recycler$DefaultHandle;->access$3(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v8

    invoke-static {v7, v8}, Lio/netty/util/Recycler$DefaultHandle;->access$4(Lio/netty/util/Recycler$DefaultHandle;I)V

    goto :goto_1

    .line 226
    :cond_7
    invoke-static {v7}, Lio/netty/util/Recycler$DefaultHandle;->access$2(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v8

    invoke-static {v7}, Lio/netty/util/Recycler$DefaultHandle;->access$3(Lio/netty/util/Recycler$DefaultHandle;)I

    move-result v9

    if-ne v8, v9, :cond_8

    .line 229
    :goto_1
    invoke-static {v7, p1}, Lio/netty/util/Recycler$DefaultHandle;->access$1(Lio/netty/util/Recycler$DefaultHandle;Lio/netty/util/Recycler$Stack;)V

    add-int/lit8 v8, v6, 0x1

    .line 230
    aput-object v7, v5, v6

    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    .line 231
    aput-object v7, v1, v2

    move v2, v6

    move v6, v8

    goto :goto_0

    .line 227
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "recycled already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
