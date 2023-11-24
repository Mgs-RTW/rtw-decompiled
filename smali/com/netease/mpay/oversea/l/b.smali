.class public Lcom/netease/mpay/oversea/l/b;
.super Lcom/netease/mpay/oversea/h/i;
.source "FetchDeviceTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/h/k/c;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/h/k/c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/l/b;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/h/g;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance p1, Lcom/netease/mpay/oversea/l/e/a;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/l/e/a;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    .line 6
    new-instance v1, Lcom/netease/mpay/oversea/t/c/c;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/t/c/c;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/oversea/t/c/c;->b:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/k/c;->a:Ljava/lang/String;

    iput-object p1, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/t/f/b;->a(Lcom/netease/mpay/oversea/t/c/c;)V

    .line 11
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/trackers/b;->f(Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/netease/mpay/oversea/h/k/c;

    iget-object v0, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/h/k/c;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
