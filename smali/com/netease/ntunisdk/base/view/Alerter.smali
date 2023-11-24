.class public Lcom/netease/ntunisdk/base/view/Alerter;
.super Ljava/lang/Object;
.source "Alerter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    .line 28
    new-instance p1, Lcom/netease/ntunisdk/base/view/BaseDialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    const-string v2, "UniAlertDialog_AlertDialog"

    const-string v3, "style"

    invoke-static {v1, v2, v3}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/netease/ntunisdk/base/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    const-string v1, "unisdk_alert_dialog_view"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    const-string v1, "unisdk__alert_title"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->c:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    const-string v1, "unisdk__alert_message"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->d:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    const-string v1, "unisdk__alert_positive"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->e:Landroid/widget/Button;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    const-string v1, "unisdk__alert_negative"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->f:Landroid/widget/Button;

    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    const-string v1, "unisdk__alert_btn_divider"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->g:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/view/Alerter;)Landroid/app/Dialog;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZLcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V
    .locals 2

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/view/ViewUtils;->isFinishing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    .line 59
    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p7, :cond_1

    .line 61
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object p7, p0, Lcom/netease/ntunisdk/base/view/Alerter;->c:Landroid/widget/TextView;

    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz p8, :cond_2

    .line 68
    invoke-static {p2}, Lcom/netease/ntunisdk/base/view/c;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/base/view/Alerter;->d:Landroid/widget/TextView;

    invoke-static {p1, p2, p9}, Lcom/netease/ntunisdk/base/view/c;->a(Ljava/util/ArrayList;Landroid/widget/TextView;Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->d:Landroid/widget/TextView;

    new-instance p2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 74
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->e:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->e:Landroid/widget/Button;

    new-instance p2, Lcom/netease/ntunisdk/base/view/Alerter$1;

    invoke-direct {p2, p0, p4}, Lcom/netease/ntunisdk/base/view/Alerter$1;-><init>(Lcom/netease/ntunisdk/base/view/Alerter;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->e:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 88
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->e:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 93
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->f:Landroid/widget/Button;

    invoke-virtual {p1, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->f:Landroid/widget/Button;

    new-instance p2, Lcom/netease/ntunisdk/base/view/Alerter$2;

    invoke-direct {p2, p0, p6}, Lcom/netease/ntunisdk/base/view/Alerter$2;-><init>(Lcom/netease/ntunisdk/base/view/Alerter;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->f:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->f:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->g:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_3
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_5
    const-string p1, "UniSDK Alerter"

    const-string p2, "mDialog null"

    .line 112
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void

    :catch_2
    move-exception p1

    .line 114
    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    return-void

    :cond_6
    :goto_4
    const-string p1, "UniSDK Alerter"

    const-string p2, "warning, return alert"

    .line 53
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/netease/ntunisdk/base/view/Alerter;->b:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v9, p5

    .line 124
    invoke-direct/range {v0 .. v9}, Lcom/netease/ntunisdk/base/view/Alerter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZLcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    .line 129
    invoke-direct/range {v0 .. v9}, Lcom/netease/ntunisdk/base/view/Alerter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZLcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZLcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V
    .locals 0

    .line 134
    invoke-direct/range {p0 .. p9}, Lcom/netease/ntunisdk/base/view/Alerter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZZLcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    return-void
.end method
