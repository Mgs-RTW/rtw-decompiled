.class public Lcom/netease/lotr/InputView;
.super Ljava/lang/Object;
.source "InputView.java"


# static fields
.field static final TYPE_ALPHABET:I = 0x2

.field static final TYPE_ALPHANUMERIC:I = 0x3

.field static final TYPE_EMAILADDRESS:I = 0x4

.field static final TYPE_NONE:I = 0x5

.field static final TYPE_NORMAL:I = 0x0

.field static final TYPE_NUMBER:I = 0x1


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_borderless:Z

.field private m_cancelBtn:Landroid/widget/Button;

.field private m_cancelBtnListener:Landroid/view/View$OnClickListener;

.field private m_defaultFontColor:I

.field private m_defaultFontSize:F

.field private m_dialog:Landroid/app/Dialog;

.field private m_editText:Landroid/widget/EditText;

.field private m_filter_pattern:Ljava/lang/String;

.field private m_fontColor:I

.field private m_fontSize:F

.field private m_hint:Ljava/lang/String;

.field private m_input_finished:Z

.field private m_isVertical:Z

.field private m_location:Landroid/graphics/Rect;

.field private m_okBtn:Landroid/widget/Button;

.field private m_okBtnListener:Landroid/view/View$OnClickListener;

.field private m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

.field private m_paddingBottom:I

.field private m_paddingLeft:I

.field private m_paddingRight:I

.field private m_paddingTop:I

.field private m_text:Ljava/lang/String;

.field private m_type:I

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    .line 48
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    .line 49
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    .line 50
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_okBtn:Landroid/widget/Button;

    .line 51
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_cancelBtn:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    .line 53
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    .line 54
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    .line 55
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_text:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_hint:Ljava/lang/String;

    const/4 v1, 0x1

    .line 57
    iput v1, p0, Lcom/netease/lotr/InputView;->m_type:I

    .line 58
    iput-boolean v1, p0, Lcom/netease/lotr/InputView;->m_input_finished:Z

    .line 59
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 60
    iput-boolean v2, p0, Lcom/netease/lotr/InputView;->m_borderless:Z

    .line 61
    iput-boolean v2, p0, Lcom/netease/lotr/InputView;->m_isVertical:Z

    .line 62
    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    .line 63
    iput v2, p0, Lcom/netease/lotr/InputView;->m_fontColor:I

    const/4 v3, 0x0

    .line 64
    iput v3, p0, Lcom/netease/lotr/InputView;->m_fontSize:F

    .line 65
    iput v2, p0, Lcom/netease/lotr/InputView;->m_paddingLeft:I

    .line 66
    iput v2, p0, Lcom/netease/lotr/InputView;->m_paddingRight:I

    .line 67
    iput v2, p0, Lcom/netease/lotr/InputView;->m_paddingTop:I

    .line 68
    iput v2, p0, Lcom/netease/lotr/InputView;->m_paddingBottom:I

    .line 69
    iput v2, p0, Lcom/netease/lotr/InputView;->m_defaultFontColor:I

    .line 70
    iput v3, p0, Lcom/netease/lotr/InputView;->m_defaultFontSize:F

    const-string v3, ""

    .line 88
    iput-object v3, p0, Lcom/netease/lotr/InputView;->m_filter_pattern:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 116
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget p1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v4, :cond_0

    const p1, 0x7f090004

    .line 119
    invoke-virtual {v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    .line 120
    iput-boolean v2, p0, Lcom/netease/lotr/InputView;->m_isVertical:Z

    goto :goto_0

    :cond_0
    const p1, 0x7f090005

    .line 122
    invoke-virtual {v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    .line 123
    iput-boolean v1, p0, Lcom/netease/lotr/InputView;->m_isVertical:Z

    .line 125
    :goto_0
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    new-instance v0, Lcom/netease/lotr/InputView$1;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$1;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 144
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    .line 145
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/netease/lotr/InputView;->m_paddingLeft:I

    .line 146
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/netease/lotr/InputView;->m_paddingRight:I

    .line 147
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/netease/lotr/InputView;->m_paddingTop:I

    .line 148
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/netease/lotr/InputView;->m_paddingBottom:I

    .line 149
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    new-instance v0, Lcom/netease/lotr/InputView$2;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$2;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 159
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    .line 160
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/netease/lotr/InputView;->m_fontColor:I

    .line 161
    iget p1, p0, Lcom/netease/lotr/InputView;->m_fontColor:I

    iput p1, p0, Lcom/netease/lotr/InputView;->m_defaultFontColor:I

    .line 162
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/netease/lotr/InputView;->m_fontSize:F

    .line 163
    iget p1, p0, Lcom/netease/lotr/InputView;->m_fontSize:F

    iput p1, p0, Lcom/netease/lotr/InputView;->m_defaultFontSize:F

    .line 164
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    const v0, 0x7f070046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_okBtn:Landroid/widget/Button;

    .line 165
    new-instance p1, Lcom/netease/lotr/InputView$3;

    invoke-direct {p1, p0}, Lcom/netease/lotr/InputView$3;-><init>(Lcom/netease/lotr/InputView;)V

    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    .line 170
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_okBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    const v0, 0x7f07001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_cancelBtn:Landroid/widget/Button;

    .line 172
    new-instance p1, Lcom/netease/lotr/InputView$4;

    invoke-direct {p1, p0}, Lcom/netease/lotr/InputView$4;-><init>(Lcom/netease/lotr/InputView;)V

    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    .line 177
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_cancelBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    .line 179
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 180
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/lotr/InputView$5;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$5;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 197
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/lotr/InputView$6;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$6;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 209
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/lotr/InputView$7;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$7;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 222
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 223
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lotr/InputView;)Landroid/graphics/Rect;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/lotr/InputView;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/lotr/InputView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/lotr/InputView;->updateFont()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netease/lotr/InputView;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/lotr/InputView;->m_filter_pattern:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/lotr/InputView;)Landroid/app/Dialog;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/lotr/InputView;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/lotr/InputView;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/lotr/InputView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/netease/lotr/InputView;->m_type:I

    return p0
.end method

.method static synthetic access$600(Lcom/netease/lotr/InputView;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/lotr/InputView;->m_hint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/lotr/InputView;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/lotr/InputView;->m_text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/lotr/InputView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/lotr/InputView;->updateLocation()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/lotr/InputView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/lotr/InputView;->updateBorderless()V

    return-void
.end method

.method private updateBorderless()V
    .locals 8

    .line 428
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 429
    iget-boolean v1, p0, Lcom/netease/lotr/InputView;->m_borderless:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 430
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 431
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 432
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 433
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    const/4 v4, -0x1

    .line 436
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 437
    iget-object v4, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 439
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 440
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 441
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_okBtn:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 443
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 444
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_1

    .line 445
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_1

    .line 447
    :cond_1
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 448
    :goto_1
    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 450
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 451
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 452
    iget-boolean v4, p0, Lcom/netease/lotr/InputView;->m_isVertical:Z

    if-nez v4, :cond_3

    const v4, 0x7f070046

    .line 453
    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_3
    const/4 v4, -0x2

    .line 454
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 455
    iget-object v4, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_4

    .line 457
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/netease/lotr/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 459
    :cond_4
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/netease/lotr/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    :goto_2
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    iget v4, p0, Lcom/netease/lotr/InputView;->m_paddingLeft:I

    iget v5, p0, Lcom/netease/lotr/InputView;->m_paddingRight:I

    iget v6, p0, Lcom/netease/lotr/InputView;->m_paddingTop:I

    iget v7, p0, Lcom/netease/lotr/InputView;->m_paddingBottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 461
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 462
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_okBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 464
    iget-boolean v1, p0, Lcom/netease/lotr/InputView;->m_isVertical:Z

    if-eqz v1, :cond_5

    .line 465
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v3, 0x7f070029

    .line 466
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 467
    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateFont()V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/netease/lotr/InputView;->m_fontSize:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 507
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/netease/lotr/InputView;->m_fontColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method private updateLocation()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 383
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x33

    .line 385
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 386
    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 387
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 388
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, -0x1

    .line 389
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 390
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 395
    new-array v2, v2, [I

    .line 396
    iget-object v4, p0, Lcom/netease/lotr/InputView;->m_view:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 397
    aget v3, v2, v3

    iget-object v4, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_2

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 399
    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 402
    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 404
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getDefaultFontColor()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/netease/lotr/InputView;->m_defaultFontColor:I

    return v0
.end method

.method public getDefaultFontSize()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/netease/lotr/InputView;->m_defaultFontSize:F

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .line 502
    iget v0, p0, Lcom/netease/lotr/InputView;->m_fontColor:I

    return v0
.end method

.method public getFontSize()F
    .locals 1

    .line 486
    iget v0, p0, Lcom/netease/lotr/InputView;->m_fontSize:F

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_hint:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()[I
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    .line 376
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/netease/lotr/InputView;->m_type:I

    return v0
.end method

.method public inputFinish(Z)V
    .locals 2

    .line 350
    iget-boolean v0, p0, Lcom/netease/lotr/InputView;->m_input_finished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/netease/lotr/InputView;->m_input_finished:Z

    .line 352
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 354
    invoke-static {v0, p1}, Lcom/netease/neox/NativeInterface;->NativeOnInputFinish(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public isBorderless()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/netease/lotr/InputView;->m_borderless:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setBorderless(Z)V
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/netease/lotr/InputView;->m_borderless:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 410
    :cond_0
    iput-boolean p1, p0, Lcom/netease/lotr/InputView;->m_borderless:Z

    .line 411
    invoke-virtual {p0}, Lcom/netease/lotr/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 412
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/lotr/InputView$14;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$14;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setFilterPattern(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    .line 108
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const-string p1, "[a-zA-Z0-9._\\-@].*"

    .line 105
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string p1, "[0-9a-zA-Z].*"

    .line 102
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string p1, "[a-zA-Z].*"

    .line 99
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string p1, "[0-9].*"

    .line 96
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string p1, ""

    .line 93
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_filter_pattern:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFontColor(I)V
    .locals 1

    .line 490
    iput p1, p0, Lcom/netease/lotr/InputView;->m_fontColor:I

    .line 491
    invoke-virtual {p0}, Lcom/netease/lotr/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 492
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/lotr/InputView$16;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$16;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    .line 474
    iput p1, p0, Lcom/netease/lotr/InputView;->m_fontSize:F

    .line 475
    invoke-virtual {p0}, Lcom/netease/lotr/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 476
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/lotr/InputView$15;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$15;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 245
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_hint:Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Lcom/netease/lotr/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/lotr/InputView$9;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$9;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setLocation(IIII)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 360
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_location:Landroid/graphics/Rect;

    .line 363
    :goto_1
    invoke-virtual {p0}, Lcom/netease/lotr/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 364
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    new-instance p2, Lcom/netease/lotr/InputView$13;

    invoke-direct {p2, p0}, Lcom/netease/lotr/InputView$13;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 262
    iput-object p1, p0, Lcom/netease/lotr/InputView;->m_text:Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Lcom/netease/lotr/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/lotr/InputView$10;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$10;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 228
    iput p1, p0, Lcom/netease/lotr/InputView;->m_type:I

    .line 229
    invoke-virtual {p0}, Lcom/netease/lotr/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/lotr/InputView$8;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$8;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/netease/lotr/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Lcom/netease/lotr/InputView;->m_input_finished:Z

    .line 286
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/lotr/InputView$11;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$11;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/netease/lotr/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/lotr/InputView$12;

    invoke-direct {v0, p0}, Lcom/netease/lotr/InputView$12;-><init>(Lcom/netease/lotr/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
