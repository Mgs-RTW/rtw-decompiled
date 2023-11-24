.class public Lcom/netease/mcount/MCountAgent;
.super Ljava/lang/Object;


# static fields
.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/mcount/MCountAgent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/netease/mcount/j;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Z

.field private volatile f:Ljava/lang/String;

.field private volatile g:I

.field private volatile h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/netease/mcount/ViewClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/netease/mcount/MCountAgent;->j:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mcount/MCountAgent;->g:I

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/netease/mcount/MCountAgent;Lcom/netease/mcount/ViewClickListener;)Lcom/netease/mcount/ViewClickListener;
    .locals 0

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent;->i:Lcom/netease/mcount/ViewClickListener;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/netease/mcount/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/netease/mcount/b/a;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p3, p0, Lcom/netease/mcount/MCountAgent;->f:Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/netease/mcount/MCountAgent;->f:Ljava/lang/String;

    const-string v1, "transaction_id"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p3, p0, Lcom/netease/mcount/MCountAgent;->h:Ljava/util/Map;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/netease/mcount/MCountAgent;->h:Ljava/util/Map;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    new-instance p3, Lcom/netease/mcount/b/a;

    invoke-direct {p3, p2, v0}, Lcom/netease/mcount/b/a;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {p1}, Lcom/netease/mcount/d/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/netease/mcount/b/a;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mcount/d/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/netease/mcount/b/a;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mcount/d/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/netease/mcount/b/a;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/netease/mcount/d/c;->d(Landroid/content/Context;)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/netease/mcount/b/a;->a(J)V

    return-object p3
.end method

.method static synthetic a(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->b:Lcom/netease/mcount/j;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    instance-of v1, p1, Landroid/app/Application;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, Lcom/netease/mcount/j;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mcount/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/mcount/MCountAgent;->b:Lcom/netease/mcount/j;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->b:Lcom/netease/mcount/j;

    new-instance v2, Lcom/netease/mcount/MCountAgent$2;

    invoke-direct {v2, p0, p1}, Lcom/netease/mcount/MCountAgent$2;-><init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/netease/mcount/j;->a(Lcom/netease/mcount/ViewClickListener;)V

    new-instance p1, Lcom/netease/mcount/listener/a;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent;->b:Lcom/netease/mcount/j;

    invoke-direct {p1, v1, v2, v3}, Lcom/netease/mcount/listener/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mcount/listener/b;)V

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/netease/mcount/MCountAgent$3;

    invoke-direct {v0, p0, p1}, Lcom/netease/mcount/MCountAgent$3;-><init>(Lcom/netease/mcount/MCountAgent;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a()Z
    .locals 3

    iget-boolean v0, p0, Lcom/netease/mcount/MCountAgent;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    const-string v2, "MCount has not been initialized!"

    invoke-static {v0, v1, v2}, Lcom/netease/mcount/d/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private a(Landroid/content/Context;Lcom/netease/mcount/g;)Z
    .locals 3

    sget-object v0, Lcom/netease/mcount/g;->DISABLED:Lcom/netease/mcount/g;

    :try_start_0
    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/mcount/b;->a(Landroid/content/Context;)Lcom/netease/mcount/b$a;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mcount/b$a;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/mcount/g;->valueOf(Ljava/lang/String;)Lcom/netease/mcount/g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/netease/mcount/d/h;->a(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v0}, Lcom/netease/mcount/g;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/netease/mcount/g;->ordinal()I

    move-result p2

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/b;->a(Landroid/content/Context;)Lcom/netease/mcount/b$a;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mcount/b$a;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/b;->a(Landroid/content/Context;)Lcom/netease/mcount/b$a;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mcount/b$a;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static addMCountConfigure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/netease/mcount/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mcount/MCountAgent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/netease/mcount/MCountAgent$4;

    invoke-direct {v0, p0, p1}, Lcom/netease/mcount/MCountAgent$4;-><init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/netease/mcount/MCountAgent;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic b(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mcount/MCountAgent;)Lcom/netease/mcount/ViewClickListener;
    .locals 0

    iget-object p0, p0, Lcom/netease/mcount/MCountAgent;->i:Lcom/netease/mcount/ViewClickListener;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/netease/mcount/MCountAgent$5;

    invoke-direct {v0, p0, p1}, Lcom/netease/mcount/MCountAgent$5;-><init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/netease/mcount/MCountAgent;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private d(Landroid/content/Context;)Z
    .locals 7

    invoke-static {}, Lcom/netease/mcount/d/h;->b()J

    move-result-wide v0

    new-instance v2, Lcom/netease/mcount/i;

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v4}, Lcom/netease/mcount/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mcount/i;->b()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    iget-object p1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    const-string v1, "client info has been uploaded in 24 hours."

    invoke-static {p1, v0, v1}, Lcom/netease/mcount/d/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v2, Lcom/netease/mcount/i;

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v4}, Lcom/netease/mcount/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lcom/netease/mcount/i;->a(J)V

    const/4 p1, 0x0

    return p1
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/netease/mcount/i;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/mcount/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mcount/i;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/netease/mcount/b;->a(Landroid/content/Context;)Lcom/netease/mcount/b$a;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mcount/b$a;->i:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1}, Lcom/netease/mcount/i;->a(I)V

    return-object p1
.end method

.method private f(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mcount/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/a;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private g(Landroid/content/Context;)Z
    .locals 4

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/b;->a(Landroid/content/Context;)Lcom/netease/mcount/b$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mcount/b$a;->a:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    const-string v3, "MCount is disabled !!!"

    invoke-static {v1, v2, v3}, Lcom/netease/mcount/d/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mcount/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netease/mcount/a;->b(Landroid/content/Context;)V

    :cond_0
    return v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/MCountAgent;
    .locals 3

    invoke-static {p0, p1}, Lcom/netease/mcount/d/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/mcount/MCountAgent;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/netease/mcount/MCountAgent;->j:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/netease/mcount/MCountAgent;->j:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/netease/mcount/MCountAgent;

    invoke-direct {v2, p0, p1}, Lcom/netease/mcount/MCountAgent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/netease/mcount/MCountAgent;->j:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/mcount/MCountAgent;->j:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/mcount/MCountAgent;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized clearCurrentTransactionId()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/netease/mcount/MCountAgent;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mcount/MCountAgent;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endTransaction()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/netease/mcount/MCountAgent;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/mcount/MCountAgent;->g:I

    iget v0, p0, Lcom/netease/mcount/MCountAgent;->g:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mcount/MCountAgent;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/mcount/MCountAgent;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hookDialogViewsClicked(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public hookPopupWindowViewsClicked(Landroid/widget/PopupWindow;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mcount/MCountAgent;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/netease/mcount/MCountAgent;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/mcount/MCountAgent;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v1

    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput p2, v1, Lcom/netease/mcount/b;->c:I

    iget-object p2, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mcount/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/mcount/c/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netease/mcount/MCountAgent;->setTimeOffsetSec(J)V

    iget-object p2, p0, Lcom/netease/mcount/MCountAgent;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/netease/mcount/MCountAgent$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/netease/mcount/MCountAgent$1;-><init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public logError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mcount/g;->ERROR:Lcom/netease/mcount/g;

    invoke-direct {p0, p1, v0}, Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;Lcom/netease/mcount/g;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "desc"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app_log_error"

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public logEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Lcom/netease/mcount/b/a;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/mcount/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", segmentation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/mcount/b/a;->h()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/netease/mcount/d/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/netease/mcount/MCountAgent$6;

    invoke-direct {p3, p0, p1, p2}, Lcom/netease/mcount/MCountAgent$6;-><init>(Lcom/netease/mcount/MCountAgent;Landroid/content/Context;Lcom/netease/mcount/b/a;)V

    iget-object p1, p0, Lcom/netease/mcount/MCountAgent;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public logFatal(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mcount/g;->FATAL:Lcom/netease/mcount/g;

    invoke-direct {p0, p1, v0}, Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;Lcom/netease/mcount/g;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "desc"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app_log_fatal"

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public logInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mcount/g;->INFO:Lcom/netease/mcount/g;

    invoke-direct {p0, p1, v0}, Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;Lcom/netease/mcount/g;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "desc"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app_log_info"

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public logPageSwitch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "page"

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public logWarning(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mcount/g;->WARNING:Lcom/netease/mcount/g;

    invoke-direct {p0, p1, v0}, Lcom/netease/mcount/MCountAgent;->a(Landroid/content/Context;Lcom/netease/mcount/g;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "desc"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app_log_warning"

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onStart(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onStop(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public registerActivityTracker(Landroid/app/Activity;Lcom/netease/mcount/listener/ITrackerHelper;)V
    .locals 1

    invoke-static {}, Lcom/netease/mcount/f;->a()Lcom/netease/mcount/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/mcount/f;->a(Landroid/app/Activity;Lcom/netease/mcount/listener/ITrackerHelper;)V

    return-void
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mcount/b;->j:Ljava/lang/String;

    return-void
.end method

.method public setAppUniqueId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mcount/b;->i:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setBasicEventInfoMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/netease/mcount/MCountAgent;->h:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDebugMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    iput-boolean p1, v0, Lcom/netease/mcount/b;->a:Z

    return-void
.end method

.method public setLoginChannel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mcount/b;->k:Ljava/lang/String;

    return-void
.end method

.method public setMapFileEncryptInDebug(Z)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    iput-boolean p1, v0, Lcom/netease/mcount/b;->b:Z

    return-void
.end method

.method public setSubAppKey(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mcount/b;->h:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setTimeOffsetSec(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/mcount/b;->m:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/netease/mcount/b;->l:J

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTimeOffsetSec: timeOffsetSec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", \u5f53\u524d\u6821\u6b63\u540e\u65f6\u95f4="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/mcount/d/h;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/netease/mcount/d/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setViewClickListener(Lcom/netease/mcount/ViewClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mcount/b;->a:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent;->i:Lcom/netease/mcount/ViewClickListener;

    :cond_0
    return-void
.end method

.method public declared-synchronized startTransaction(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->g(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/netease/mcount/MCountAgent;->g:I

    if-lez v0, :cond_2

    iget-object p1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    const-string v1, "current event has been in a transaction"

    invoke-static {p1, v0, v1}, Lcom/netease/mcount/d/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mcount/MCountAgent;->f:Ljava/lang/String;

    :goto_0
    iget p1, p0, Lcom/netease/mcount/MCountAgent;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/netease/mcount/MCountAgent;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public trackAdapterViewClicked(Landroid/widget/AdapterView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->b:Lcom/netease/mcount/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/netease/mcount/j;->a(Landroid/widget/AdapterView;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public trackRecyclerViewClicked(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->b:Lcom/netease/mcount/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/netease/mcount/j;->a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public trackViewClicked(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->b:Lcom/netease/mcount/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/netease/mcount/j;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public unregisterActivityTracker(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/netease/mcount/f;->a()Lcom/netease/mcount/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/f;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public uploadLog(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/netease/mcount/MCountAgent;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mcount/MCountAgent;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mcount/MCountAgent;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/netease/mcount/MCountAgent;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mcount/MCountAgent;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mcount/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/b;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/netease/mcount/b;->a(Landroid/content/Context;)Lcom/netease/mcount/b$a;

    move-result-object v3

    iget-boolean v3, v3, Lcom/netease/mcount/b$a;->c:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/netease/mcount/d;->a(Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
