.class public final Lcom/appsflyer/AFSensorManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AFDeepLinkManager:Ljava/util/BitSet;

.field private static final getRequestListener:Landroid/os/Handler;

.field public static volatile sInstance:Lcom/appsflyer/AFSensorManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final $$a:Landroid/os/Handler;

.field $$b:Z

.field final AFDateFormat:Ljava/lang/Object;

.field private final AFEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/appsflyer/internal/t;",
            "Lcom/appsflyer/internal/t;",
            ">;"
        }
    .end annotation
.end field

.field collectIntentsFromActivities:J

.field private final context:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/appsflyer/internal/t;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final dateFormatUTC:Ljava/lang/Runnable;

.field getDataFormatter:I

.field final getInstance:Ljava/util/concurrent/Executor;

.field private final isEncrypt:Ljava/lang/Runnable;

.field private final requestListener:Landroid/hardware/SensorManager;

.field private urlString:Z

.field final valueOf:Ljava/lang/Runnable;

.field final values:Ljava/lang/Runnable;


# direct methods
.method static synthetic $$a(Lcom/appsflyer/AFSensorManager;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->requestListener:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static $$b(Landroid/content/Context;)Lcom/appsflyer/AFSensorManager;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/appsflyer/AFSensorManager;->sInstance:Lcom/appsflyer/AFSensorManager;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/appsflyer/AFSensorManager;->sInstance:Lcom/appsflyer/AFSensorManager;

    .line 112
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 112
    sget-object v1, Lcom/appsflyer/AFSensorManager;->getRequestListener:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/appsflyer/AFSensorManager;->AFDateFormat(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/AFSensorManager;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic $$b(Lcom/appsflyer/AFSensorManager;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->getInstance:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/appsflyer/AFSensorManager;->AFDeepLinkManager:Ljava/util/BitSet;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/appsflyer/AFSensorManager;->getRequestListener:Landroid/os/Handler;

    .line 35
    sget-object v0, Lcom/appsflyer/AFSensorManager;->AFDeepLinkManager:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 36
    sget-object v0, Lcom/appsflyer/AFSensorManager;->AFDeepLinkManager:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 37
    sget-object v0, Lcom/appsflyer/AFSensorManager;->AFDeepLinkManager:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Landroid/hardware/SensorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AFSensorManager;->AFDateFormat:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/appsflyer/AFSensorManager;->AFDeepLinkManager:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/AFSensorManager;->AFEvent:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/appsflyer/AFSensorManager;->AFDeepLinkManager:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/AFSensorManager;->context:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/appsflyer/AFSensorManager$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/AFSensorManager$1;-><init>(Lcom/appsflyer/AFSensorManager;)V

    iput-object v0, p0, Lcom/appsflyer/AFSensorManager;->values:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/appsflyer/AFSensorManager$2;

    invoke-direct {v0, p0}, Lcom/appsflyer/AFSensorManager$2;-><init>(Lcom/appsflyer/AFSensorManager;)V

    iput-object v0, p0, Lcom/appsflyer/AFSensorManager;->valueOf:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lcom/appsflyer/AFSensorManager$4;

    invoke-direct {v0, p0}, Lcom/appsflyer/AFSensorManager$4;-><init>(Lcom/appsflyer/AFSensorManager;)V

    iput-object v0, p0, Lcom/appsflyer/AFSensorManager;->dateFormatUTC:Ljava/lang/Runnable;

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/appsflyer/AFSensorManager;->getDataFormatter:I

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appsflyer/AFSensorManager;->collectIntentsFromActivities:J

    .line 83
    new-instance v0, Lcom/appsflyer/AFSensorManager$3;

    invoke-direct {v0, p0}, Lcom/appsflyer/AFSensorManager$3;-><init>(Lcom/appsflyer/AFSensorManager;)V

    iput-object v0, p0, Lcom/appsflyer/AFSensorManager;->isEncrypt:Ljava/lang/Runnable;

    .line 95
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AFSensorManager;->getInstance:Ljava/util/concurrent/Executor;

    .line 98
    iput-object p1, p0, Lcom/appsflyer/AFSensorManager;->requestListener:Landroid/hardware/SensorManager;

    .line 99
    iput-object p2, p0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method static synthetic AFDateFormat(Lcom/appsflyer/AFSensorManager;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/appsflyer/AFSensorManager;->getDataFormatter:I

    return v0
.end method

.method private static AFDateFormat(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/AFSensorManager;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/appsflyer/AFSensorManager;->sInstance:Lcom/appsflyer/AFSensorManager;

    if-nez v0, :cond_1

    .line 122
    const-class v1, Lcom/appsflyer/AFSensorManager;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v0, Lcom/appsflyer/AFSensorManager;->sInstance:Lcom/appsflyer/AFSensorManager;

    if-nez v0, :cond_0

    .line 1132
    new-instance v0, Lcom/appsflyer/AFSensorManager;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/AFSensorManager;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V

    .line 124
    sput-object v0, Lcom/appsflyer/AFSensorManager;->sInstance:Lcom/appsflyer/AFSensorManager;

    .line 126
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    sget-object v0, Lcom/appsflyer/AFSensorManager;->sInstance:Lcom/appsflyer/AFSensorManager;

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static AFDateFormat(I)Z
    .locals 1

    .prologue
    .line 142
    if-ltz p0, :cond_0

    sget-object v0, Lcom/appsflyer/AFSensorManager;->AFDeepLinkManager:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic collectIntentsFromActivities(Lcom/appsflyer/AFSensorManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->context:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic valueOf(Lcom/appsflyer/AFSensorManager;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/appsflyer/AFSensorManager;->getDataFormatter:I

    return p1
.end method

.method static synthetic valueOf(Lcom/appsflyer/AFSensorManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->isEncrypt:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic valueOf(Lcom/appsflyer/AFSensorManager;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/appsflyer/AFSensorManager;->urlString:Z

    return p1
.end method

.method static synthetic values(Lcom/appsflyer/AFSensorManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->AFEvent:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic values(I)Z
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/appsflyer/AFSensorManager;->AFDateFormat(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final valueOf()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->AFEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/t;

    .line 247
    iget-object v2, p0, Lcom/appsflyer/AFSensorManager;->context:Ljava/util/Map;

    .line 2119
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/t;->valueOf(Ljava/util/Map;Z)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->context:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->context:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 254
    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/appsflyer/AFSensorManager;->context:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method final values()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager;->AFDateFormat:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->AFEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appsflyer/AFSensorManager;->urlString:Z

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->AFEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/t;

    .line 268
    iget-object v3, p0, Lcom/appsflyer/AFSensorManager;->context:Ljava/util/Map;

    .line 2123
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/appsflyer/internal/t;->valueOf(Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 271
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager;->context:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    .line 274
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/appsflyer/AFSensorManager;->context:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
