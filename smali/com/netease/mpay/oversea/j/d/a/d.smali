.class public Lcom/netease/mpay/oversea/j/d/a/d;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "EmailVerifyCode.java"


# instance fields
.field private l:Landroid/os/CountDownTimer;

.field private m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/a/d;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/j/d/a/d;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/a/d;ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/j/d/a/d;->b(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    if-eqz p3, :cond_0

    .line 123
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 124
    new-instance p3, Lcom/netease/mpay/oversea/j/c/c;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v6, Lcom/netease/mpay/oversea/j/d/a/d$k;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/j/d/a/d$k;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;)V

    move-object v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j/c/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/h;)V

    .line 141
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/j/c/c;->k()Lcom/netease/mpay/oversea/j/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 144
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    check-cast p3, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/j/a;->k()Ljava/lang/String;

    move-result-object p3

    .line 145
    new-instance v6, Lcom/netease/mpay/oversea/j/c/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v5, Lcom/netease/mpay/oversea/j/d/a/d$a;

    invoke-direct {v5, p0, p1, p3}, Lcom/netease/mpay/oversea/j/d/a/d$a;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/j/c/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/h;)V

    .line 159
    invoke-virtual {v6, p3}, Lcom/netease/mpay/oversea/j/c/c;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/j/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2, p4}, Lcom/netease/mpay/oversea/j/d/a/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 93
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 94
    new-instance p1, Lcom/netease/mpay/oversea/j/c/a;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v6, Lcom/netease/mpay/oversea/j/d/a/d$i;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/j/d/a/d$i;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;)V

    const/4 v5, 0x1

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;ZLcom/netease/mpay/oversea/h/h;)V

    .line 106
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j/c/a;->l()Lcom/netease/mpay/oversea/j/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 109
    new-instance p1, Lcom/netease/mpay/oversea/j/c/a;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v6, Lcom/netease/mpay/oversea/j/d/a/d$j;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/j/d/a/d$j;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;ZLcom/netease/mpay/oversea/h/h;)V

    .line 121
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j/c/a;->k()Lcom/netease/mpay/oversea/j/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method private b(ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/j/d/a/d;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/j/d/a/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method private h()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/d;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/j/d/a/d$b;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/j/d/a/d$b;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;JJ)V

    .line 20
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/d;->l:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/d;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/ui/z/e;->h:Z

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/j/d/a/d;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/j/d/a/d;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/j/d/a/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/j/d/a/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/j/d/a/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/j/d/a/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/j/d/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/j/d/a/d;->h()V

    return-void
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/j/d/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/j/d/a/d;->i()V

    return-void
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/j/d/a/d;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 4
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    const-string v0, "hydra_email_password_reset"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 6
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p3}, Lcom/netease/mpay/oversea/n/h;->c(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v5

    .line 7
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    const-string v0, "hydra_email_register"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 8
    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__hydra_email_verify:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 9
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 10
    new-instance v0, Lcom/netease/mpay/oversea/j/d/a/d$c;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/j/d/a/d$c;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 19
    new-instance v0, Lcom/netease/mpay/oversea/j/d/a/d$d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/j/d/a/d$d;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_verify_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_0

    move-object p3, v4

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v4}, Lcom/netease/mpay/oversea/h/m/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_send_code_tips:I

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p3, v7, v1

    invoke-static {v0, v2, v7}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__login_popup_text_highlight:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :try_start_0
    new-array v7, v3, [I

    aput v2, v7, v1

    new-array v2, v3, [Ljava/lang/String;

    aput-object p3, v2, v1

    .line 39
    invoke-static {v0, v7, v2}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;[I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p3

    .line 40
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 42
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_1
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/widget/EditText;

    .line 46
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 49
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/d$e;

    invoke-direct {p3, p0, v3}, Lcom/netease/mpay/oversea/j/d/a/d$e;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p3, 0x8

    .line 55
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/d$f;

    invoke-direct {p3, p0, p2}, Lcom/netease/mpay/oversea/j/d/a/d$f;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;Landroid/widget/ImageView;)V

    invoke-virtual {v3, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__code_retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/j/d/a/d;->m:Landroid/widget/TextView;

    .line 77
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/d$g;

    invoke-direct {p3, p0, v6, v4}, Lcom/netease/mpay/oversea/j/d/a/d$g;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;ZLjava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-direct {p0}, Lcom/netease/mpay/oversea/j/d/a/d;->h()V

    .line 84
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 86
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_verify_bind:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_2

    .line 88
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__verify_email:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 90
    :cond_2
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_verify_login:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_2
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/d$h;

    move-object v1, p3

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j/d/a/d$h;-><init>(Lcom/netease/mpay/oversea/j/d/a/d;Landroid/widget/EditText;Ljava/lang/String;ZZ)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->a()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/thirdapi/h;->onCancel()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
