.class public Lcom/netease/mpay/oversea/t/d/a;
.super Lcom/netease/mpay/oversea/t/d/c/a;
.source "QuickLogin.java"


# static fields
.field private static f:Lcom/netease/mpay/oversea/t/d/a;


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/t/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.netease.mpay.history"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/t/d/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/d/a;->d()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/a;
    .locals 2

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/t/d/a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/t/d/a;->f:Lcom/netease/mpay/oversea/t/d/a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/t/d/a;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/t/d/a;->f:Lcom/netease/mpay/oversea/t/d/a;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v1, v1, Lcom/netease/mpay/oversea/t/f/g/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/netease/mpay/oversea/t/d/a;->f:Lcom/netease/mpay/oversea/t/d/a;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/d/a;->f()V

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/t/d/a;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/t/d/a;->f:Lcom/netease/mpay/oversea/t/d/a;

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/mpay/oversea/t/d/a;->f:Lcom/netease/mpay/oversea/t/d/a;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/d/a;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 11
    sget-object p0, Lcom/netease/mpay/oversea/t/d/a;->f:Lcom/netease/mpay/oversea/t/d/a;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/d/a;->d()V

    .line 13
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget-object p0, Lcom/netease/mpay/oversea/t/d/a;->f:Lcom/netease/mpay/oversea/t/d/a;

    return-object p0

    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 3

    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 20
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/d/a;->d(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/t/d/b;

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/t/d/b;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 25
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/d/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/t/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 29
    :cond_0
    iget-boolean v1, p1, Lcom/netease/mpay/oversea/t/c/f;->o:Z

    if-eqz v1, :cond_1

    .line 30
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/d/b;->a(Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object p1

    .line 31
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/d/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/t/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/r/f;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/netease/mpay/oversea/t/d/b;)V
    .locals 3

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 39
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/d/a;->d(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 41
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/d/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/t/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/d/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/t/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Z
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

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/t/d/a;->d(Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/t/d/c/a;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized b(Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "QuickLogin[delete]:enter"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuickLogin[delete]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/t/d/a;->d(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t/d/b;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/t/d/a;->a(Ljava/lang/String;)Z

    .line 13
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/r/f;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/t/d/b;

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, v1, Lcom/netease/mpay/oversea/t/d/b;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public d()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/netease/mpay/oversea/t/d/c/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-super {p0}, Lcom/netease/mpay/oversea/t/d/c/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/netease/mpay/oversea/t/d/b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v2

    .line 5
    iget-object v3, v2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->b(I)V

    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/t/d/b;

    return-object p1
.end method

.method public declared-synchronized e()Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/t/d/b;

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean v2, v2, Lcom/netease/mpay/oversea/t/d/b;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/a;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method
