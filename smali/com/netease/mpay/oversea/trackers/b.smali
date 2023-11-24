.class public Lcom/netease/mpay/oversea/trackers/b;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/trackers/b$b;
    }
.end annotation


# static fields
.field private static f:Lcom/netease/mpay/oversea/trackers/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/trackers/b;->c:Z

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;
    .locals 2

    .line 42
    sget-object v0, Lcom/netease/mpay/oversea/trackers/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "more"

    return-object p0

    :cond_1
    const-string p0, "quick_login"

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mcount/MCountAgent;->clearCurrentTransactionId()V

    .line 40
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/MCountAgent;->startTransaction(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/netease/mcount/MCountAgent;->setBasicEventInfoMap(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Lcom/netease/mcount/MCountAgent;->setBasicEventInfoMap(Ljava/util/Map;)V

    return-void
.end method

.method public static declared-synchronized c()Lcom/netease/mpay/oversea/trackers/b;
    .locals 2

    const-class v0, Lcom/netease/mpay/oversea/trackers/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/trackers/b;->f:Lcom/netease/mpay/oversea/trackers/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    new-instance v1, Lcom/netease/mpay/oversea/trackers/b;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/trackers/b;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/trackers/b;->f:Lcom/netease/mpay/oversea/trackers/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e()Lcom/netease/mcount/MCountAgent;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->a:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/trackers/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mcount/MCountAgent;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/app/Dialog;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netease/mcount/MCountAgent;->hookDialogViewsClicked(Landroid/app/Dialog;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/mcount/MCountAgent;->logPageSwitch(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    .line 29
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "button_name"

    .line 30
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object p2

    const-string p3, "click"

    invoke-virtual {p2, p1, p3, v0}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/trackers/b;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/trackers/b;->c:Z

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/trackers/b;->a:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/netease/mpay/oversea/trackers/b;->b:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/netease/mcount/MCountAgent;->setAppUniqueId(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/netease/mcount/MCountAgent;->setSubAppKey(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/netease/mcount/MCountAgent;->setDebugMode(Z)V

    .line 9
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/netease/mcount/MCountAgent;->setMapFileEncryptInDebug(Z)V

    .line 10
    new-instance p2, Lcom/netease/mcount/MCountKeyData;

    iget-object p4, p0, Lcom/netease/mpay/oversea/trackers/b;->a:Ljava/lang/String;

    iget-object p5, p0, Lcom/netease/mpay/oversea/trackers/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/oversea/trackers/TrackerConsts;->TRACKER_URL:Ljava/lang/String;

    invoke-direct {p2, p4, p5, v0, v0}, Lcom/netease/mcount/MCountKeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object p2

    const-string p4, "mcount_mpay_oversea.json"

    invoke-virtual {p2, p1, p3, p4}, Lcom/netease/mcount/MCountAgent;->init(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
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

    .line 33
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/trackers/b;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/trackers/b;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/MCountAgent;->startTransaction(Landroid/content/Context;)V

    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mcount/MCountAgent;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/mcount/MCountAgent;->trackViewClicked(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 84
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->K:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tag"

    .line 91
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "desc"

    .line 92
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    const-string p2, "app_log_info"

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .line 49
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->w()I

    move-result v0

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "result"

    .line 51
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 53
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "login_type"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "account_num"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    const-string v0, "login_finish"

    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .locals 4

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "url"

    .line 96
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long/2addr v0, p2

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "response_time"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "status"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p2, "http_dns"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    const-string p3, "server_api"

    invoke-virtual {p1, p2, p3, v2}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 57
    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7

    const-string v3, "error"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 59
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->K:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "app"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "scene"

    .line 66
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "result"

    .line 67
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_code"

    .line 68
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_msg"

    .line 69
    invoke-virtual {v0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "extradata"

    .line 70
    invoke-virtual {v0, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    const-string p2, "third_app"

    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    const-string v1, "app_ver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    const-string v0, "game_id"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    const-string p2, "udid"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/trackers/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Lcom/netease/mcount/MCountAgent;->setBasicEventInfoMap(Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->t:Lcom/netease/mpay/oversea/t/c/g;

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "line_token"

    .line 76
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "line_userkey"

    .line 77
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "line_event"

    .line 78
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "line_msg"

    .line 79
    :try_start_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_0

    const-string p5, ""

    :cond_0
    :try_start_2
    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "line_code"

    .line 80
    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    :catch_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "linegame"

    invoke-virtual {p0, v0, p2, p1}, Lcom/netease/mpay/oversea/trackers/b;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/trackers/b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mcount/MCountAgent;->getCurrentTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/MpayActivity;->getTrackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "logViewClickedEvent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const-string p1, "context is null"

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not MpayActivity"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "user_id"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "user_id"

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 7

    const-string v3, "success"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7

    const-string v3, "fail"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;)V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    const-string v2, "api_entry"

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/trackers/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    const-string v2, "api_entry"

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "logout_type"

    .line 6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    const-string v2, "logout"

    invoke-virtual {p1, v1, v2, v0}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/trackers/b;->e:Landroid/content/Context;

    const-string v2, "login_start"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/trackers/b;->e()Lcom/netease/mcount/MCountAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mcount/MCountAgent;->setAppUniqueId(Ljava/lang/String;)V

    return-void
.end method
