.class public Lcom/netease/mpay/oversea/j/d/a/e;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "PasswordHome.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/a/e;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/j/d/a/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/a/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/j/c/a;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v7, Lcom/netease/mpay/oversea/j/d/a/e$f;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/j/d/a/e$f;-><init>(Lcom/netease/mpay/oversea/j/d/a/e;)V

    const/4 v6, 0x1

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/j/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;ZLcom/netease/mpay/oversea/h/h;)V

    .line 17
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/c/a;->l()Lcom/netease/mpay/oversea/j/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/j/d/a/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/j/d/a/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/j/d/a/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/j/d/a/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 4
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__hydra_email_password:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 6
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/e$a;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/j/d/a/e$a;-><init>(Lcom/netease/mpay/oversea/j/d/a/e;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 13
    new-instance p3, Lcom/netease/mpay/oversea/j/d/a/e$b;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/j/d/a/e$b;-><init>(Lcom/netease/mpay/oversea/j/d/a/e;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 21
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__flex_region:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/widget/o;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 p3, -0x2

    .line 25
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    :cond_0
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const-string p3, "account"

    .line 28
    invoke-virtual {p0, p3}, Lcom/netease/mpay/oversea/ui/z/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 31
    new-instance v0, Lcom/netease/mpay/oversea/j/d/a/e$c;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/j/d/a/e$c;-><init>(Lcom/netease/mpay/oversea/j/d/a/e;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    .line 37
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    new-instance v0, Lcom/netease/mpay/oversea/j/d/a/e$d;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/j/d/a/e$d;-><init>(Lcom/netease/mpay/oversea/j/d/a/e;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 60
    new-instance v0, Lcom/netease/mpay/oversea/j/d/a/e$e;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/j/d/a/e$e;-><init>(Lcom/netease/mpay/oversea/j/d/a/e;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->a()V

    const/4 v0, 0x1

    return v0
.end method
