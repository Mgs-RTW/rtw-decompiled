.class Lcom/netease/mpay/oversea/s/c/c$j;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "SecurityInputCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/c;->h()V
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
.field final synthetic d:Lcom/netease/mpay/oversea/s/c/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/c;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->v0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->x0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->A0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 10
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/c;->y0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 11
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->z0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/k/c;)V
    .locals 1

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->G0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/netease/mpay/oversea/ui/z/e;->h:Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->q0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->r0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->t0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 5
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->s0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->u0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->B0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->C0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->F0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 6
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/c;->D0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$j;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 7
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->E0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s/c/c$j;->a(Lcom/netease/mpay/oversea/h/k/c;)V

    return-void
.end method
