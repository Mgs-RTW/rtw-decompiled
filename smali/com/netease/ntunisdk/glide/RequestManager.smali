.class public Lcom/netease/ntunisdk/glide/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/netease/ntunisdk/glide/manager/LifecycleListener;
.implements Lcom/netease/ntunisdk/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/glide/RequestManager$ClearTarget;,
        Lcom/netease/ntunisdk/glide/RequestManager$RequestManagerConnectivityListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcom/netease/ntunisdk/glide/manager/LifecycleListener;",
        "Lcom/netease/ntunisdk/glide/ModelTypes<",
        "Lcom/netease/ntunisdk/glide/RequestBuilder<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DECODE_TYPE_BITMAP:Lcom/netease/ntunisdk/glide/request/RequestOptions;

.field private static final DECODE_TYPE_GIF:Lcom/netease/ntunisdk/glide/request/RequestOptions;

.field private static final DOWNLOAD_ONLY_OPTIONS:Lcom/netease/ntunisdk/glide/request/RequestOptions;


# instance fields
.field private final addSelfToLifecycle:Ljava/lang/Runnable;

.field private final connectivityMonitor:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitor;

.field protected final context:Landroid/content/Context;

.field private final defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final glide:Lcom/netease/ntunisdk/glide/Glide;

.field final lifecycle:Lcom/netease/ntunisdk/glide/manager/Lifecycle;

.field private pauseAllRequestsOnTrimMemoryModerate:Z

.field private requestOptions:Lcom/netease/ntunisdk/glide/request/RequestOptions;

.field private final requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

.field private final targetTracker:Lcom/netease/ntunisdk/glide/manager/TargetTracker;

.field private final treeNode:Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->decodeTypeOf(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->lock()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    sput-object v0, Lcom/netease/ntunisdk/glide/RequestManager;->DECODE_TYPE_BITMAP:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    .line 62
    const-class v0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->decodeTypeOf(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->lock()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    sput-object v0, Lcom/netease/ntunisdk/glide/RequestManager;->DECODE_TYPE_GIF:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    .line 63
    sget-object v0, Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;

    .line 64
    invoke-static {v0}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/netease/ntunisdk/glide/load/engine/DiskCacheStrategy;)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/netease/ntunisdk/glide/Priority;->LOW:Lcom/netease/ntunisdk/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->priority(Lcom/netease/ntunisdk/glide/Priority;)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    sput-object v0, Lcom/netease/ntunisdk/glide/RequestManager;->DOWNLOAD_ONLY_OPTIONS:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    return-void
.end method

.method public constructor <init>(Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/manager/Lifecycle;Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 7

    .line 105
    new-instance v4, Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-direct {v4}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;-><init>()V

    .line 110
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/Glide;->getConnectivityMonitorFactory()Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/glide/RequestManager;-><init>(Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/manager/Lifecycle;Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;Lcom/netease/ntunisdk/glide/manager/RequestTracker;Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/manager/Lifecycle;Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;Lcom/netease/ntunisdk/glide/manager/RequestTracker;Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/netease/ntunisdk/glide/manager/TargetTracker;

    invoke-direct {v0}, Lcom/netease/ntunisdk/glide/manager/TargetTracker;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->targetTracker:Lcom/netease/ntunisdk/glide/manager/TargetTracker;

    .line 82
    new-instance v0, Lcom/netease/ntunisdk/glide/RequestManager$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/glide/RequestManager$1;-><init>(Lcom/netease/ntunisdk/glide/RequestManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    .line 123
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->glide:Lcom/netease/ntunisdk/glide/Glide;

    .line 124
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/RequestManager;->lifecycle:Lcom/netease/ntunisdk/glide/manager/Lifecycle;

    .line 125
    iput-object p3, p0, Lcom/netease/ntunisdk/glide/RequestManager;->treeNode:Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;

    .line 126
    iput-object p4, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    .line 127
    iput-object p6, p0, Lcom/netease/ntunisdk/glide/RequestManager;->context:Landroid/content/Context;

    .line 131
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/netease/ntunisdk/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {p6, p0, p4}, Lcom/netease/ntunisdk/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/netease/ntunisdk/glide/RequestManager;Lcom/netease/ntunisdk/glide/manager/RequestTracker;)V

    .line 130
    invoke-interface {p5, p3, p6}, Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitorFactory;->build(Landroid/content/Context;Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitor;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/ntunisdk/glide/RequestManager;->connectivityMonitor:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitor;

    .line 138
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->isOnBackgroundThread()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 139
    iget-object p3, p0, Lcom/netease/ntunisdk/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    invoke-static {p3}, Lcom/netease/ntunisdk/glide/util/Util;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {p2, p0}, Lcom/netease/ntunisdk/glide/manager/Lifecycle;->addListener(Lcom/netease/ntunisdk/glide/manager/LifecycleListener;)V

    .line 143
    :goto_0
    iget-object p3, p0, Lcom/netease/ntunisdk/glide/RequestManager;->connectivityMonitor:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitor;

    invoke-interface {p2, p3}, Lcom/netease/ntunisdk/glide/manager/Lifecycle;->addListener(Lcom/netease/ntunisdk/glide/manager/LifecycleListener;)V

    .line 145
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 146
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/Glide;->getGlideContext()Lcom/netease/ntunisdk/glide/GlideContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/ntunisdk/glide/GlideContext;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/netease/ntunisdk/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 147
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/Glide;->getGlideContext()Lcom/netease/ntunisdk/glide/GlideContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/glide/GlideContext;->getDefaultRequestOptions()Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/netease/ntunisdk/glide/RequestManager;->setRequestOptions(Lcom/netease/ntunisdk/glide/request/RequestOptions;)V

    .line 149
    invoke-virtual {p1, p0}, Lcom/netease/ntunisdk/glide/Glide;->registerRequestManager(Lcom/netease/ntunisdk/glide/RequestManager;)V

    return-void
.end method

.method private untrackOrDelegate(Lcom/netease/ntunisdk/glide/request/target/Target;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    .line 630
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->untrack(Lcom/netease/ntunisdk/glide/request/target/Target;)Z

    move-result v0

    .line 648
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/request/target/Target;->getRequest()Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v1

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->glide:Lcom/netease/ntunisdk/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/Glide;->removeFromManagers(Lcom/netease/ntunisdk/glide/request/target/Target;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 650
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/glide/request/target/Target;->setRequest(Lcom/netease/ntunisdk/glide/request/Request;)V

    .line 651
    invoke-interface {v1}, Lcom/netease/ntunisdk/glide/request/Request;->clear()V

    :cond_0
    return-void
.end method

.method private declared-synchronized updateRequestOptions(Lcom/netease/ntunisdk/glide/request/RequestOptions;)V
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestOptions:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestOptions:Lcom/netease/ntunisdk/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addDefaultRequestListener(Lcom/netease/ntunisdk/glide/request/RequestListener;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netease/ntunisdk/glide/RequestManager;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public declared-synchronized applyDefaultRequestOptions(Lcom/netease/ntunisdk/glide/request/RequestOptions;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 0

    monitor-enter p0

    .line 180
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->updateRequestOptions(Lcom/netease/ntunisdk/glide/request/RequestOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public as(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "TResourceType;>;"
        }
    .end annotation

    .line 596
    new-instance v0, Lcom/netease/ntunisdk/glide/RequestBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->glide:Lcom/netease/ntunisdk/glide/Glide;

    iget-object v2, p0, Lcom/netease/ntunisdk/glide/RequestManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/netease/ntunisdk/glide/RequestBuilder;-><init>(Lcom/netease/ntunisdk/glide/Glide;Lcom/netease/ntunisdk/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public asBitmap()Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 392
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/netease/ntunisdk/glide/RequestManager;->DECODE_TYPE_BITMAP:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 427
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asFile()Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 581
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->skipMemoryCacheOf(Z)Lcom/netease/ntunisdk/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asGif()Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 411
    const-class v0, Lcom/netease/ntunisdk/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/netease/ntunisdk/glide/RequestManager;->DECODE_TYPE_GIF:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear(Landroid/view/View;)V
    .locals 1

    .line 612
    new-instance v0, Lcom/netease/ntunisdk/glide/RequestManager$ClearTarget;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/glide/RequestManager$ClearTarget;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->clear(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    return-void
.end method

.method public clear(Lcom/netease/ntunisdk/glide/request/target/Target;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 626
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->untrackOrDelegate(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    return-void
.end method

.method public download(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->downloadOnly()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public downloadOnly()Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 554
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/netease/ntunisdk/glide/RequestManager;->DOWNLOAD_ONLY_OPTIONS:Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->apply(Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method getDefaultRequestListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->defaultRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method declared-synchronized getDefaultRequestOptions()Lcom/netease/ntunisdk/glide/request/RequestOptions;
    .locals 1

    monitor-enter p0

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestOptions:Lcom/netease/ntunisdk/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/TransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/netease/ntunisdk/glide/TransitionOptions<",
            "*TT;>;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->glide:Lcom/netease/ntunisdk/glide/Glide;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/Glide;->getGlideContext()Lcom/netease/ntunisdk/glide/GlideContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/GlideContext;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/netease/ntunisdk/glide/TransitionOptions;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->isPaused()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public load(Landroid/graphics/Bitmap;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/graphics/drawable/Drawable;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 451
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/net/Uri;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 500
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 538
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load([B)Lcom/netease/ntunisdk/glide/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/netease/ntunisdk/glide/RequestBuilder<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->asDrawable()Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/RequestBuilder;->load([B)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->load(Landroid/graphics/drawable/Drawable;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->load(Ljava/io/File;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->load(Ljava/lang/String;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->load(Ljava/net/URL;)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->load([B)Lcom/netease/ntunisdk/glide/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->targetTracker:Lcom/netease/ntunisdk/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/TargetTracker;->onDestroy()V

    .line 372
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->targetTracker:Lcom/netease/ntunisdk/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/TargetTracker;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/request/target/Target;

    .line 373
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/glide/RequestManager;->clear(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->targetTracker:Lcom/netease/ntunisdk/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/TargetTracker;->clear()V

    .line 376
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->clearRequests()V

    .line 377
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->lifecycle:Lcom/netease/ntunisdk/glide/manager/Lifecycle;

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/glide/manager/Lifecycle;->removeListener(Lcom/netease/ntunisdk/glide/manager/LifecycleListener;)V

    .line 378
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->lifecycle:Lcom/netease/ntunisdk/glide/manager/Lifecycle;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->connectivityMonitor:Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitor;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/glide/manager/Lifecycle;->removeListener(Lcom/netease/ntunisdk/glide/manager/LifecycleListener;)V

    .line 379
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->addSelfToLifecycle:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/netease/ntunisdk/glide/util/Util;->removeCallbacksOnUiThread(Ljava/lang/Runnable;)V

    .line 380
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->glide:Lcom/netease/ntunisdk/glide/Glide;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/glide/Glide;->unregisterRequestManager(Lcom/netease/ntunisdk/glide/RequestManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->resumeRequests()V

    .line 352
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->targetTracker:Lcom/netease/ntunisdk/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/TargetTracker;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    .line 361
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->pauseRequests()V

    .line 362
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->targetTracker:Lcom/netease/ntunisdk/glide/manager/TargetTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/TargetTracker;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    .line 696
    iget-boolean p1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->pauseAllRequestsOnTrimMemoryModerate:Z

    if-eqz p1, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->pauseAllRequestsRecursive()V

    :cond_0
    return-void
.end method

.method public declared-synchronized pauseAllRequests()V
    .locals 1

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pauseAllRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseAllRequestsRecursive()V
    .locals 2

    monitor-enter p0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->pauseAllRequests()V

    .line 291
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->treeNode:Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/RequestManager;

    .line 292
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/RequestManager;->pauseAllRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 294
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized pauseRequests()V
    .locals 1

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseRequestsRecursive()V
    .locals 2

    monitor-enter p0

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->pauseRequests()V

    .line 314
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->treeNode:Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/RequestManager;

    .line 315
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/RequestManager;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 317
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized resumeRequests()V
    .locals 1

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->resumeRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeRequestsRecursive()V
    .locals 2

    monitor-enter p0

    .line 337
    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertMainThread()V

    .line 338
    invoke-virtual {p0}, Lcom/netease/ntunisdk/glide/RequestManager;->resumeRequests()V

    .line 339
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->treeNode:Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/glide/RequestManager;

    .line 340
    invoke-virtual {v1}, Lcom/netease/ntunisdk/glide/RequestManager;->resumeRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 342
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized setDefaultRequestOptions(Lcom/netease/ntunisdk/glide/request/RequestOptions;)Lcom/netease/ntunisdk/glide/RequestManager;
    .locals 0

    monitor-enter p0

    .line 202
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/glide/RequestManager;->setRequestOptions(Lcom/netease/ntunisdk/glide/request/RequestOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPauseAllRequestsOnTrimMemoryModerate(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->pauseAllRequestsOnTrimMemoryModerate:Z

    return-void
.end method

.method protected declared-synchronized setRequestOptions(Lcom/netease/ntunisdk/glide/request/RequestOptions;)V
    .locals 0

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->clone()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/glide/request/RequestOptions;->autoClone()Lcom/netease/ntunisdk/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/glide/request/RequestOptions;

    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestOptions:Lcom/netease/ntunisdk/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 691
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->treeNode:Lcom/netease/ntunisdk/glide/manager/RequestManagerTreeNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized track(Lcom/netease/ntunisdk/glide/request/target/Target;Lcom/netease/ntunisdk/glide/request/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "*>;",
            "Lcom/netease/ntunisdk/glide/request/Request;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->targetTracker:Lcom/netease/ntunisdk/glide/manager/TargetTracker;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/manager/TargetTracker;->track(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    .line 673
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->runRequest(Lcom/netease/ntunisdk/glide/request/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized untrack(Lcom/netease/ntunisdk/glide/request/target/Target;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 656
    :try_start_0
    invoke-interface {p1}, Lcom/netease/ntunisdk/glide/request/target/Target;->getRequest()Lcom/netease/ntunisdk/glide/request/Request;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 659
    monitor-exit p0

    return v1

    .line 662
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/netease/ntunisdk/glide/RequestManager;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->clearAndRemove(Lcom/netease/ntunisdk/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager;->targetTracker:Lcom/netease/ntunisdk/glide/manager/TargetTracker;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/glide/manager/TargetTracker;->untrack(Lcom/netease/ntunisdk/glide/request/target/Target;)V

    const/4 v0, 0x0

    .line 664
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/glide/request/target/Target;->setRequest(Lcom/netease/ntunisdk/glide/request/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 667
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
