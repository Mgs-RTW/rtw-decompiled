.class public Lcom/netease/mpay/oversea/n/l/h;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "PassportLoginHome.java"


# instance fields
.field private l:Lcom/netease/mpay/oversea/ui/h$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/l/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/n/l/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/h$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/l/h;->l:Lcom/netease/mpay/oversea/ui/h$g;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 3
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_email:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_email_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 5
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 6
    new-instance v2, Lcom/netease/mpay/oversea/n/l/h$j;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/n/l/h$j;-><init>(Lcom/netease/mpay/oversea/n/l/h;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 18
    new-instance v2, Lcom/netease/mpay/oversea/n/l/h$k;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/oversea/n/l/h$k;-><init>(Lcom/netease/mpay/oversea/n/l/h;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x8

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    new-instance v3, Lcom/netease/mpay/oversea/n/l/h$l;

    invoke-direct {v3, p0, v0}, Lcom/netease/mpay/oversea/n/l/h$l;-><init>(Lcom/netease/mpay/oversea/n/l/h;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 46
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password_text:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 47
    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 48
    new-instance v4, Lcom/netease/mpay/oversea/n/l/h$m;

    invoke-direct {v4, p0, v0}, Lcom/netease/mpay/oversea/n/l/h$m;-><init>(Lcom/netease/mpay/oversea/n/l/h;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_delete:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    new-instance v4, Lcom/netease/mpay/oversea/n/l/h$n;

    invoke-direct {v4, p0, v3}, Lcom/netease/mpay/oversea/n/l/h$n;-><init>(Lcom/netease/mpay/oversea/n/l/h;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    new-instance v2, Lcom/netease/mpay/oversea/n/l/h$o;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/n/l/h$o;-><init>(Lcom/netease/mpay/oversea/n/l/h;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_eye:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 88
    new-instance v2, Lcom/netease/mpay/oversea/n/l/h$a;

    invoke-direct {v2, p0, v3}, Lcom/netease/mpay/oversea/n/l/h$a;-><init>(Lcom/netease/mpay/oversea/n/l/h;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    new-instance v2, Lcom/netease/mpay/oversea/n/l/h$b;

    invoke-direct {v2, p0, v1, v3}, Lcom/netease/mpay/oversea/n/l/h$b;-><init>(Lcom/netease/mpay/oversea/n/l/h;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_register:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    new-instance v1, Lcom/netease/mpay/oversea/n/l/h$c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/n/l/h$c;-><init>(Lcom/netease/mpay/oversea/n/l/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password_reset:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    new-instance v1, Lcom/netease/mpay/oversea/n/l/h$d;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/n/l/h$d;-><init>(Lcom/netease/mpay/oversea/n/l/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->c(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/l/e/d$f;

    move-result-object v0

    .line 134
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/d$f;->j:Lcom/netease/mpay/oversea/l/e/h;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, v0, Lcom/netease/mpay/oversea/l/e/h;->b:Lcom/netease/mpay/oversea/l/e/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 136
    iget-object v1, v0, Lcom/netease/mpay/oversea/l/e/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/oversea/l/e/e;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, ""

    .line 137
    :goto_1
    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x4

    .line 139
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__passport_policy:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v5}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__login_privacy_highlight:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 144
    :try_start_0
    new-instance v5, Lcom/netease/mpay/oversea/n/l/h$e;

    invoke-direct {v5, p0, v0}, Lcom/netease/mpay/oversea/n/l/h$e;-><init>(Lcom/netease/mpay/oversea/n/l/h;Lcom/netease/mpay/oversea/l/e/e;)V

    new-array v0, v4, [I

    aput v3, v0, v6

    new-array v3, v4, [Ljava/lang/String;

    aput-object v1, v3, v6

    new-array v1, v4, [Landroid/text/style/ClickableSpan;

    aput-object v5, v1, v6

    .line 154
    invoke-static {v2, v0, v3, v1}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;

    move-result-object v0

    .line 157
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 158
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 2
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v7, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 5
    invoke-virtual/range {p0 .. p2}, Lcom/netease/mpay/oversea/n/l/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 6
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v12

    .line 10
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v10, v0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/netease/mpay/oversea/n/l/h$f;

    invoke-direct {v14, p0}, Lcom/netease/mpay/oversea/n/l/h$f;-><init>(Lcom/netease/mpay/oversea/n/l/h;)V

    const/4 v13, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 37
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/n/l/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/h;->i()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/n/l/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/h;->j()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->G:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/t/c/g;->c(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/t/c/g;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->G:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/t/c/g;->c(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/t/c/g;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    instance-of v1, v0, Lcom/netease/mpay/oversea/MpayActivity;

    const-string v2, "neteasegames_login"

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/MpayActivity;->setPageName(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/n/l/h;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 3
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_login_home:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/netease/mpay/oversea/ui/h$h;

    sget-object p3, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p2, p3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/h;->l:Lcom/netease/mpay/oversea/ui/h$g;

    .line 5
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/n/l/h;->a(Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 11

    .line 6
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
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

    .line 9
    new-instance v3, Lcom/netease/mpay/oversea/n/l/h$g;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/n/l/h$g;-><init>(Lcom/netease/mpay/oversea/n/l/h;)V

    .line 16
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_1
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 27
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :goto_1
    new-instance v3, Lcom/netease/mpay/oversea/n/l/h$h;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/n/l/h$h;-><init>(Lcom/netease/mpay/oversea/n/l/h;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_login_more_items:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/r/f;->q()Ljava/util/ArrayList;

    move-result-object v7

    .line 43
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/n/l/h;->h()Z

    move-result v4

    .line 44
    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v6, p0, Lcom/netease/mpay/oversea/ui/z/a;->a:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v10, 0x1

    move v9, v4

    invoke-static/range {v5 .. v10}, Lcom/netease/mpay/oversea/ui/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZZ)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v6, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-direct {v5, v6, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 46
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 47
    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__margin_11:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 48
    new-instance v6, Lcom/netease/mpay/oversea/ui/y/d;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    :goto_2
    invoke-direct {v6, v1, v5, v2}, Lcom/netease/mpay/oversea/ui/y/d;-><init>(III)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 49
    new-instance v1, Lcom/netease/mpay/oversea/ui/y/f;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    new-instance v4, Lcom/netease/mpay/oversea/n/l/h$i;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/n/l/h$i;-><init>(Lcom/netease/mpay/oversea/n/l/h;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/ui/y/f;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/ui/y/f$a;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n/l/h;->b(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Z)V

    if-nez p1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/h;->k()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Passport Login Success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v2, "account"

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance p1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v1, "password"

    invoke-direct {p1, v1, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "neteasegames_login"

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

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/netease/mpay/oversea/n/l/h;->l:Lcom/netease/mpay/oversea/ui/h$g;

    invoke-interface {v0, v2}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/e$c;->a()V

    :cond_2
    :goto_0
    return v1
.end method

.method public h()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3
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
