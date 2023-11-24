.class public Lcom/netease/mpay/oversea/j/d/a/g;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "RegisterHome.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic B(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic C(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic D(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic E(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic F(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic G(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic H(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic I(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic J(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method private static synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    const/4 p0, 0x1

    .line 161
    invoke-static {p0}, Lcom/netease/mpay/oversea/f;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/a/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/a/g;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/j/d/a/g;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    if-eqz p3, :cond_1

    .line 162
    new-instance p2, Lcom/netease/mpay/oversea/t/b;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 165
    new-instance p3, Lcom/netease/mpay/oversea/j/c/a;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v6, Lcom/netease/mpay/oversea/j/d/a/g$c;

    invoke-direct {v6, p0, p1}, Lcom/netease/mpay/oversea/j/d/a/g$c;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;ZLcom/netease/mpay/oversea/h/h;)V

    iget-object p1, p2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    .line 181
    invoke-virtual {p3, p1, p2}, Lcom/netease/mpay/oversea/j/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/j/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 184
    new-instance p2, Lcom/netease/mpay/oversea/j/c/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v5, Lcom/netease/mpay/oversea/j/d/a/g$d;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/oversea/j/d/a/g$d;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/j/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;ZLcom/netease/mpay/oversea/h/h;)V

    .line 200
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j/c/a;->k()Lcom/netease/mpay/oversea/j/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/j/d/a/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/j/d/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic lambda$a2lQgFiWKl5vBG8wmpcxuyvrScE(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/j/d/a/g;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic w(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic x(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic y(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic z(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 4
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 5
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__hydra_email_register:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 8
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/g$e;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/j/d/a/g$e;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p3}, Lcom/netease/mpay/oversea/n/h;->c(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p3

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    .line 16
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    :cond_0
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 19
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/g$f;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/j/d/a/g$f;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 28
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/widget/EditText;

    const-string p2, "account"

    .line 30
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/ui/z/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 33
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/g$g;

    invoke-direct {p3, p0, v4}, Lcom/netease/mpay/oversea/j/d/a/g$g;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/g$h;

    invoke-direct {p3, p0, p2}, Lcom/netease/mpay/oversea/j/d/a/g$h;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Landroid/widget/ImageView;)V

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_password_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/widget/EditText;

    const-string p2, "pwd"

    .line 61
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/ui/z/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 64
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/g$i;

    invoke-direct {p3, p0, v5}, Lcom/netease/mpay/oversea/j/d/a/g$i;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/g$j;

    invoke-direct {p3, p0, p2}, Lcom/netease/mpay/oversea/j/d/a/g$j;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Landroid/widget/ImageView;)V

    invoke-virtual {v5, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_eye:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ToggleButton;

    .line 91
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/g$k;

    invoke-direct {p3, p0, v5}, Lcom/netease/mpay/oversea/j/d/a/g$k;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_check:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/widget/ToggleButton;

    .line 102
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 103
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p3

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    check-cast v1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/j/a;->j()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/netease/mpay/oversea/r/f;->c(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/l/e/d$f;

    move-result-object p3

    .line 104
    iget-object p3, p3, Lcom/netease/mpay/oversea/l/e/d$f;->j:Lcom/netease/mpay/oversea/l/e/h;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 105
    iget-object v2, p3, Lcom/netease/mpay/oversea/l/e/h;->a:Lcom/netease/mpay/oversea/l/e/e;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p3, :cond_2

    .line 106
    iget-object v1, p3, Lcom/netease/mpay/oversea/l/e/h;->b:Lcom/netease/mpay/oversea/l/e/e;

    :cond_2
    const-string p3, ""

    if-eqz v2, :cond_3

    .line 108
    iget-object v3, v2, Lcom/netease/mpay/oversea/l/e/e;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/netease/mpay/oversea/l/e/e;->a:Ljava/lang/String;

    move-object v8, v3

    goto :goto_1

    :cond_3
    move-object v8, p3

    :goto_1
    if-eqz v1, :cond_4

    .line 109
    iget-object v3, v1, Lcom/netease/mpay/oversea/l/e/e;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p3, v1, Lcom/netease/mpay/oversea/l/e/e;->a:Ljava/lang/String;

    :cond_4
    move-object v9, p3

    .line 111
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v3, 0x1

    if-eqz p3, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x4

    .line 112
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-virtual {v7, p3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    const/4 v6, 0x0

    goto :goto_3

    .line 117
    :cond_5
    sget-object p3, Lcom/netease/mpay/oversea/j/d/a/-$$Lambda$g$a2lQgFiWKl5vBG8wmpcxuyvrScE;->INSTANCE:Lcom/netease/mpay/oversea/j/d/a/-$$Lambda$g$a2lQgFiWKl5vBG8wmpcxuyvrScE;

    invoke-virtual {v7, p3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v6, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_policy:I

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v8, v11, v0

    aput-object v9, v11, v3

    invoke-static {p3, v6, v11}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 121
    iget-object v6, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__login_email_privacy_highlight:I

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 123
    :try_start_0
    new-instance v11, Lcom/netease/mpay/oversea/j/d/a/g$l;

    invoke-direct {v11, p0, v2}, Lcom/netease/mpay/oversea/j/d/a/g$l;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Lcom/netease/mpay/oversea/l/e/e;)V

    .line 132
    new-instance v2, Lcom/netease/mpay/oversea/j/d/a/g$m;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/oversea/j/d/a/g$m;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Lcom/netease/mpay/oversea/l/e/e;)V

    new-array v1, v10, [I

    aput v6, v1, v0

    aput v6, v1, v3

    new-array v6, v10, [Ljava/lang/String;

    aput-object v8, v6, v0

    aput-object v9, v6, v3

    new-array v10, v10, [Landroid/text/style/ClickableSpan;

    aput-object v11, v10, v0

    aput-object v2, v10, v3

    .line 141
    invoke-static {p3, v1, v6, v10}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;

    move-result-object v1

    .line 144
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 145
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 146
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v0, Lcom/netease/mpay/oversea/j/d/a/g$a;

    invoke-direct {v0, p0, v7}, Lcom/netease/mpay/oversea/j/d/a/g$a;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Landroid/widget/ToggleButton;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v6, 0x1

    .line 159
    :goto_3
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 160
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/g$b;

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/netease/mpay/oversea/j/d/a/g$b;-><init>(Lcom/netease/mpay/oversea/j/d/a/g;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/widget/ToggleButton;Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->c(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/c;->b()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->a()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
