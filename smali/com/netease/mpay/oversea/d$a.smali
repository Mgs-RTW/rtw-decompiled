.class Lcom/netease/mpay/oversea/d$a;
.super Lcom/netease/mpay/oversea/d$b;
.source "GrowthyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/d;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/app/Application;

.field final synthetic e:Lcom/netease/mpay/oversea/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/d;Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/d$a;->e:Lcom/netease/mpay/oversea/d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/d$a;->d:Landroid/app/Application;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/d$b;-><init>(Lcom/netease/mpay/oversea/d;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "GrowthyImpl onEnterBackground"

    .line 5
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/d$a;->e:Lcom/netease/mpay/oversea/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/d;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LINEGAME GrowthyImpl onEnterFront :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/d$a;->e:Lcom/netease/mpay/oversea/d;

    invoke-static {v1}, Lcom/netease/mpay/oversea/d;->a(Lcom/netease/mpay/oversea/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/d$a;->e:Lcom/netease/mpay/oversea/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/d;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/d$a;->e:Lcom/netease/mpay/oversea/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/d$a;->e:Lcom/netease/mpay/oversea/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/d;->b(Lcom/netease/mpay/oversea/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/u;-><init>()V

    new-instance v1, Lcom/netease/mpay/oversea/d$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/d$a$a;-><init>(Lcom/netease/mpay/oversea/d$a;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/netease/mpay/oversea/thirdapi/u;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
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

.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "GrowthyImpl onExit"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/d$a;->e:Lcom/netease/mpay/oversea/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/d;->c(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/d$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/d$a;->d:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/d$b;->b(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
