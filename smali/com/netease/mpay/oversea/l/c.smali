.class public Lcom/netease/mpay/oversea/l/c;
.super Lcom/netease/mpay/oversea/h/i;
.source "InitConfigTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/l/e/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/netease/mpay/oversea/h/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/l/e/d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/h/i;->h:Z

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/h/i;->h()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/f;)Lcom/netease/mpay/oversea/h/i;

    :goto_0
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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/l/c;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/l/e/d;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/l/e/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/h/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance p1, Lcom/netease/mpay/oversea/l/e/c;

    invoke-direct {p1, v1}, Lcom/netease/mpay/oversea/l/e/c;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/l/e/d;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/l/e/d;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object v0

    iget-boolean v1, p1, Lcom/netease/mpay/oversea/l/e/d;->z:Z

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/m/b;->c(Z)V

    return-object p1
.end method
