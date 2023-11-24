.class public Lcom/netease/mpay/oversea/r/d;
.super Ljava/lang/Object;
.source "SDKContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/r/d$a;
    }
.end annotation


# static fields
.field private static l:Lcom/netease/mpay/oversea/r/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netease/mpay/oversea/r/e;

.field private c:Lcom/netease/mpay/oversea/r/f;

.field private d:Z

.field private e:Z

.field private f:Lcom/netease/mpay/oversea/GameConfig;

.field private g:Lcom/netease/mpay/oversea/r/b;

.field private h:Landroid/content/Context;

.field private i:F

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/r/d;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/r/d;->e:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lcom/netease/mpay/oversea/r/d;->i:F

    .line 12
    new-instance v1, Lcom/netease/mpay/oversea/r/e;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/r/e;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    .line 13
    new-instance v1, Lcom/netease/mpay/oversea/r/f;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/r/f;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/r/d;->c:Lcom/netease/mpay/oversea/r/f;

    .line 14
    sget-object v1, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    const-string v2, ""

    invoke-static {v2, v2, v1, v0}, Lcom/netease/mpay/oversea/GameConfig;->genDefaultConfig(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)Lcom/netease/mpay/oversea/GameConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    return-void
.end method

.method private a(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    return-object p1
.end method

.method private a(Lcom/netease/mpay/oversea/GameConfig;)Z
    .locals 3

    .line 53
    iget-object v0, p1, Lcom/netease/mpay/oversea/GameConfig;->host:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/oversea/GameConfig;->language:Lcom/netease/mpay/oversea/GameLanguage;

    iget-object v1, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v2, v1, Lcom/netease/mpay/oversea/GameConfig;->language:Lcom/netease/mpay/oversea/GameLanguage;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/oversea/GameConfig;->forbidChannels:Ljava/util/Set;

    iget-object v1, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->forbidChannels:Ljava/util/Set;

    .line 57
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/r/d;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static a(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 3
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method private b(Lcom/netease/mpay/oversea/GameConfig;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 8
    iget-boolean v3, p1, Lcom/netease/mpay/oversea/GameConfig;->hiddenGuest:Z

    iput-boolean v3, v1, Lcom/netease/mpay/oversea/GameConfig;->hiddenGuest:Z

    .line 9
    iget-boolean v3, p1, Lcom/netease/mpay/oversea/GameConfig;->hiddenCloseBtn:Z

    iput-boolean v3, v1, Lcom/netease/mpay/oversea/GameConfig;->hiddenCloseBtn:Z

    .line 11
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/r/d;->a(Lcom/netease/mpay/oversea/GameConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/r/d;->c:Lcom/netease/mpay/oversea/r/f;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->W()V

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/r/d;->c:Lcom/netease/mpay/oversea/r/f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :cond_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static h()Lcom/netease/mpay/oversea/r/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    return-object v0
.end method

.method public static j()Lcom/netease/mpay/oversea/r/d;
    .locals 2

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/r/d;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/r/d;->l:Lcom/netease/mpay/oversea/r/d;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/r/d;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/r/d;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/r/d;->l:Lcom/netease/mpay/oversea/r/d;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/r/d;->l:Lcom/netease/mpay/oversea/r/d;

    return-object v0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static n()Lcom/netease/mpay/oversea/r/f;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/d;->c:Lcom/netease/mpay/oversea/r/f;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/netease/mpay/oversea/r/d;->i:F

    return-void
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->g:Lcom/netease/mpay/oversea/r/b;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/netease/mpay/oversea/r/b;

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/r/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/d;->g:Lcom/netease/mpay/oversea/r/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/GameConfig;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SDKContext init"

    .line 9
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 10
    const-class v0, Lcom/netease/mpay/oversea/r/d;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iput-object p2, p0, Lcom/netease/mpay/oversea/r/d;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/r/d;->a(Landroid/content/Context;)Z

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/r/d;->h:Landroid/content/Context;

    .line 14
    iget-object v1, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-object v2, p3, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/netease/mpay/oversea/t/f/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/netease/mpay/oversea/r/e;->b(Z)V

    .line 15
    new-instance p2, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/r/d;->h:Landroid/content/Context;

    iget-object v2, p3, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/b;->e()Lcom/netease/mpay/oversea/t/f/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/f/f;->c()Lcom/netease/mpay/oversea/t/c/h;

    move-result-object p2

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-boolean p2, p2, Lcom/netease/mpay/oversea/t/c/h;->a:Z

    invoke-virtual {v1, p2}, Lcom/netease/mpay/oversea/r/e;->a(Z)V

    .line 17
    invoke-virtual {p0, p1, p3}, Lcom/netease/mpay/oversea/r/d;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/GameConfig;)V

    .line 21
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/netease/mpay/oversea/GameConfig;)V
    .locals 2

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/r/d;->b(Lcom/netease/mpay/oversea/GameConfig;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 32
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    .line 33
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object p1, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/r/e;->a(Z)V

    .line 35
    iget-object p1, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/netease/mpay/oversea/r/e;->c:Z

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p2, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->e()Lcom/netease/mpay/oversea/t/f/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/f;->c()Lcom/netease/mpay/oversea/t/c/h;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-boolean v1, p1, Lcom/netease/mpay/oversea/t/c/h;->a:Z

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/e;->a(Z)V

    .line 39
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/t/c/h;->b:Z

    iput-boolean p1, v0, Lcom/netease/mpay/oversea/r/e;->c:Z

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-object v0, p2, Lcom/netease/mpay/oversea/GameConfig;->language:Lcom/netease/mpay/oversea/GameLanguage;

    iput-object v0, p1, Lcom/netease/mpay/oversea/r/e;->j:Lcom/netease/mpay/oversea/GameLanguage;

    .line 42
    iget-object v0, p2, Lcom/netease/mpay/oversea/GameConfig;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/r/e;->a(Ljava/lang/String;)V

    .line 43
    iget-boolean p1, p2, Lcom/netease/mpay/oversea/GameConfig;->debug:Z

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/r/d;->d:Z

    .line 44
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/r/d;->e:Z

    .line 45
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "onRestoreInstanceState:enter"

    .line 63
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    const-string v1, "udid"

    .line 65
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/r/d;->a:Ljava/lang/String;

    const-string v1, "game_id"

    .line 66
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "jf_game_id"

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_channel"

    .line 68
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "host"

    const-string v2, "https://sdk-os.mpsdk.easebar.com"

    .line 69
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    sget-object v0, Lcom/netease/mpay/oversea/GameLanguage;->EN:Lcom/netease/mpay/oversea/GameLanguage;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/GameLanguage;->index()I

    move-result v0

    const-string v2, "language"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "debug"

    .line 71
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/mpay/oversea/r/d;->e:Z

    const-string v2, "client_debug"

    .line 72
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/mpay/oversea/r/d;->d:Z

    .line 73
    iget-object v2, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    invoke-virtual {v2, p1}, Lcom/netease/mpay/oversea/r/e;->a(Landroid/os/Bundle;)V

    .line 74
    iget-object v2, p0, Lcom/netease/mpay/oversea/r/d;->c:Lcom/netease/mpay/oversea/r/f;

    invoke-virtual {v2, p1}, Lcom/netease/mpay/oversea/r/f;->a(Landroid/os/Bundle;)V

    .line 75
    new-instance p1, Lcom/netease/mpay/oversea/GameConfig;

    invoke-static {v0}, Lcom/netease/mpay/oversea/GameLanguage;->getInstance(I)Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v6

    iget-boolean v7, p0, Lcom/netease/mpay/oversea/r/d;->d:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/GameConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/GameLanguage;Z)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    .line 76
    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/GameConfig;->setJfGameId(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/GameLanguage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/e;->j:Lcom/netease/mpay/oversea/GameLanguage;

    if-eq p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->c:Lcom/netease/mpay/oversea/r/f;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->W()V

    :cond_0
    if-eqz p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iput-object p1, v0, Lcom/netease/mpay/oversea/r/e;->j:Lcom/netease/mpay/oversea/GameLanguage;

    .line 52
    invoke-static {p1}, Lcom/netease/mpay/oversea/f;->a(Lcom/netease/mpay/oversea/GameLanguage;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/r/e;->d:Z

    .line 59
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/netease/mpay/oversea/f;->j()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iput-object p1, v0, Lcom/netease/mpay/oversea/r/e;->e:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/r/e;->b:Z

    return v0
.end method

.method public a(I)Z
    .locals 2

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->forbidChannels:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "activity"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 26
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 27
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 28
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    const-wide/16 v6, 0x190

    const/4 p1, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v3, v6, :cond_1

    .line 30
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v1, v4

    const-wide/16 v3, 0x320

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v2

    :cond_2
    :goto_1
    return p1

    :cond_3
    return v0
.end method

.method public a(Lcom/netease/mpay/oversea/n/h;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/GameConfig;->isHiddenCloseBtn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/f;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 14
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v1, v1, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->a()Lcom/netease/mpay/oversea/t/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/a;->e()V

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/e;->d()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onSaveInstanceState:enter"

    .line 16
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->a:Ljava/lang/String;

    const-string v1, "udid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    const-string v1, "game_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->jfGameId:Ljava/lang/String;

    const-string v1, "jf_game_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    const-string v1, "app_channel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/r/d;->e:Z

    const-string v1, "debug"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/r/d;->d:Z

    const-string v1, "client_debug"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/e;->h:Ljava/lang/String;

    const-string v1, "host"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/e;->j:Lcom/netease/mpay/oversea/GameLanguage;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/GameLanguage;->index()I

    move-result v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/e;->b(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->c:Lcom/netease/mpay/oversea/r/f;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/f;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Z)V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->O()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/r/d;->e:Z

    return-void
.end method

.method public c()Lcom/netease/mpay/oversea/r/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->g:Lcom/netease/mpay/oversea/r/b;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mpay/oversea/r/d;->g:Lcom/netease/mpay/oversea/r/b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/b;->g()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/netease/mpay/oversea/r/e;->a:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/r/d;->k:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/r/d;->j:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/r/d;->k:Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iput-boolean p1, v0, Lcom/netease/mpay/oversea/r/e;->b:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/r/d;->d:Z

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/r/d;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iput-boolean p1, v0, Lcom/netease/mpay/oversea/r/e;->k:Z

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/r/d;->e:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/r/d;->e:Z

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/r/d;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->jfGameId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public l()Lcom/netease/mpay/oversea/GameLanguage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/e;->j:Lcom/netease/mpay/oversea/GameLanguage;

    return-object v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/r/d;->i:F

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->b:Lcom/netease/mpay/oversea/r/e;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/r/e;->a:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/GameConfig;->hiddenGuest:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/r/d;->f:Lcom/netease/mpay/oversea/GameConfig;

    iget-object v0, v0, Lcom/netease/mpay/oversea/GameConfig;->appChannel:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
