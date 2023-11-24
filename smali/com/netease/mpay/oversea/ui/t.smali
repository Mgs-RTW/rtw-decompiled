.class public Lcom/netease/mpay/oversea/ui/t;
.super Lcom/netease/mpay/oversea/ui/a;
.source "WebVerifyHandler.java"


# instance fields
.field protected f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

.field protected g:Lcom/netease/mpay/oversea/ui/v;

.field private h:Ljava/lang/String;

.field private i:Lcom/netease/mpay/oversea/ui/u;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/t;)Lcom/netease/mpay/oversea/ui/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/t;->i:Lcom/netease/mpay/oversea/ui/u;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x20

    .line 4
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/a;->b(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;->a()Lcom/netease/mpay/oversea/ui/s$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/s$a;->a(Lcom/netease/mpay/oversea/h/c;)V

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/t;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/t;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/t;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;->c:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;->c:Lcom/netease/mpay/oversea/n/h;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v1, :cond_0

    .line 29
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;->a()Lcom/netease/mpay/oversea/ui/s$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/s$a;->a(Ljava/lang/String;)V

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/t;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;->a()Lcom/netease/mpay/oversea/ui/s$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/s$a;->a()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/t;->a(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/ui/u;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/ui/u;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/t;->i:Lcom/netease/mpay/oversea/ui/u;

    .line 39
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/u;->b(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/t;->i:Lcom/netease/mpay/oversea/ui/u;

    new-instance v0, Lcom/netease/mpay/oversea/ui/t$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/t$b;-><init>(Lcom/netease/mpay/oversea/ui/t;)V

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u$e;)Lcom/netease/mpay/oversea/ui/u;

    .line 68
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/t;->i:Lcom/netease/mpay/oversea/ui/u;

    if-eqz p1, :cond_2

    .line 69
    sget v0, Lcom/netease/mpay/oversea/ui/R$layout;->netease_mpay_oversea__web:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/ui/u;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/t;->i:Lcom/netease/mpay/oversea/ui/u;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/u;->k()V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/t;->l()V

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/t;->l()V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 20
    :try_start_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/app/Activity;)V

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/t;->g:Lcom/netease/mpay/oversea/ui/v;

    if-nez p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/ui/t$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/t$a;-><init>(Lcom/netease/mpay/oversea/ui/t;)V

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/v;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/v$b;)Lcom/netease/mpay/oversea/ui/v;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/t;->g:Lcom/netease/mpay/oversea/ui/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method protected a(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "data"

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    if-nez v1, :cond_0

    .line 7
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    .line 13
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/t;->l()V

    return v0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/t;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/t;->h:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/t;->l()V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->i:Lcom/netease/mpay/oversea/ui/u;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/u;->g()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->g:Lcom/netease/mpay/oversea/ui/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/v;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->g:Lcom/netease/mpay/oversea/ui/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;->b:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
