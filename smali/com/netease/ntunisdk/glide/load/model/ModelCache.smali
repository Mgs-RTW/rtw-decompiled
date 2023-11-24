.class public Lcom/netease/ntunisdk/glide/load/model/ModelCache;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/load/model/ModelCache$ModelKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0xfa


# instance fields
.field private final cache:Lcom/netease/ntunisdk/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/ntunisdk/glide/util/LruCache<",
            "Lcom/netease/ntunisdk/glide/load/model/ModelCache$ModelKey<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/glide/load/model/ModelCache;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/netease/ntunisdk/glide/load/model/ModelCache$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/glide/load/model/ModelCache$1;-><init>(Lcom/netease/ntunisdk/glide/load/model/ModelCache;J)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/ModelCache;->cache:Lcom/netease/ntunisdk/glide/util/LruCache;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/model/ModelCache;->cache:Lcom/netease/ntunisdk/glide/util/LruCache;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/util/LruCache;->clearMemory()V

    return-void
.end method

.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 50
    invoke-static {p1, p2, p3}, Lcom/netease/ntunisdk/glide/load/model/ModelCache$ModelKey;->get(Ljava/lang/Object;II)Lcom/netease/ntunisdk/glide/load/model/ModelCache$ModelKey;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/model/ModelCache;->cache:Lcom/netease/ntunisdk/glide/util/LruCache;

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 52
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/load/model/ModelCache$ModelKey;->release()V

    return-object p2
.end method

.method public put(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 65
    invoke-static {p1, p2, p3}, Lcom/netease/ntunisdk/glide/load/model/ModelCache$ModelKey;->get(Ljava/lang/Object;II)Lcom/netease/ntunisdk/glide/load/model/ModelCache$ModelKey;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/netease/ntunisdk/glide/load/model/ModelCache;->cache:Lcom/netease/ntunisdk/glide/util/LruCache;

    invoke-virtual {p2, p1, p4}, Lcom/netease/ntunisdk/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
