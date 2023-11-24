.class public Lcom/netease/mpay/oversea/u/b/c;
.super Lcom/netease/mpay/oversea/h/i;
.source "UnBindTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/u/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/netease/mpay/oversea/t/c/g;

.field private o:Lcom/netease/mpay/oversea/t/c/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/n/k/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/t/c/g;",
            "Lcom/netease/mpay/oversea/n/k/g<",
            "Lcom/netease/mpay/oversea/u/a/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/f;)Lcom/netease/mpay/oversea/h/i;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/u/b/c;->l:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/u/b/c;->m:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/netease/mpay/oversea/u/b/c;->n:Lcom/netease/mpay/oversea/t/c/g;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/u/b/c;)Lcom/netease/mpay/oversea/t/c/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/u/b/c;->o:Lcom/netease/mpay/oversea/t/c/f;

    return-object p0
.end method

.method private a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/u/a/b;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->t:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/b/c;->n:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/d;->a()Lcom/netease/mpay/oversea/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d;->d()V

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/u/a/b;->c()Ljava/util/ArrayList;

    move-result-object v9

    .line 8
    new-instance v11, Lcom/netease/mpay/oversea/t/c/f$b;

    iget-object v3, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/mpay/oversea/t/c/f;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/u/a/b;->a()Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v7, p0, Lcom/netease/mpay/oversea/u/b/c;->n:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v2, v7, :cond_2

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    :cond_2
    move-object v7, v2

    .line 11
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/u/a/b;->b()Ljava/lang/String;

    move-result-object v8

    iget-boolean p2, v0, Lcom/netease/mpay/oversea/t/c/f;->o:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/netease/mpay/oversea/t/c/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    .line 12
    invoke-virtual {v11, v0}, Lcom/netease/mpay/oversea/t/c/f$b;->b(Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p2

    iget v2, v0, Lcom/netease/mpay/oversea/t/c/f;->m:I

    .line 13
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->a(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p2

    iget v2, v0, Lcom/netease/mpay/oversea/t/c/f;->n:I

    .line 14
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->c(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p2

    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/f;->q:Ljava/lang/String;

    .line 15
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p2

    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;

    .line 16
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p2

    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/f;->r:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p2

    iget v2, v0, Lcom/netease/mpay/oversea/t/c/f;->s:I

    .line 18
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->b(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p2

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/b/c;->n:Lcom/netease/mpay/oversea/t/c/g;

    .line 19
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/c/f$b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/b/c;->o:Lcom/netease/mpay/oversea/t/c/f;

    .line 21
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/r/f;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/i/b/e;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 24
    iget-object v3, p0, Lcom/netease/mpay/oversea/u/b/c;->o:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v4, v3, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p2, v4}, Lcom/netease/mpay/oversea/n/i/b/e;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    .line 25
    iget-object p2, p0, Lcom/netease/mpay/oversea/u/b/c;->o:Lcom/netease/mpay/oversea/t/c/f;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    if-nez p2, :cond_3

    .line 27
    :try_start_0
    new-instance p2, Lcom/netease/mpay/oversea/h/g;

    iget-object v3, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {p2, v3, v4, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance v3, Lcom/netease/mpay/oversea/n/i/a/i;

    .line 28
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-direct {v3, p1, v4, v5}, Lcom/netease/mpay/oversea/n/i/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2, v3}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/e;

    if-eqz p1, :cond_3

    .line 32
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/e;)V

    .line 33
    iget-object p2, p0, Lcom/netease/mpay/oversea/u/b/c;->o:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v0, p2, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/n/i/b/e;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/f;->M()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/netease/mpay/oversea/n/i/b/e;->b:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v1, :cond_3

    iget-object p2, p1, Lcom/netease/mpay/oversea/n/i/b/e;->b:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p2, v0, :cond_3

    .line 37
    iget-object p2, p0, Lcom/netease/mpay/oversea/u/b/c;->o:Lcom/netease/mpay/oversea/t/c/f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/i/b/e;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p2, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return v2
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/u/b/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/u/b/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    return-object p0
.end method

.method private f(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/u/a/b;
    .locals 5
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

    new-instance v1, Lcom/netease/mpay/oversea/u/a/a;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/b/c;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/u/b/c;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/u/b/c;->n:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v4

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/netease/mpay/oversea/u/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/u/a/b;

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/h/e<",
            "Lcom/netease/mpay/oversea/u/a/b;",
            ">;",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/u/a/b;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-boolean v0, p1, Lcom/netease/mpay/oversea/h/e;->a:Z

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/b/c;->o:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_1

    .line 40
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/b/c;->o:Lcom/netease/mpay/oversea/t/c/f;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/u/b/c$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/u/b/c$a;-><init>(Lcom/netease/mpay/oversea/u/b/c;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/o$f;)V

    .line 52
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V

    return-void
.end method

.method protected bridge synthetic d(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/u/b/c;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/u/a/b;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/u/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/u/b/c;->f(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/u/a/b;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/u/b/c;->a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/u/a/b;)Z

    move-result p1

    return-object v0
.end method
