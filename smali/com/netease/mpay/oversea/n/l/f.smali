.class public Lcom/netease/mpay/oversea/n/l/f;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "PassportLogin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 6
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/netease/mpay/oversea/n/l/f$d;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/n/l/f$d;-><init>(Lcom/netease/mpay/oversea/n/l/f;)V

    .line 13
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n/l/f;->b(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/l/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/f;->i()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n/l/f;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

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
    new-instance v2, Lcom/netease/mpay/oversea/n/l/f$e;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/n/l/f$e;-><init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/LinearLayout;)V

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
    new-instance v2, Lcom/netease/mpay/oversea/n/l/f$f;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/oversea/n/l/f$f;-><init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x8

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    new-instance v3, Lcom/netease/mpay/oversea/n/l/f$g;

    invoke-direct {v3, p0, v0}, Lcom/netease/mpay/oversea/n/l/f$g;-><init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/ImageView;)V

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
    new-instance v4, Lcom/netease/mpay/oversea/n/l/f$h;

    invoke-direct {v4, p0, v0}, Lcom/netease/mpay/oversea/n/l/f$h;-><init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/LinearLayout;)V

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
    new-instance v4, Lcom/netease/mpay/oversea/n/l/f$i;

    invoke-direct {v4, p0, v3}, Lcom/netease/mpay/oversea/n/l/f$i;-><init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    new-instance v2, Lcom/netease/mpay/oversea/n/l/f$j;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/n/l/f$j;-><init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_eye:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 88
    new-instance v2, Lcom/netease/mpay/oversea/n/l/f$k;

    invoke-direct {v2, p0, v3}, Lcom/netease/mpay/oversea/n/l/f$k;-><init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    new-instance v2, Lcom/netease/mpay/oversea/n/l/f$l;

    invoke-direct {v2, p0, v1, v3}, Lcom/netease/mpay/oversea/n/l/f$l;-><init>(Lcom/netease/mpay/oversea/n/l/f;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_register:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    new-instance v1, Lcom/netease/mpay/oversea/n/l/f$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/n/l/f$a;-><init>(Lcom/netease/mpay/oversea/n/l/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password_reset:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    new-instance v1, Lcom/netease/mpay/oversea/n/l/f$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/n/l/f$b;-><init>(Lcom/netease/mpay/oversea/n/l/f;)V

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
    new-instance v5, Lcom/netease/mpay/oversea/n/l/f$c;

    invoke-direct {v5, p0, v0}, Lcom/netease/mpay/oversea/n/l/f$c;-><init>(Lcom/netease/mpay/oversea/n/l/f;Lcom/netease/mpay/oversea/l/e/e;)V

    new-array v0, v4, [I

    aput v3, v0, v6

    new-array v3, v4, [Ljava/lang/String;

    aput-object v1, v3, v6

    new-array v1, v4, [Landroid/text/style/ClickableSpan;

    aput-object v5, v1, v6

    .line 153
    invoke-static {v2, v0, v3, v1}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;

    move-result-object v0

    .line 156
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 157
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/n/l/f;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/n/l/f;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/n/l/f;)Lcom/netease/mpay/oversea/k/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->j:Lcom/netease/mpay/oversea/k/f;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/n/l/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/f;->j()V

    return-void
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/n/l/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/f;->k()V

    return-void
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/n/l/f;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-boolean v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->g:Z

    if-eqz v1, :cond_1

    const-string v1, "single_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/z/e;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/z/e;->c(Z)V

    .line 11
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    :goto_1
    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/n/l/f;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method private i()V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/f;->h()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__ntpassport:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_err:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    check-cast v1, Lcom/netease/mpay/oversea/n/l/c;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/n/l/c;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object v1

    const/16 v2, 0x2716

    invoke-interface {v1, v2, v0}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v4, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->G:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/t/c/g;->c(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    check-cast v2, Lcom/netease/mpay/oversea/n/l/c;

    .line 4
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/n/l/c;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/n/l/a;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    .line 10
    :try_start_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/e;->b()Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/n/l/c;

    .line 11
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v2}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/n/l/c;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/l/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :catchall_0
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v4, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->G:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/t/c/g;->c(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    check-cast v2, Lcom/netease/mpay/oversea/n/l/c;

    .line 4
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/n/l/c;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/n/l/a;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    .line 10
    :try_start_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/e;->b()Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/n/l/c;

    .line 11
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v2}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/n/l/c;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/l/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :catchall_0
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 3
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/netease/mpay/oversea/ui/h$h;

    sget-object p3, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p2, p3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    .line 5
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/n/l/f;->a(Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public a(Lcom/netease/mpay/oversea/k/j;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 1

    .line 22
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->k:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 23
    :cond_0
    instance-of p1, p2, Lcom/netease/mpay/oversea/k/i;

    if-eqz p1, :cond_2

    .line 24
    move-object p1, p2

    check-cast p1, Lcom/netease/mpay/oversea/k/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/i;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 26
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/f;->h()V

    goto :goto_0

    .line 30
    :cond_1
    :try_start_0
    check-cast p2, Lcom/netease/mpay/oversea/k/i;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/k/i;->b()Lcom/netease/mpay/oversea/h/c;

    move-result-object p1

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Event:onReceive: toast:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 32
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/netease/mpay/oversea/k/j;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/n/l/f;->a(Lcom/netease/mpay/oversea/k/j;Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/f;->i()V

    const/4 v0, 0x1

    return v0
.end method
