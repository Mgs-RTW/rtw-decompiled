.class public Lcom/netease/mpay/oversea/l/d;
.super Ljava/lang/Object;
.source "InitImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V
    .locals 3

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/t/e/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    new-instance v1, Lcom/netease/mpay/oversea/l/b;

    new-instance v2, Lcom/netease/mpay/oversea/l/d$b;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/l/d$b;-><init>(Lcom/netease/mpay/oversea/l/d;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V

    invoke-direct {v1, p1, v0, v2}, Lcom/netease/mpay/oversea/l/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 57
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/l/d;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/l/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V

    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/netease/mpay/oversea/r/d$a;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->a()Lcom/netease/mpay/oversea/t/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/a;->c()Lcom/netease/mpay/oversea/t/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v1

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/a;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/mpay/oversea/r/e;->i:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0, p1, p3, p2}, Lcom/netease/mpay/oversea/l/d;->b(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/i/d;->a()Lcom/netease/mpay/oversea/i/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i/d;->b()V

    if-eqz p3, :cond_2

    .line 10
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    const-string p3, "Doing Nothing!!!"

    .line 12
    invoke-interface {p2, p1, p3}, Lcom/netease/mpay/oversea/r/d$a;->onFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V
    .locals 3

    .line 13
    new-instance v0, Lcom/netease/mpay/oversea/l/c;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/l/d$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/l/d$a;-><init>(Lcom/netease/mpay/oversea/l/d;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V

    const/4 p2, 0x1

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/netease/mpay/oversea/l/c;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/oversea/h/h;)V

    .line 52
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/r/d$a;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    const-string v1, "Activity is null or Activity is finishing"

    .line 3
    invoke-interface {p2, v0, v1}, Lcom/netease/mpay/oversea/r/d$a;->onFailure(ILjava/lang/String;)V

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/l/d;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/r/d$a;Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "AppCallback is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    .line 58
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->a()Lcom/netease/mpay/oversea/t/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/a;->c()Lcom/netease/mpay/oversea/t/c/a;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/f;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/a;->c:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/f;->j()Lcom/netease/mpay/oversea/l/e/b;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/l/e/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/netease/mpay/oversea/t/c/a;->b:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/l/a;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/f;->j()Lcom/netease/mpay/oversea/l/e/b;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/l/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mpay/oversea/l/e/b;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
