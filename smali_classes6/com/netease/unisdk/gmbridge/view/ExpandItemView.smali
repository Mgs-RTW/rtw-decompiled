.class public Lcom/netease/unisdk/gmbridge/view/ExpandItemView;
.super Landroid/widget/LinearLayout;
.source "ExpandItemView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

.field private mIconIv:Landroid/widget/ImageView;

.field private mNameTv:Landroid/widget/TextView;

.field private mPressTextColor:I

.field private mRedIv:Landroid/widget/ImageView;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "uni_gm_text_color"

    invoke-static {p1, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mTextColor:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "uni_gm_text_focus_color"

    invoke-static {p1, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mPressTextColor:I

    .line 42
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->setOrientation(I)V

    .line 44
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->initViews()V

    .line 45
    invoke-virtual {p0, p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private click()V
    .locals 2

    const-string v0, "close"

    .line 100
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/ConfirmDialog;->show()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOpenGMPage(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->removeRedMenuIds(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initViews()V
    .locals 4

    .line 49
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->addView(Landroid/view/View;)V

    .line 52
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    .line 53
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v2, v2, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_WIDTH:I

    sget v3, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 56
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    .line 60
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "uni_gm_f_red"

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x35

    .line 64
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->isRedMenu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mBtnInfo:Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isShowRed()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xb

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    return v0

    .line 86
    :pswitch_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_0

    .line 87
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget p2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->click()V

    .line 91
    invoke-static {}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->hideExpandLayout()V

    return v0

    .line 80
    :pswitch_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_1

    .line 81
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget p2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mPressTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showRed()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
