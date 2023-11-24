.class public Lcom/netease/mpay/oversea/d;
.super Ljava/lang/Object;
.source "GrowthyImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/d$b;
    }
.end annotation


# static fields
.field private static d:Lcom/netease/mpay/oversea/d;


# instance fields
.field private a:Z

.field private b:Lcom/netease/mpay/oversea/d$b;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/d;->a:Z

    return-void
.end method

.method public static a()Lcom/netease/mpay/oversea/d;
    .locals 2

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/d;->d:Lcom/netease/mpay/oversea/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/d;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/d;-><init>()V

    sput-object v1, Lcom/netease/mpay/oversea/d;->d:Lcom/netease/mpay/oversea/d;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Lcom/netease/mpay/oversea/d;->d:Lcom/netease/mpay/oversea/d;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/d;->a:Z

    return p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/d;->b:Lcom/netease/mpay/oversea/d$b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/d$a;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/d$a;-><init>(Lcom/netease/mpay/oversea/d;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/d;->b:Lcom/netease/mpay/oversea/d$b;

    .line 36
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/d$b;->a(Landroid/app/Application;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "GrowthyImpl startLineGameGrowthyApi "

    .line 37
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->t:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 41
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    monitor-exit p0

    return-void

    .line 43
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->f()Z

    move-result v1

    invoke-static {v1}, Lcom/linecorp/common/android/growthy/GrowthyManager;->enableDebuggingLog(Z)V

    const/4 v1, 0x0

    .line 44
    sget-object v2, Lcom/linecorp/common/android/growthy/GrowthyManager$GrowthyLoggingOption;->DEFAULT:Lcom/linecorp/common/android/growthy/GrowthyManager$GrowthyLoggingOption;

    invoke-static {p1, v0, v1, v2}, Lcom/linecorp/common/android/growthy/GrowthyManager;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/linecorp/common/android/growthy/GrowthyManager$GrowthyLoggingOption;)V

    .line 46
    invoke-static {}, Lcom/linecorp/common/android/growthy/GrowthyManager;->start()V

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/d;->a:Z

    const-string p1, "GrowthyImpl[success] startLineGameGrowthyApi : true"

    .line 48
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 50
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "GrowthyImpl[start] trackLineUser"

    .line 51
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/d;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->t:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrowthyImpl[success] tracking :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 60
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrowthyImpl trackLineUser :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/linecorp/common/android/growthy/GrowthyManager$LoginType;->LINE_LOGIN:Lcom/linecorp/common/android/growthy/GrowthyManager$LoginType;

    invoke-static {p1, v0}, Lcom/linecorp/common/android/growthy/GrowthyManager;->setUserId(Ljava/lang/String;Lcom/linecorp/common/android/growthy/GrowthyManager$LoginType;)V

    .line 63
    iput-object p1, p0, Lcom/netease/mpay/oversea/d;->c:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrowthyImpl[success] trackLineUser :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    :try_start_4
    const-string p1, "0"

    .line 66
    iput-object p1, p0, Lcom/netease/mpay/oversea/d;->c:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/d;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/d;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 70
    invoke-static {}, Lcom/linecorp/common/android/growthy/GrowthyManager;->stop()V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/linecorp/common/android/growthy/GrowthyManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/d;->c:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "GrowthyImpl disableTrackUser"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    const-string v0, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iput-object v0, p0, Lcom/netease/mpay/oversea/d;->c:Ljava/lang/String;

    .line 4
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/d;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_2
    sget-object v1, Lcom/linecorp/common/android/growthy/GrowthyManager$LoginType;->OTHER_LOGIN:Lcom/linecorp/common/android/growthy/GrowthyManager$LoginType;

    invoke-static {v0, v1}, Lcom/linecorp/common/android/growthy/GrowthyManager;->setUserId(Ljava/lang/String;Lcom/linecorp/common/android/growthy/GrowthyManager$LoginType;)V

    const-string v0, "GrowthyImpl[success] disableTrackUser"

    .line 8
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_3
    const-string v0, "0"

    .line 10
    iput-object v0, p0, Lcom/netease/mpay/oversea/d;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
