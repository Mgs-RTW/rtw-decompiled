.class public Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;
.super Ljava/lang/Object;
.source "AlerterEx.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AE"


# instance fields
.field private mContentTv:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDividerView:Landroid/view/View;

.field private mNegativeBtn:Landroid/widget/Button;

.field private mOnBackPressedListener:Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;

.field private mPostiveBtn:Landroid/widget/Button;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;-><init>(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mOnBackPressedListener:Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;

    .line 40
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->initDialog()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;)Landroid/app/Dialog;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;)Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mOnBackPressedListener:Lcom/netease/ntunisdk/external/protocol/view/OnBackPressedListener;

    return-object p0
.end method

.method private initDialog()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    const-string v1, "style"

    const-string v2, "UniAlertDialog_AlertDialog"

    invoke-static {v0, v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    const-string v2, "NeteaseUniSDK_AlertDialog"

    invoke-static {v0, v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 48
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    .line 49
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/external/protocol/utils/SysHelper;->hideSystemUI(Landroid/view/Window;)V

    .line 50
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    const-string v2, "unisdk_alert_dialog_view"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 53
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$1;-><init>(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 69
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "unisdk__alert_title"

    invoke-static {v1, v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mTitleTv:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    const-string v3, "unisdk__alert_message"

    invoke-static {v1, v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContentTv:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    const-string v3, "unisdk__alert_positive"

    invoke-static {v1, v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mPostiveBtn:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    const-string v3, "unisdk__alert_negative"

    invoke-static {v1, v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mNegativeBtn:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContext:Landroid/content/Context;

    const-string v3, "unisdk__alert_btn_divider"

    invoke-static {v1, v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDividerView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AE"

    if-eqz v0, :cond_0

    const-string p1, "warning, return alert"

    .line 87
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 94
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContentTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mContentTv:Landroid/widget/TextView;

    new-instance p2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {p2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 103
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mPostiveBtn:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mPostiveBtn:Landroid/widget/Button;

    new-instance p2, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$2;

    invoke-direct {p2, p0, p4}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$2;-><init>(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mPostiveBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDividerView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mPostiveBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDividerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mNegativeBtn:Landroid/widget/Button;

    invoke-virtual {p1, p5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mNegativeBtn:Landroid/widget/Button;

    new-instance p2, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$3;

    invoke-direct {p2, p0, p6}, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx$3;-><init>(Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mNegativeBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 135
    :cond_3
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mNegativeBtn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDividerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :goto_2
    iget-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_3

    :cond_4
    const-string p1, "mDialog null"

    .line 140
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception p1

    .line 143
    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/AlerterEx;->mDialog:Landroid/app/Dialog;

    return-void
.end method
