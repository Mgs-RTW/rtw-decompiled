.class public Lcom/netease/mpay/oversea/ui/x;
.super Lcom/netease/mpay/oversea/ui/l;
.source "WebViewLoginHandler.java"


# instance fields
.field protected h:Lcom/netease/mpay/oversea/ui/v;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/l;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/ui/l;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/m;
    .locals 7

    .line 1
    new-instance v6, Lcom/netease/mpay/oversea/ui/w;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v3

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/w;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    return-object v6
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/m;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$h;

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/l;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    :cond_0
    new-instance v3, Lcom/netease/mpay/oversea/thirdapi/g;

    sget-object v4, Lcom/netease/mpay/oversea/thirdapi/g$a;->a:Lcom/netease/mpay/oversea/thirdapi/g$a;

    .line 7
    invoke-direct {v3, v4, v0}, Lcom/netease/mpay/oversea/thirdapi/g;-><init>(Lcom/netease/mpay/oversea/thirdapi/g$a;Ljava/lang/Integer;)V

    .line 8
    invoke-virtual {p0, v3}, Lcom/netease/mpay/oversea/ui/l;->a(Lcom/netease/mpay/oversea/thirdapi/g;)Lcom/netease/mpay/oversea/h/c;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/l;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 10
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v2

    .line 11
    invoke-virtual {p1, v1, v2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    check-cast p1, Lcom/netease/mpay/oversea/ui/w;

    new-instance v1, Lcom/netease/mpay/oversea/ui/u;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/ui/u;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/u;)V

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    check-cast p1, Lcom/netease/mpay/oversea/ui/w;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__web:I

    new-instance v2, Lcom/netease/mpay/oversea/ui/x$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/x$a;-><init>(Lcom/netease/mpay/oversea/ui/x;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/netease/mpay/oversea/ui/w;->a(ILandroid/view/ViewGroup;Lcom/netease/mpay/oversea/ui/u$e;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 60
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    move-result p1

    if-nez p1, :cond_5

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$h;

    .line 62
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/l;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-nez v2, :cond_4

    .line 63
    sget-object v2, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    :cond_4
    new-instance v3, Lcom/netease/mpay/oversea/thirdapi/g;

    sget-object v4, Lcom/netease/mpay/oversea/thirdapi/g$a;->a:Lcom/netease/mpay/oversea/thirdapi/g$a;

    .line 65
    invoke-direct {v3, v4, v0}, Lcom/netease/mpay/oversea/thirdapi/g;-><init>(Lcom/netease/mpay/oversea/thirdapi/g$a;Ljava/lang/Integer;)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/netease/mpay/oversea/ui/l;->a(Lcom/netease/mpay/oversea/thirdapi/g;)Lcom/netease/mpay/oversea/h/c;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/l;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 68
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 69
    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_5
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/app/Activity;)V

    .line 71
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/x;->h:Lcom/netease/mpay/oversea/ui/v;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/x$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/ui/x$b;-><init>(Lcom/netease/mpay/oversea/ui/x;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/v;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/v$b;)Lcom/netease/mpay/oversea/ui/v;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/x;->h:Lcom/netease/mpay/oversea/ui/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 84
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/m;->a(Z)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->f()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->j()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/x;->k()V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/x;->h:Lcom/netease/mpay/oversea/ui/v;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/v;->b()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/x;->h:Lcom/netease/mpay/oversea/ui/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->k()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m;->l()V

    :cond_0
    return-void
.end method

.method protected k()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    return-void
.end method
