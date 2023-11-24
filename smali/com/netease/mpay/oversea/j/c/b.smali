.class public Lcom/netease/mpay/oversea/j/c/b;
.super Lcom/netease/mpay/oversea/h/i;
.source "EmailUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/h/k/c;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Lcom/netease/mpay/oversea/n/h;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/n/h;",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/h/k/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/j/c/b;->n:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/j/c/b;->l:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/j/c/b;->o:Lcom/netease/mpay/oversea/n/h;

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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/j/c/b;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/h/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v3, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance p1, Lcom/netease/mpay/oversea/j/c/d/b;

    iget-object v3, p0, Lcom/netease/mpay/oversea/j/c/b;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/j/c/b;->l:Ljava/lang/String;

    iget v5, p0, Lcom/netease/mpay/oversea/j/c/b;->m:I

    iget-object v6, p0, Lcom/netease/mpay/oversea/j/c/b;->o:Lcom/netease/mpay/oversea/n/h;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j/c/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/n/h;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    return-object p1
.end method

.method public k()Lcom/netease/mpay/oversea/j/c/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j/c/d/b;->f()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/j/c/b;->m:I

    return-object p0
.end method

.method public l()Lcom/netease/mpay/oversea/j/c/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j/c/d/b;->g()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/j/c/b;->m:I

    return-object p0
.end method
