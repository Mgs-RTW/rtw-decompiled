.class public Lcom/netease/mpay/oversea/widget/c;
.super Ljava/lang/Object;
.source "CountDownDialog.java"


# instance fields
.field private a:Landroid/os/CountDownTimer;

.field private b:Landroid/content/DialogInterface$OnClickListener;

.field private c:Landroid/content/DialogInterface$OnClickListener;

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "CountDown: cancel"

    .line 119
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/c;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/netease/mpay/oversea/widget/c;->a:Landroid/os/CountDownTimer;
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

.method private a(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .locals 10

    .line 93
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->d()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x5

    .line 98
    :cond_0
    new-instance v9, Lcom/netease/mpay/oversea/widget/c$d;

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v3, v0, v2

    const-wide/16 v5, 0x3e8

    move-object v1, v9

    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/netease/mpay/oversea/widget/c$d;-><init>(Lcom/netease/mpay/oversea/widget/c;JJLandroid/app/Activity;Landroid/app/AlertDialog;)V

    .line 118
    invoke-virtual {v9}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/c;->a:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/widget/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/c;->a()V

    return-void
.end method

.method private declared-synchronized a(Landroid/app/Activity;Landroid/content/DialogInterface;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    if-eqz p5, :cond_2

    .line 85
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    new-instance p4, Lcom/netease/mpay/oversea/widget/c$c;

    invoke-direct {p4, p0, p2, p5, p1}, Lcom/netease/mpay/oversea/widget/c$c;-><init>(Lcom/netease/mpay/oversea/widget/c;Landroid/content/DialogInterface;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_2
    :goto_0
    const/16 p1, 0x8

    .line 92
    :try_start_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/widget/c;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/widget/c;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/widget/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/widget/c;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/widget/c;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/widget/c;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/c;->d:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/c;
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/c;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/view/Window;)V

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v2

    const-string v3, "guide_guestlogin"

    invoke-virtual {v2, p1, v3}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__countdown_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__login_alert_dialog_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 25
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26
    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 29
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {v4, v3, v5}, Landroid/view/Window;->setLayout(II)V

    const/16 v3, 0x11

    .line 31
    invoke-virtual {v4, v3}, Landroid/view/Window;->setGravity(I)V

    const v3, 0x20008

    .line 32
    invoke-virtual {v4, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 33
    invoke-static {v4}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    .line 34
    invoke-static {v4}, Lcom/netease/mpay/oversea/widget/r;->d(Landroid/view/Window;)V

    .line 36
    :cond_1
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/TextView;

    .line 38
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__countdown_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/netease/mpay/oversea/widget/c;->g:Landroid/widget/TextView;

    .line 39
    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_countdown:I

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "5"

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 40
    iget-object v4, p0, Lcom/netease/mpay/oversea/widget/c;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    .line 42
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__negative_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    .line 43
    iget-object v6, p0, Lcom/netease/mpay/oversea/widget/c;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/widget/c;->c:Landroid/content/DialogInterface$OnClickListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/c;->a(Landroid/app/Activity;Landroid/content/DialogInterface;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 44
    iget-object v6, p0, Lcom/netease/mpay/oversea/widget/c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/widget/c;->b:Landroid/content/DialogInterface$OnClickListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, v10

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/c;->a(Landroid/app/Activity;Landroid/content/DialogInterface;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    return-void

    .line 46
    :cond_4
    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_retry:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__popup_text_highlight:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 50
    :try_start_1
    new-instance v4, Lcom/netease/mpay/oversea/widget/c$a;

    invoke-direct {v4, p0, v0, p1}, Lcom/netease/mpay/oversea/widget/c$a;-><init>(Lcom/netease/mpay/oversea/widget/c;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    new-array v5, v9, [I

    aput v3, v5, v1

    new-array v3, v9, [Ljava/lang/String;

    aput-object v2, v3, v1

    new-array v2, v9, [Landroid/text/style/ClickableSpan;

    aput-object v4, v2, v1

    .line 65
    invoke-static {p2, v5, v3, v2}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;

    move-result-object v2

    .line 68
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 69
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 70
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :goto_2
    new-instance p2, Lcom/netease/mpay/oversea/widget/c$b;

    invoke-direct {p2, p0}, Lcom/netease/mpay/oversea/widget/c$b;-><init>(Lcom/netease/mpay/oversea/widget/c;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/widget/c;->a(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    return-void

    :catch_1
    move-exception p1

    .line 82
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    .line 83
    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/c;->a()V

    return-void

    .line 84
    :catch_2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/c;->a()V

    :cond_5
    :goto_3
    return-void
.end method
