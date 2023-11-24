.class public final Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;
.super Ljava/lang/Object;
.source "InputStreamRewinder.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/load/data/DataRewinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/ntunisdk/glide/load/data/DataRewinder<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final MARK_READ_LIMIT:I = 0x500000


# instance fields
.field private final bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v0, p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/netease/ntunisdk/glide/load/engine/bitmap_recycle/ArrayPool;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 26
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    const/high16 p2, 0x500000

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->mark(I)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    return-void
.end method

.method public fixMarkLimits()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fixMarkLimit()V

    return-void
.end method

.method public rewindAndGet()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;->reset()V

    .line 33
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->bufferedStream:Lcom/netease/ntunisdk/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    return-object v0
.end method

.method public bridge synthetic rewindAndGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/load/data/InputStreamRewinder;->rewindAndGet()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
