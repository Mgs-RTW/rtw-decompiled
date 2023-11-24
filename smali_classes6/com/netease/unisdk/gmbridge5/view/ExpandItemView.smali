.class public Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;
.super Landroid/widget/LinearLayout;
.source "ExpandItemView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static ICON_HEIGHT:I

.field public static ICON_WIDTH:I


# instance fields
.field private mBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

.field private mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

.field private mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

.field private mIconIv:Landroid/widget/ImageView;

.field private mMenu:Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

.field private mNameTv:Landroid/widget/TextView;

.field private mPressTextColor:I

.field private mRedIv:Landroid/widget/ImageView;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/GmBridge;Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    .line 43
    invoke-virtual {p2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->getFloatWindow()Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    .line 44
    invoke-virtual {p2}, Lcom/netease/unisdk/gmbridge5/GmBridge;->getDataManager()Lcom/netease/unisdk/gmbridge5/data/DataManager;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    .line 45
    iput-object p3, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mMenu:Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/netease/unisdk/gmbridgelib/R$color;->uni_gm_text_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mTextColor:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/netease/unisdk/gmbridgelib/R$color;->uni_gm_text_focus_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mPressTextColor:I

    const/4 p1, 0x1

    .line 48
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->setOrientation(I)V

    .line 49
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->initViews()V

    .line 50
    invoke-virtual {p0, p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private click()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mMenu:Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->url:Ljava/lang/String;

    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-direct {v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;-><init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)V

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->show()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mBridge:Lcom/netease/unisdk/gmbridge5/GmBridge;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mMenu:Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/GmBridge;->openGMPage(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mMenu:Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->removeRedMenuIds(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initViews()V
    .locals 4

    .line 54
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->addView(Landroid/view/View;)V

    .line 57
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mMenu:Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    iget-object v2, v2, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->iconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 60
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_WIDTH:I

    sget v3, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->ICON_HEIGHT:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 61
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 62
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$drawable;->uni_gm_f_red:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x35

    .line 69
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 70
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mMenu:Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->isRedMenu(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mMenu:Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;

    iget-object v1, v1, Lcom/netease/unisdk/gmbridge5/floatmenu/MenuItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private removeRedMenuIds(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->removeRedId(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mDataManager:Lcom/netease/unisdk/gmbridge5/data/DataManager;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/data/DataManager;->getRedIds()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->hideRed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xb

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    .line 91
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_2

    .line 92
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget p2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->click()V

    .line 96
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->hideExpandLayout()V

    return v0

    .line 85
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_4

    .line 86
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mIconIv:Landroid/widget/ImageView;

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mNameTv:Landroid/widget/TextView;

    iget p2, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mPressTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return v0
.end method

.method public showRed()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ExpandItemView;->mRedIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
