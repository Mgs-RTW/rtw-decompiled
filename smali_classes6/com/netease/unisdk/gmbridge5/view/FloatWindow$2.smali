.class Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MOVEMENT_THRESHOLD_PX:I = 0xa


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchX:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchY:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    .line 96
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_1

    .line 97
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 98
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    sub-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v1

    const/16 v2, 0x55

    if-ne v1, v2, :cond_2

    .line 100
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 101
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    sub-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v1

    const/16 v2, 0x35

    if-ne v1, v2, :cond_3

    .line 103
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 104
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_4

    .line 106
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 107
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 109
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$800(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$700(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/LinearLayout;

    move-result-object p2

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    .line 80
    :cond_5
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$300(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_6

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_7

    .line 84
    :cond_6
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$400(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)V

    .line 87
    :cond_7
    :try_start_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$500(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$500(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, p2, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    .line 73
    :cond_8
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialX:I

    .line 74
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialY:I

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchX:F

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->initialTouchY:F

    .line 77
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge5/view/FloatWindow;->access$100(Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return v0
.end method
