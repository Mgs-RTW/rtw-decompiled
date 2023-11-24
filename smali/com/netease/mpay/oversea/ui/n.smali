.class public Lcom/netease/mpay/oversea/ui/n;
.super Lcom/netease/mpay/oversea/ui/m;
.source "PassportLogin.java"


# instance fields
.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V
    .locals 6

    .line 1
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/m;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 2
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/z/c;->b()Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/z/c;->b()Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/n;->r:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->q:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {p1, p0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Lcom/netease/mpay/oversea/ui/m;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/k/j;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/netease/mpay/oversea/k/e;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/k/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/netease/mpay/oversea/k/e;->b(Lcom/netease/mpay/oversea/k/g;)Lcom/netease/mpay/oversea/k/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->q:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->q:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/b;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event:dealApiLoginSuccess: state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/t/c/f;->k:Z

    if-nez v0, :cond_0

    const-string v0, "Event:API_BIND"

    .line 19
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v5, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 21
    iget-object v4, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v7, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 25
    invoke-virtual {v0, v2, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, v5

    .line 26
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->l:Lcom/netease/mpay/oversea/n/d;

    .line 30
    iput-object p1, v0, Lcom/netease/mpay/oversea/n/d;->l:Ljava/lang/String;

    .line 31
    iput-object p2, v0, Lcom/netease/mpay/oversea/n/d;->k:Ljava/lang/String;

    .line 32
    new-instance p1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->l:Lcom/netease/mpay/oversea/n/d;

    new-instance v6, Lcom/netease/mpay/oversea/ui/n$a;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/ui/n$a;-><init>(Lcom/netease/mpay/oversea/ui/n;)V

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 53
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "Event:parent dealApiLoginSuccess"

    .line 55
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/k/f;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 5

    .line 3
    instance-of p1, p2, Lcom/netease/mpay/oversea/k/a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 4
    check-cast p2, Lcom/netease/mpay/oversea/k/a;

    iget-object p1, p2, Lcom/netease/mpay/oversea/k/a;->d:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p1, v2, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->h()Lcom/netease/mpay/oversea/ui/a0/b;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    .line 8
    :cond_1
    iget-object p1, p2, Lcom/netease/mpay/oversea/k/a;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/k/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 10
    :cond_2
    instance-of p1, p2, Lcom/netease/mpay/oversea/k/i;

    if-eqz p1, :cond_5

    .line 11
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object p1

    .line 12
    check-cast p2, Lcom/netease/mpay/oversea/k/i;

    iget-object p2, p2, Lcom/netease/mpay/oversea/k/i;->d:Lcom/netease/mpay/oversea/n/i/b/d;

    .line 13
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    if-nez v2, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/m;->h()Lcom/netease/mpay/oversea/ui/a0/b;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v4, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v3, v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-interface {v2, p1, p2, v1}, Lcom/netease/mpay/oversea/ui/a0/a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return v0

    :cond_5
    return v1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/k/f;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/n;->a(Lcom/netease/mpay/oversea/k/f;Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    return p1
.end method

.method protected g()Lcom/netease/mpay/oversea/thirdapi/d;
    .locals 5

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/x;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->q:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->a:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/n;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/thirdapi/x;-><init>(Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->q:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->q:Lcom/netease/mpay/oversea/ui/z/c;

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/ui/z/b;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->q:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
