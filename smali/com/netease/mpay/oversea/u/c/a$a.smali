.class Lcom/netease/mpay/oversea/u/c/a$a;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "BindView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/n/i/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/mpay/oversea/u/c/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/a;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    iput-object p5, p0, Lcom/netease/mpay/oversea/u/c/a$a;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->l(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->n(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->p(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    .line 18
    invoke-static {}, Lcom/netease/mpay/oversea/u/c/a;->h()Lcom/netease/mpay/oversea/n/h;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    .line 19
    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->o(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n/i/b/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->a(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->b(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->m(Lcom/netease/mpay/oversea/u/c/a;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/e;)V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->w(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->F(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->V(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->Q(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->b()Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Lcom/netease/mpay/oversea/ui/z/e;)V

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->W(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/u/c/a;->b(Lcom/netease/mpay/oversea/u/c/a;Lcom/netease/mpay/oversea/t/c/g;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->X(Lcom/netease/mpay/oversea/u/c/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->c(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->d(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->m(Lcom/netease/mpay/oversea/u/c/a;)V

    .line 11
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->f(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    .line 14
    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->e(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->g(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->h(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->i(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/u/c/a$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/u/c/a$a$a;-><init>(Lcom/netease/mpay/oversea/u/c/a$a;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->q(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->r(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->t(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/u/c/a;->h()Lcom/netease/mpay/oversea/n/h;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$a;->e:Lcom/netease/mpay/oversea/u/c/a;

    .line 13
    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->s(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/u/c/a$a;->a(Lcom/netease/mpay/oversea/n/i/b/e;)V

    return-void
.end method
