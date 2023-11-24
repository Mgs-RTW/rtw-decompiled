.class public Lcom/netease/mpay/oversea/widget/a;
.super Ljava/lang/Object;
.source "Alerter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/widget/a$u;,
        Lcom/netease/mpay/oversea/widget/a$t;,
        Lcom/netease/mpay/oversea/widget/a$v;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/netease/mpay/oversea/widget/a$t;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/widget/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 356
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 358
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/mpay/oversea/widget/a;->d:I

    .line 359
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/netease/mpay/oversea/widget/a;->c:I

    .line 360
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 370
    :cond_1
    iget v0, p0, Lcom/netease/mpay/oversea/widget/a;->d:I

    iget v1, p0, Lcom/netease/mpay/oversea/widget/a;->c:I

    if-ge v0, v1, :cond_3

    .line 372
    iput v1, p0, Lcom/netease/mpay/oversea/widget/a;->d:I

    .line 373
    iput v0, p0, Lcom/netease/mpay/oversea/widget/a;->c:I

    goto :goto_1

    .line 374
    :cond_2
    :goto_0
    iget v0, p0, Lcom/netease/mpay/oversea/widget/a;->d:I

    iget v1, p0, Lcom/netease/mpay/oversea/widget/a;->c:I

    if-le v0, v1, :cond_3

    .line 376
    iput v1, p0, Lcom/netease/mpay/oversea/widget/a;->d:I

    .line 377
    iput v0, p0, Lcom/netease/mpay/oversea/widget/a;->c:I

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 5

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__welcome_toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__message_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__message_root:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__welcome_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 96
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x11

    invoke-direct {v2, v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x37

    const/4 v1, 0x0

    const/16 v2, 0x1a

    .line 100
    invoke-virtual {p1, p0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    const/4 p0, 0x1

    .line 102
    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 104
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/h/a;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 12

    move-object v10, p0

    move-object v2, p3

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/widget/a$j;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$q;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/widget/a$q;-><init>(Lcom/netease/mpay/oversea/widget/a;)V

    iput-object v0, v10, Lcom/netease/mpay/oversea/widget/a;->b:Lcom/netease/mpay/oversea/widget/a$t;

    goto/16 :goto_0

    .line 84
    :pswitch_0
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$p;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/widget/a$p;-><init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;)V

    iput-object v0, v10, Lcom/netease/mpay/oversea/widget/a;->b:Lcom/netease/mpay/oversea/widget/a$t;

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "prepare welcome pop"

    .line 85
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$o;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/widget/a$o;-><init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;)V

    iput-object v0, v10, Lcom/netease/mpay/oversea/widget/a;->b:Lcom/netease/mpay/oversea/widget/a$t;

    goto :goto_0

    .line 87
    :pswitch_2
    new-instance v11, Lcom/netease/mpay/oversea/widget/a$n;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/oversea/widget/a$n;-><init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    iput-object v11, v10, Lcom/netease/mpay/oversea/widget/a;->b:Lcom/netease/mpay/oversea/widget/a$t;

    goto :goto_0

    .line 88
    :pswitch_3
    new-instance v11, Lcom/netease/mpay/oversea/widget/a$m;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/oversea/widget/a$m;-><init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    iput-object v11, v10, Lcom/netease/mpay/oversea/widget/a;->b:Lcom/netease/mpay/oversea/widget/a$t;

    goto :goto_0

    .line 89
    :pswitch_4
    new-instance v8, Lcom/netease/mpay/oversea/widget/a$l;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move/from16 v7, p11

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/oversea/widget/a$l;-><init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    iput-object v8, v10, Lcom/netease/mpay/oversea/widget/a;->b:Lcom/netease/mpay/oversea/widget/a$t;

    goto :goto_0

    .line 90
    :pswitch_5
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$k;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/widget/a$k;-><init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;)V

    iput-object v0, v10, Lcom/netease/mpay/oversea/widget/a;->b:Lcom/netease/mpay/oversea/widget/a$t;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/widget/a;Lcom/netease/mpay/oversea/h/a;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p11}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/h/a;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p8}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p8}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    .line 202
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/a;->a()V

    .line 204
    iget-object v7, v1, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/netease/mpay/oversea/f;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v7

    .line 205
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz v6, :cond_1

    .line 208
    new-instance v6, Lcom/netease/mpay/oversea/widget/a$b;

    invoke-direct {v6, p0, v5}, Lcom/netease/mpay/oversea/widget/a$b;-><init>(Lcom/netease/mpay/oversea/widget/a;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    :cond_1
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    const/4 v8, 0x0

    .line 219
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 220
    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 221
    invoke-static {v9}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/view/Window;)V

    .line 223
    :try_start_0
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    const/4 v10, 0x2

    .line 224
    invoke-static {v10}, Lcom/netease/mpay/oversea/f;->c(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    sget v12, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__scroll_dialog:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 236
    iget-object v12, v1, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__login_alert_dialog_width:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    .line 237
    iget-object v13, v1, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__uc_height:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 238
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v13, v12, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 239
    invoke-virtual {v6, v11, v13}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v9, :cond_2

    .line 241
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v13, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual {v9, v12, v14}, Landroid/view/Window;->setLayout(II)V

    const/16 v12, 0x11

    .line 243
    invoke-virtual {v9, v12}, Landroid/view/Window;->setGravity(I)V

    .line 245
    :cond_2
    invoke-static {v9}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    .line 246
    invoke-static {v9}, Lcom/netease/mpay/oversea/widget/r;->d(Landroid/view/Window;)V

    .line 247
    sget v9, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    .line 248
    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 249
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    if-nez v0, :cond_4

    .line 252
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 254
    new-instance v2, Landroid/text/SpannableString;

    move-object/from16 v12, p2

    invoke-direct {v2, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v12, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__usercenter_home_id:I

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 256
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v13, 0x21

    invoke-virtual {v2, v12, v8, v7, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 257
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    const v12, 0x3f666666    # 0.9f

    invoke-direct {v7, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v12

    invoke-virtual {v2, v7, v8, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v0, v7, v8

    const/4 v0, 0x1

    const-string v12, "\n\n"

    aput-object v12, v7, v0

    aput-object v2, v7, v10

    .line 258
    invoke-static {v7}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 265
    :cond_4
    :try_start_2
    new-instance v10, Lcom/netease/mpay/oversea/widget/l$h;

    new-instance v12, Lcom/netease/mpay/oversea/widget/a$c;

    invoke-direct {v12, p0, v0}, Lcom/netease/mpay/oversea/widget/a$c;-><init>(Lcom/netease/mpay/oversea/widget/a;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    invoke-direct {v10, v9, v12}, Lcom/netease/mpay/oversea/widget/l$h;-><init>(Landroid/widget/TextView;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    .line 299
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 300
    invoke-static {v7}, Lcom/netease/mpay/oversea/widget/j;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/widget/l$f;

    move-result-object v7

    .line 301
    invoke-static {v0, v7, v10}, Lcom/netease/mpay/oversea/widget/l;->a(Ljava/util/List;Lcom/netease/mpay/oversea/widget/l$f;Lcom/netease/mpay/oversea/widget/l$h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 304
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :goto_0
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 311
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 312
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v7, 0x8

    if-nez v2, :cond_5

    .line 313
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-static {v3, v0}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 315
    new-instance v2, Lcom/netease/mpay/oversea/widget/a$d;

    move-object/from16 v3, p5

    invoke-direct {v2, p0, v3, v6}, Lcom/netease/mpay/oversea/widget/a$d;-><init>(Lcom/netease/mpay/oversea/widget/a;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 328
    :cond_5
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    :goto_1
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__negative_button:I

    .line 332
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 333
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 334
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 335
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    invoke-static {v4, v0}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 337
    new-instance v2, Lcom/netease/mpay/oversea/widget/a$e;

    invoke-direct {v2, p0, v5, v6}, Lcom/netease/mpay/oversea/widget/a$e;-><init>(Lcom/netease/mpay/oversea/widget/a;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 350
    :cond_6
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 353
    :catchall_1
    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    .line 354
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 355
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 8

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p6, :cond_1

    .line 109
    new-instance p6, Lcom/netease/mpay/oversea/widget/a$r;

    move-object v2, p6

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$r;-><init>(Lcom/netease/mpay/oversea/widget/a;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p6

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 124
    invoke-virtual {p6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/view/Window;)V

    .line 127
    :try_start_0
    invoke-virtual {p6}, Landroid/app/AlertDialog;->show()V

    const/4 v2, 0x2

    .line 128
    invoke-static {v2}, Lcom/netease/mpay/oversea/f;->c(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v2, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__login_alert_dialog_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 138
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 139
    invoke-virtual {p6, v2, v4}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_2

    .line 141
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {v1, v3, v5}, Landroid/view/Window;->setLayout(II)V

    const/16 v3, 0x11

    .line 143
    invoke-virtual {v1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 145
    :cond_2
    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    .line 146
    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/r;->d(Landroid/view/Window;)V

    .line 147
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 149
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    :cond_3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 153
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    if-nez p1, :cond_4

    .line 155
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :cond_4
    const/16 v1, 0x8

    if-eqz p2, :cond_5

    .line 158
    iget-object v3, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__text_view_width_120:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 159
    iget-object v4, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__button_height_37:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v3, v3

    const/16 v5, 0xc

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 160
    invoke-static {p2, p1, v3, v5, v6}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;Landroid/widget/TextView;FIF)V

    .line 161
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 162
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance p2, Lcom/netease/mpay/oversea/widget/a$s;

    invoke-direct {p2, p0, p3, p6}, Lcom/netease/mpay/oversea/widget/a$s;-><init>(Lcom/netease/mpay/oversea/widget/a;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 176
    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_0
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__negative_button:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 180
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    if-nez p1, :cond_6

    .line 182
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__negative_button:I

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    :cond_6
    if-eqz p4, :cond_7

    .line 185
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    new-instance p2, Lcom/netease/mpay/oversea/widget/a$a;

    invoke-direct {p2, p0, p5, p6}, Lcom/netease/mpay/oversea/widget/a$a;-><init>(Lcom/netease/mpay/oversea/widget/a;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 199
    :cond_7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 200
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 7

    .line 378
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 380
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    invoke-virtual {v1, p8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p8, :cond_1

    .line 383
    new-instance p8, Lcom/netease/mpay/oversea/widget/a$f;

    invoke-direct {p8, p0, p7}, Lcom/netease/mpay/oversea/widget/a$f;-><init>(Lcom/netease/mpay/oversea/widget/a;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p8

    const/4 v1, 0x0

    .line 394
    invoke-virtual {p8, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 395
    invoke-virtual {p8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 396
    invoke-static {v2}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/view/Window;)V

    .line 398
    :try_start_0
    invoke-virtual {p8}, Landroid/app/AlertDialog;->show()V

    const/4 v3, 0x2

    .line 399
    invoke-static {v3}, Lcom/netease/mpay/oversea/f;->c(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__dialog_pro:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 408
    iget-object v4, p0, Lcom/netease/mpay/oversea/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__login_alert_dialog_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 409
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 410
    invoke-virtual {p8, v3, v5}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_2

    .line 412
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    invoke-virtual {v2, v4, v6}, Landroid/view/Window;->setLayout(II)V

    const/16 v4, 0x11

    .line 414
    invoke-virtual {v2, v4}, Landroid/view/Window;->setGravity(I)V

    .line 416
    :cond_2
    invoke-static {v2}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    .line 417
    invoke-static {v2}, Lcom/netease/mpay/oversea/widget/r;->d(Landroid/view/Window;)V

    .line 418
    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_title:I

    .line 419
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 421
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__aas_title:I

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/h/m/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 423
    :cond_3
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_0
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 428
    :try_start_1
    new-instance v2, Lcom/netease/mpay/oversea/widget/l$h;

    new-instance v4, Lcom/netease/mpay/oversea/widget/a$g;

    invoke-direct {v4, p0, p3}, Lcom/netease/mpay/oversea/widget/a$g;-><init>(Lcom/netease/mpay/oversea/widget/a;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    invoke-direct {v2, p1, v4}, Lcom/netease/mpay/oversea/widget/l$h;-><init>(Landroid/widget/TextView;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    .line 462
    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/j;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/widget/l$f;

    move-result-object v4

    invoke-static {p3, v4, v2}, Lcom/netease/mpay/oversea/widget/l;->a(Ljava/util/List;Lcom/netease/mpay/oversea/widget/l$f;Lcom/netease/mpay/oversea/widget/l$h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p3

    .line 464
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 465
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :goto_1
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 468
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 469
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p5, :cond_4

    .line 470
    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, p2}, Lcom/netease/mpay/oversea/h/m/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    :cond_4
    const/16 p2, 0x8

    if-eqz p4, :cond_5

    .line 473
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    new-instance p3, Lcom/netease/mpay/oversea/widget/a$h;

    invoke-direct {p3, p0, p5, p8}, Lcom/netease/mpay/oversea/widget/a$h;-><init>(Lcom/netease/mpay/oversea/widget/a;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 487
    :cond_5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    :goto_2
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__negative_button:I

    .line 491
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 492
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 493
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz p7, :cond_6

    .line 494
    sget p3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, p3}, Lcom/netease/mpay/oversea/h/m/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p6

    :cond_6
    if-eqz p6, :cond_7

    .line 497
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    new-instance p2, Lcom/netease/mpay/oversea/widget/a$i;

    invoke-direct {p2, p0, p7, p8}, Lcom/netease/mpay/oversea/widget/a$i;-><init>(Lcom/netease/mpay/oversea/widget/a;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 511
    :cond_7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :catch_0
    move-exception p1

    .line 512
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 513
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a;->b:Lcom/netease/mpay/oversea/widget/a$t;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/widget/a$t;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
