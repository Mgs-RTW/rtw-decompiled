.class public Lcom/netease/mpay/oversea/h/i$f;
.super Ljava/lang/Object;
.source "ServerApiTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/netease/mpay/oversea/t/b;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/app/Activity;

.field protected d:Ljava/lang/String;

.field private e:Lcom/netease/mpay/oversea/t/c/c;

.field public f:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h/i$f;->f:Z

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i$f;->c:Landroid/app/Activity;

    .line 6
    iput-object p2, p0, Lcom/netease/mpay/oversea/h/i$f;->d:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i$f;->b:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object p2, p0, Lcom/netease/mpay/oversea/h/i$f;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$f;->d:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/t/c/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/h/i$f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i$f;->e:Lcom/netease/mpay/oversea/t/c/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/t/c/c;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/t/c/c;-><init>()V

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchDevice--> local devid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isFirstOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/e;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 9
    iget-object v2, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/e;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/f;->C()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    :cond_2
    new-instance v2, Lcom/netease/mpay/oversea/h/g;

    iget-object v3, p0, Lcom/netease/mpay/oversea/h/i$f;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/h/i$f;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance v3, Lcom/netease/mpay/oversea/l/e/a;

    invoke-direct {v3}, Lcom/netease/mpay/oversea/l/e/a;-><init>()V

    .line 11
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/h/k/c;

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchDevice--> network devid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 13
    iget-object v2, v2, Lcom/netease/mpay/oversea/h/k/c;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    .line 14
    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/t/f/b;->a(Lcom/netease/mpay/oversea/t/c/c;)V

    .line 16
    :cond_3
    iput-object v1, p0, Lcom/netease/mpay/oversea/h/i$f;->e:Lcom/netease/mpay/oversea/t/c/c;

    .line 18
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchDevice--> devid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i$f;->e:Lcom/netease/mpay/oversea/t/c/c;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$f;->e:Lcom/netease/mpay/oversea/t/c/c;

    return-object v0

    :catchall_0
    move-exception v1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
