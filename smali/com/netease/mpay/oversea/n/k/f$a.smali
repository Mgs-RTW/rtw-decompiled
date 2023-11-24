.class Lcom/netease/mpay/oversea/n/k/f$a;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/n/i/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/h/e;

.field final synthetic e:Lcom/netease/mpay/oversea/n/k/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/k/f;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iput-object p5, p0, Lcom/netease/mpay/oversea/n/k/f$a;->d:Lcom/netease/mpay/oversea/h/e;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v2}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v2}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceTokenVerifyDone(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    .line 7
    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 8
    invoke-virtual/range {v4 .. v10}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v3, :cond_2

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->b(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iget v3, p1, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    iput v3, v0, Lcom/netease/mpay/oversea/t/c/f;->n:I

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/c;->d()V

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iput-object v3, p1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v1, 0x1

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->c(Lcom/netease/mpay/oversea/n/k/f;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v3}, Lcom/netease/mpay/oversea/n/k/f;->d(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v2}, Lcom/netease/mpay/oversea/n/k/f;->b(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 30
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->e(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1, v1}, Lcom/netease/mpay/oversea/ui/a0/a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    goto :goto_1

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->e(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, p1, v1}, Lcom/netease/mpay/oversea/ui/a0/a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/k/f$a;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n/k/f$a;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    .line 60
    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/16 v6, 0x64

    const/4 v7, 0x0

    const-string v4, ""

    .line 61
    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 65
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/c;->c()V

    .line 66
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/a0/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 7

    .line 33
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object p1, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    if-eq p1, v1, :cond_1

    .line 38
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 40
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/c;->d()V

    .line 41
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v1, p1, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    if-eqz v1, :cond_4

    .line 42
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/k/f;->c(Lcom/netease/mpay/oversea/n/k/f;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/r/f;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 44
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v2}, Lcom/netease/mpay/oversea/n/k/f;->f(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/k/f;->b(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 45
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v1, p1, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/k/f;->e(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2, v0}, Lcom/netease/mpay/oversea/ui/a0/a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/n/k/f$a$b;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/n/k/f$a$b;-><init>(Lcom/netease/mpay/oversea/n/k/f$a;Lcom/netease/mpay/oversea/n/i/b/d;)V

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/o$f;)V

    goto :goto_0

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v1, p1, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/k/f;->e(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2, v0}, Lcom/netease/mpay/oversea/ui/a0/a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    .line 53
    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/4 v7, 0x0

    const-string v4, ""

    move v6, p1

    .line 54
    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 58
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/c;->b()V

    .line 59
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 8

    .line 61
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    .line 63
    invoke-static {v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    if-eqz p1, :cond_0

    .line 64
    iget v0, p1, Lcom/netease/mpay/oversea/h/c;->a:I

    move v6, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    const/16 v6, 0xa

    :goto_0
    const/4 v7, 0x0

    const-string v4, ""

    .line 65
    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 69
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/c;->b()V

    .line 70
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f$a;->e:Lcom/netease/mpay/oversea/n/k/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/a0/a;->b(Lcom/netease/mpay/oversea/h/c;)V

    :cond_2
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 2
    iget v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/c;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->C:Lcom/netease/mpay/oversea/n/h;

    new-instance v4, Lcom/netease/mpay/oversea/n/k/f$a$a;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/oversea/n/k/f$a$a;-><init>(Lcom/netease/mpay/oversea/n/k/f$a;Lcom/netease/mpay/oversea/n/i/b/d;)V

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    const/4 p1, 0x1

    .line 25
    invoke-virtual {v2, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    .line 26
    invoke-static {v0, v1, p1}, Lcom/netease/mpay/oversea/a;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n/k/f$a;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/n/k/f$a;->b(Lcom/netease/mpay/oversea/n/i/b/d;)V

    return-void
.end method
