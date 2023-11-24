.class public Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;
.super Ljava/lang/Object;
.source "FloatWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnLongClickListener;,
        Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnClickListener;,
        Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;
    }
.end annotation


# instance fields
.field private button:Landroid/widget/Button;

.field private i:I

.field private mContext:Landroid/content/Context;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->i:I

    .line 26
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 28
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->initFloatingWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)Landroid/view/WindowManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public initFloatingWindow()V
    .locals 9

    .line 37
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->button:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->button:Landroid/widget/Button;

    const-string v1, "extendfunc Floating"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->button:Landroid/widget/Button;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 40
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->button:Landroid/widget/Button;

    new-instance v1, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->button:Landroid/widget/Button;

    new-instance v1, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnClickListener;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->button:Landroid/widget/Button;

    new-instance v1, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnLongClickListener;

    invoke-direct {v1, p0, v2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnLongClickListener;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 44
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/4 v6, 0x2

    const/16 v7, 0x408

    const/4 v8, -0x3

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x1f4

    .line 53
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x64

    .line 54
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x12c

    .line 55
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 59
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->button:Landroid/widget/Button;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showFloatingWindow()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->button:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
