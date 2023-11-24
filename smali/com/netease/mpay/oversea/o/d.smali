.class public Lcom/netease/mpay/oversea/o/d;
.super Lcom/netease/mpay/oversea/ui/a;
.source "LVUHandler.java"


# instance fields
.field protected f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private g:Lcom/netease/mpay/oversea/ui/z/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/o/d;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/d;)Landroid/app/Activity;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/o/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->f()Lcom/netease/mpay/oversea/n/i/b/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    .line 15
    iget-object v0, v0, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    .line 18
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 20
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 21
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 27
    :goto_0
    new-instance v2, Lcom/netease/mpay/oversea/o/f/a;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v4, Lcom/netease/mpay/oversea/o/d$a;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/oversea/o/d$a;-><init>(Lcom/netease/mpay/oversea/o/d;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/netease/mpay/oversea/o/f/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 49
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/o/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/o/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/netease/mpay/oversea/o/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/d;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/ErrorCode;->ERR_NETWORK:I

    const/4 v1, 0x0

    const/16 v2, 0x12c

    invoke-interface {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/a;->a(IILandroid/content/Intent;)V

    .line 51
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/ui/z/b;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/z/b;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "NAV_CONTENT"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__lvu_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    .line 9
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/o/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/b;->a(Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/b;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/b;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->c()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netease/mpay/oversea/ui/z/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

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

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/mpay/oversea/ui/a;->e()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d;->g:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->f()V

    :cond_0
    return-void
.end method
