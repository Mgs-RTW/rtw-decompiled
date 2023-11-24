.class final Lcom/netease/ntunisdk/okio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SHARE_MINIMUM:I = 0x400

.field static final SIZE:I = 0x2000


# instance fields
.field final data:[B

.field limit:I

.field next:Lcom/netease/ntunisdk/okio/Segment;

.field owner:Z

.field pos:I

.field prev:Lcom/netease/ntunisdk/okio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 63
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/netease/ntunisdk/okio/Segment;->owner:Z

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/netease/ntunisdk/okio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>([BIIZZ)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    .line 70
    iput p2, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    .line 71
    iput p3, p0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    .line 72
    iput-boolean p4, p0, Lcom/netease/ntunisdk/okio/Segment;->shared:Z

    .line 73
    iput-boolean p5, p0, Lcom/netease/ntunisdk/okio/Segment;->owner:Z

    return-void
.end method


# virtual methods
.method public final compact()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    if-eq v0, p0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/okio/Segment;->owner:Z

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v1, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    .line 154
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    iget v1, v1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    iget-boolean v2, v2, Lcom/netease/ntunisdk/okio/Segment;->shared:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    iget v2, v2, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    :goto_0
    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    return-void

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/okio/Segment;->writeTo(Lcom/netease/ntunisdk/okio/Segment;I)V

    .line 157
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/Segment;->pop()Lcom/netease/ntunisdk/okio/Segment;

    .line 158
    invoke-static {p0}, Lcom/netease/ntunisdk/okio/SegmentPool;->recycle(Lcom/netease/ntunisdk/okio/Segment;)V

    return-void

    .line 151
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final pop()Lcom/netease/ntunisdk/okio/Segment;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    iget-object v3, p0, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    iput-object v3, v2, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    .line 98
    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    iget-object v3, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    iput-object v3, v2, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    .line 99
    iput-object v1, p0, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    .line 100
    iput-object v1, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    return-object v0
.end method

.method public final push(Lcom/netease/ntunisdk/okio/Segment;)Lcom/netease/ntunisdk/okio/Segment;
    .locals 1

    .line 109
    iput-object p0, p1, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    .line 110
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    iput-object v0, p1, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    .line 111
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    iput-object p1, v0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    .line 112
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/Segment;->next:Lcom/netease/ntunisdk/okio/Segment;

    return-object p1
.end method

.method final sharedCopy()Lcom/netease/ntunisdk/okio/Segment;
    .locals 7

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/netease/ntunisdk/okio/Segment;->shared:Z

    .line 83
    new-instance v0, Lcom/netease/ntunisdk/okio/Segment;

    iget-object v2, p0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v3, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    iget v4, p0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/ntunisdk/okio/Segment;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final split(I)Lcom/netease/ntunisdk/okio/Segment;
    .locals 5

    if-lez p1, :cond_1

    .line 125
    iget v0, p0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v1, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/netease/ntunisdk/okio/Segment;->sharedCopy()Lcom/netease/ntunisdk/okio/Segment;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/okio/SegmentPool;->take()Lcom/netease/ntunisdk/okio/Segment;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v2, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    iget-object v3, v0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :goto_0
    iget v1, v0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    .line 141
    iget v1, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    .line 142
    iget-object p1, p0, Lcom/netease/ntunisdk/okio/Segment;->prev:Lcom/netease/ntunisdk/okio/Segment;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/okio/Segment;->push(Lcom/netease/ntunisdk/okio/Segment;)Lcom/netease/ntunisdk/okio/Segment;

    return-object v0

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final unsharedCopy()Lcom/netease/ntunisdk/okio/Segment;
    .locals 7

    .line 88
    new-instance v6, Lcom/netease/ntunisdk/okio/Segment;

    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    iget v2, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    iget v3, p0, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/ntunisdk/okio/Segment;-><init>([BIIZZ)V

    return-object v6
.end method

.method public final writeTo(Lcom/netease/ntunisdk/okio/Segment;I)V
    .locals 5

    .line 163
    iget-boolean v0, p1, Lcom/netease/ntunisdk/okio/Segment;->owner:Z

    if-eqz v0, :cond_3

    .line 164
    iget v0, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 166
    iget-boolean v0, p1, Lcom/netease/ntunisdk/okio/Segment;->shared:Z

    if-nez v0, :cond_1

    .line 167
    iget v0, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iget v2, p1, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v0, v2

    if-gt v0, v1, :cond_0

    .line 168
    iget-object v0, p1, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v1, p1, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v3, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v4, p1, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    iget v1, p1, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    .line 170
    iput v4, p1, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    goto :goto_0

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 166
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 173
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v1, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/netease/ntunisdk/okio/Segment;->data:[B

    iget v3, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v0, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/netease/ntunisdk/okio/Segment;->limit:I

    .line 175
    iget p1, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/netease/ntunisdk/okio/Segment;->pos:I

    return-void

    .line 163
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
