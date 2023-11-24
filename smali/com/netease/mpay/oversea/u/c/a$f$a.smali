.class Lcom/netease/mpay/oversea/u/c/a$f$a;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "BindView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/a$f;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/u/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/u/c/a$f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/a$f;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->R(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/u/c/a;->h()Lcom/netease/mpay/oversea/n/h;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    .line 21
    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->P(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/u/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->J(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    .line 2
    invoke-static {v1}, Lcom/netease/mpay/oversea/u/c/a;->K(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__unbind_success:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->G(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/u/a/b;->c()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    .line 8
    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->G(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/r/f;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/i/b/e;

    move-result-object p1

    .line 9
    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/e;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u/c/a$f;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u/c/a$f;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v1}, Lcom/netease/mpay/oversea/u/c/a;->G(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/e;)V

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->L(Lcom/netease/mpay/oversea/u/c/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 14
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->N(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    .line 17
    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->M(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->O(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/u/c/a$f$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/u/c/a$f$a$a;-><init>(Lcom/netease/mpay/oversea/u/c/a$f$a;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->T(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/u/c/a;->h()Lcom/netease/mpay/oversea/n/h;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$f$a;->d:Lcom/netease/mpay/oversea/u/c/a$f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/u/c/a$f;->b:Lcom/netease/mpay/oversea/u/c/a;

    .line 8
    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->S(Lcom/netease/mpay/oversea/u/c/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/u/a/b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/u/c/a$f$a;->a(Lcom/netease/mpay/oversea/u/a/b;)V

    return-void
.end method
