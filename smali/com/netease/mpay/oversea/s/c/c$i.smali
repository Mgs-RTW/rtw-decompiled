.class Lcom/netease/mpay/oversea/s/c/c$i;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "SecurityInputCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/c;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/s/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/s/c/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/c;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->c0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->d0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->g0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 11
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/c;->e0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->f0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/s/a/f;)V
    .locals 3

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->n0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/s/c/c;->a(Lcom/netease/mpay/oversea/s/c/c;Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f;

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->o0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->p0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/s/c/b;->a(Lcom/netease/mpay/oversea/ui/z/e;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/s/c/c;->a(Lcom/netease/mpay/oversea/s/c/c;Lcom/netease/mpay/oversea/ui/z/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->T(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->U(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->X(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 5
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/c;->V(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->W(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 7
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
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->Y(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->Z(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->a0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/s/c/c$i$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/s/c/c$i$a;-><init>(Lcom/netease/mpay/oversea/s/c/c$i;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->h0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->i0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->l0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 11
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/c;->j0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$i;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->k0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/s/a/f;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s/c/c$i;->a(Lcom/netease/mpay/oversea/s/a/f;)V

    return-void
.end method
