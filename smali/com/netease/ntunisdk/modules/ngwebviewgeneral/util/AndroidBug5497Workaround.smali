.class public Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private mKeyboardListener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity$KeyboardListener;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity$KeyboardListener;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->mKeyboardListener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity$KeyboardListener;

    const p2, 0x1020002

    .line 29
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 31
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround$1;

    invoke-direct {p2, p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround$1;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 36
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity$KeyboardListener;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity$KeyboardListener;)V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 2

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 60
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private possiblyResizeChildOfContent()V
    .locals 4

    .line 40
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v0

    .line 41
    iget v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 44
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 47
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->mKeyboardListener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity$KeyboardListener;

    invoke-interface {v1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity$KeyboardListener;->up()V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 50
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->mKeyboardListener:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity$KeyboardListener;

    invoke-interface {v1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity$KeyboardListener;->down()V

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 53
    iput v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/util/AndroidBug5497Workaround;->usableHeightPrevious:I

    :cond_1
    return-void
.end method
