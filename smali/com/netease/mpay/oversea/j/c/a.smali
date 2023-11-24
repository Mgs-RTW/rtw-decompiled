.class public Lcom/netease/mpay/oversea/j/c/a;
.super Lcom/netease/mpay/oversea/h/i;
.source "EmailSendCodeTask.java"


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

.field private o:Ljava/lang/String;

.field private p:Lcom/netease/mpay/oversea/n/h;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;ZLcom/netease/mpay/oversea/h/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/n/h;",
            "Z",
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
    iput-object p2, p0, Lcom/netease/mpay/oversea/j/c/a;->l:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/j/c/a;->p:Lcom/netease/mpay/oversea/n/h;

    .line 4
    iput-boolean p4, p0, Lcom/netease/mpay/oversea/j/c/a;->q:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/j/c/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j/c/d/a;->f()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/j/c/a;->m:I

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/c/a;->o:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/j/c/a;->n:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/j/c/a;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;
    .locals 8
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
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/j/c/a;->q:Z

    iput-boolean v0, p1, Lcom/netease/mpay/oversea/h/i$f;->f:Z

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/h/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v3, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance p1, Lcom/netease/mpay/oversea/j/c/d/a;

    iget-object v3, p0, Lcom/netease/mpay/oversea/j/c/a;->l:Ljava/lang/String;

    iget v4, p0, Lcom/netease/mpay/oversea/j/c/a;->m:I

    iget-object v5, p0, Lcom/netease/mpay/oversea/j/c/a;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/j/c/a;->n:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/j/c/a;->p:Lcom/netease/mpay/oversea/n/h;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/oversea/j/c/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    return-object p1
.end method

.method public k()Lcom/netease/mpay/oversea/j/c/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j/c/d/a;->e()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/j/c/a;->m:I

    return-object p0
.end method

.method public l()Lcom/netease/mpay/oversea/j/c/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j/c/d/a;->g()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/j/c/a;->m:I

    return-object p0
.end method
