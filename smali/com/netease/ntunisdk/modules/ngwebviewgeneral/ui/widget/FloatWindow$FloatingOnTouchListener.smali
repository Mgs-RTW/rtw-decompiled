.class Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 81
    iget v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->x:I

    sub-int v1, v0, v1

    .line 82
    iget v2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->y:I

    sub-int v2, p2, v2

    .line 83
    iput v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->x:I

    .line 84
    iput p2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->y:I

    .line 85
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

    invoke-static {p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 86
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

    invoke-static {p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v0, v2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 92
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

    invoke-static {p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->access$400(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)Landroid/view/WindowManager;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->x:I

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/widget/FloatWindow$FloatingOnTouchListener;->y:I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
