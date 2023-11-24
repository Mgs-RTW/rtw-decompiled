.class public Lcom/netease/mpay/oversea/s/b/d;
.super Lcom/netease/mpay/oversea/h/i;
.source "SMVerifyTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/s/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/k/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/n/k/g<",
            "Lcom/netease/mpay/oversea/s/a/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 2
    iput-object p3, p0, Lcom/netease/mpay/oversea/s/b/d;->l:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/netease/mpay/oversea/s/b/d;->m:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/s/a/f;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 7
    new-instance p2, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    iget-object v0, p2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/s/b/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p2, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    .line 17
    new-instance v1, Lcom/netease/mpay/oversea/h/g;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance v2, Lcom/netease/mpay/oversea/n/i/a/i;

    iget-object v3, p2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4}, Lcom/netease/mpay/oversea/n/i/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/n/i/b/e;

    .line 19
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/i/b/e;->d:Ljava/lang/String;

    iput-object v1, p2, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    .line 20
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/i/b/e;->b:Ljava/util/ArrayList;

    iput-object v1, p2, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    .line 21
    iget-object v0, v0, Lcom/netease/mpay/oversea/n/i/b/e;->e:Ljava/lang/String;

    iput-object v0, p2, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/c/f$b;

    iget-object v2, p2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/oversea/t/c/f;->c:Ljava/lang/String;

    iget-object v5, p2, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    iget-object v6, p2, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v7, p2, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    iget-object v8, p2, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    iget-boolean v1, p2, Lcom/netease/mpay/oversea/t/c/f;->o:Z

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netease/mpay/oversea/t/c/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v1, p2, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/oversea/t/c/f;->q:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/t/c/f;->m:I

    .line 30
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->a(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/t/c/f;->s:I

    .line 31
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->b(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v1, p2, Lcom/netease/mpay/oversea/t/c/f;->n:I

    .line 32
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->c(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/oversea/t/c/f;->r:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/t/c/f$b;->b(Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/c/f$b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    .line 35
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    :cond_1
    return-void

    .line 36
    :cond_2
    new-instance p1, Lcom/netease/mpay/oversea/h/b;

    new-instance p2, Lcom/netease/mpay/oversea/h/c;

    const/16 v0, 0x2722

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/netease/mpay/oversea/h/b;-><init>(Lcom/netease/mpay/oversea/h/c;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/d;
    .locals 1

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/netease/mpay/oversea/s/b/d;->o:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/d;->p:Ljava/lang/String;

    const/4 p1, 0x5

    .line 6
    iput p1, p0, Lcom/netease/mpay/oversea/s/b/d;->n:I

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/d;->o:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/s/b/d;->p:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/s/b/d;->n:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/d;
    .locals 1

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/netease/mpay/oversea/s/b/d;->o:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/d;->p:Ljava/lang/String;

    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/netease/mpay/oversea/s/b/d;->n:I

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/d;->o:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/s/b/d;->p:Ljava/lang/String;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/s/b/d;->n:I

    return-object p0
.end method

.method protected bridge synthetic d(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s/b/d;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/s/a/f;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/s/a/f;
    .locals 10
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

    new-instance v1, Lcom/netease/mpay/oversea/s/a/e;

    iget v4, p0, Lcom/netease/mpay/oversea/s/b/d;->n:I

    iget-object v5, p0, Lcom/netease/mpay/oversea/s/b/d;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/s/b/d;->p:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v2

    iget-object v7, v2, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/oversea/s/b/d;->l:Ljava/lang/String;

    iget-object v9, p0, Lcom/netease/mpay/oversea/s/b/d;->m:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/netease/mpay/oversea/s/a/e;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/s/a/f;

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/s/b/d;->a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/s/a/f;)V

    return-object v0
.end method
