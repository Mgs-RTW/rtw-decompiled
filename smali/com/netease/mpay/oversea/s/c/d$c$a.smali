.class Lcom/netease/mpay/oversea/s/c/d$c$a;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "SecurityInputEmailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/d$c;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/h/k/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/s/c/d$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/d$c;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->t(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->u(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->y(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v2, v2, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 13
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/d;->v(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 14
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->x(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/k/c;)V
    .locals 0

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->E(Lcom/netease/mpay/oversea/s/c/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->k(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->m(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->p(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v2, v2, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 6
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/d;->n(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 7
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->o(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->q(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->r(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->s(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/s/c/d$c$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/s/c/d$c$a$a;-><init>(Lcom/netease/mpay/oversea/s/c/d$c$a;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->z(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->A(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->D(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object v2, v2, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 13
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/d;->B(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c$a;->d:Lcom/netease/mpay/oversea/s/c/d$c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 14
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->C(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s/c/d$c$a;->a(Lcom/netease/mpay/oversea/h/k/c;)V

    return-void
.end method
