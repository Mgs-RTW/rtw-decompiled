.class public Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "GMActivityOnGlobalLayoutListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GMActivityOnGlobalLayoutListener"


# instance fields
.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private mKeyboardListener:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->mKeyboardListener:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

    const p2, 0x1020002

    .line 39
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->mChildOfContent:Landroid/view/View;

    .line 47
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener$1;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 70
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;Landroid/app/Activity;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->possiblyResizeChildOfContent(Landroid/app/Activity;)V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;-><init>(Landroid/app/Activity;Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;)V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 2

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 110
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private isFocusInputBox()Z
    .locals 2

    .line 75
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Mi A2 Lite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private possiblyResizeChildOfContent(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Build.MODEL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GMActivityOnGlobalLayoutListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->computeUsableHeight()I

    move-result p1

    .line 86
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->usableHeightPrevious:I

    if-eq p1, v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v1, v0, p1

    .line 89
    div-int/lit8 v2, v0, 0x4

    if-le v1, v2, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->isFocusInputBox()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->mKeyboardListener:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;->up()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->isFocusInputBox()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->mKeyboardListener:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;

    invoke-interface {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$KeyboardListener;->down()V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 102
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMActivityOnGlobalLayoutListener;->usableHeightPrevious:I

    :cond_3
    return-void
.end method
