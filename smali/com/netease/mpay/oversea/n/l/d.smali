.class public Lcom/netease/mpay/oversea/n/l/d;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "LoginHome.java"


# instance fields
.field private l:Lcom/netease/mpay/oversea/t/c/g;

.field private m:Lcom/netease/mpay/oversea/ui/h$g;

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/l/d;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n/l/d;)Lcom/netease/mpay/oversea/ui/h$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/l/d;->m:Lcom/netease/mpay/oversea/ui/h$g;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/n/l/d;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/n/l/d;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/n/l/d;)Lcom/netease/mpay/oversea/t/c/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/l/d;->l:Lcom/netease/mpay/oversea/t/c/g;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/n/l/d;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/n/l/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    instance-of v1, v0, Lcom/netease/mpay/oversea/MpayActivity;

    const-string v2, "channel_login"

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/MpayActivity;->setPageName(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 2
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_login_home:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/ui/h$h;

    sget-object p3, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p2, p3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/d;->m:Lcom/netease/mpay/oversea/ui/h$g;

    .line 4
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/n/l/d;->a(Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 10

    .line 5
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/oversea/r/d;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    new-instance v3, Lcom/netease/mpay/oversea/n/l/d$a;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/n/l/d$a;-><init>(Lcom/netease/mpay/oversea/n/l/d;)V

    .line 15
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/f;->q()Ljava/util/ArrayList;

    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/n/l/d;->i()Z

    move-result v4

    .line 28
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/n/l/d;->h()I

    move-result v5

    .line 29
    iget-object v6, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v7, p0, Lcom/netease/mpay/oversea/ui/z/a;->a:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v6, v7, v3, v8, v4}, Lcom/netease/mpay/oversea/ui/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZ)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v3, :cond_3

    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 36
    new-instance v6, Lcom/netease/mpay/oversea/ui/y/b;

    iget-object v7, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v9, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v9, v9, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-direct {v6, v7, v4, v0, v9}, Lcom/netease/mpay/oversea/ui/y/b;-><init>(Landroid/content/Context;ZLjava/util/ArrayList;Lcom/netease/mpay/oversea/ui/e$c;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    .line 39
    invoke-virtual {v6, v0, p1, v5, v3}, Lcom/netease/mpay/oversea/ui/y/b;->a(ILandroid/view/ViewGroup;II)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_4

    .line 41
    iget-object v3, p0, Lcom/netease/mpay/oversea/n/l/d;->m:Lcom/netease/mpay/oversea/ui/h$g;

    invoke-interface {v0, v3}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_login_last_type:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 52
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const-string v3, "netease_mpay_oversea__channel_item_anchor_x"

    .line 55
    invoke-static {v3}, Lcom/netease/mpay/oversea/f;->a(Ljava/lang/String;)I

    move-result v3

    const-string v4, "netease_mpay_oversea__channel_item_anchor_y"

    .line 56
    invoke-static {v4}, Lcom/netease/mpay/oversea/f;->a(Ljava/lang/String;)I

    move-result v4

    .line 57
    invoke-virtual {v0, v3, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 58
    iget-object v3, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    invoke-virtual {p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->a:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/d;->l:Lcom/netease/mpay/oversea/t/c/g;

    .line 60
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->x()Lcom/netease/mpay/oversea/l/e/d$h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/l/e/d$h;->a:Z

    if-eqz v0, :cond_a

    .line 61
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->a:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/d/a;->e()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/d/a;->c()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 65
    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->K:Lcom/netease/mpay/oversea/t/c/g;

    invoke-static {v0, v1, v8}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/t/c/g;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v0

    .line 66
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_login_last_text:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    sget v4, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_login_last_icon:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    .line 69
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v5, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login:I

    invoke-static {v4, v5}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 72
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_8
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    if-eqz p1, :cond_10

    .line 75
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iput-object v1, p0, Lcom/netease/mpay/oversea/n/l/d;->l:Lcom/netease/mpay/oversea/t/c/g;

    goto/16 :goto_5

    .line 77
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 94
    :cond_a
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/d;->l:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v0, :cond_f

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v3, v0, :cond_f

    .line 95
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/mpay/oversea/n/l/d;->l:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/netease/mpay/oversea/r/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 96
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/mpay/oversea/n/l/d;->l:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_c
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/d;->l:Lcom/netease/mpay/oversea/t/c/g;

    invoke-static {v0, v1, v8}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/t/c/g;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v0

    .line 101
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_login_last_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_login_last_icon:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 104
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_channel_last_login:I

    invoke-static {v3, v4}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    if-eqz p1, :cond_e

    .line 106
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_e
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 108
    :cond_f
    :goto_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    if-eqz p1, :cond_11

    .line 123
    new-instance v0, Lcom/netease/mpay/oversea/n/l/d$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/n/l/d$b;-><init>(Lcom/netease/mpay/oversea/n/l/d;)V

    .line 132
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Z)V

    if-nez p1, :cond_2

    .line 136
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->x()Lcom/netease/mpay/oversea/l/e/d$h;

    move-result-object p1

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/l/e/d$h;->a:Z

    if-eqz p1, :cond_1

    .line 137
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->a:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/d/a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/d;->n:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/d;->j()V

    :cond_2
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "channel_login"

    return-object v0
.end method

.method public d()Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/d;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/n/l/d;->m:Lcom/netease/mpay/oversea/ui/h$g;

    invoke-interface {v0, v2}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    :cond_1
    return v1
.end method

.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$integer;->netease_mpay_oversea__channel_login_anchor_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x51

    return v0

    :pswitch_1
    const/16 v0, 0x55

    return v0

    :pswitch_2
    const/16 v0, 0x53

    return v0

    :pswitch_3
    const/16 v0, 0x15

    return v0

    :pswitch_4
    const/16 v0, 0x11

    return v0

    :pswitch_5
    const/16 v0, 0x13

    return v0

    :pswitch_6
    const/16 v0, 0x35

    return v0

    :pswitch_7
    const/16 v0, 0x31

    return v0

    :pswitch_8
    const/16 v0, 0x33

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
