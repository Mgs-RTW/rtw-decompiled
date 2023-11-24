.class Lcom/netease/mpay/oversea/u/c/b$c;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/b;->a(Landroid/view/View;)V
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
.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/netease/mpay/oversea/u/c/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/b;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    iput-object p5, p0, Lcom/netease/mpay/oversea/u/c/b$c;->d:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->h(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->i(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->k(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    .line 17
    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->j(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n/i/b/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->n(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->w(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->H(Lcom/netease/mpay/oversea/u/c/b;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v1}, Lcom/netease/mpay/oversea/u/c/b;->P(Lcom/netease/mpay/oversea/u/c/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/e;)V

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->Q(Lcom/netease/mpay/oversea/u/c/b;)V

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/u/c/b;->a(Lcom/netease/mpay/oversea/u/c/b;Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->R(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->S(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->e(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->d(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->f(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->g(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->H(Lcom/netease/mpay/oversea/u/c/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->l(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->m(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->p(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$c;->e:Lcom/netease/mpay/oversea/u/c/b;

    .line 8
    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->o(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/u/c/b$c;->a(Lcom/netease/mpay/oversea/n/i/b/e;)V

    return-void
.end method
