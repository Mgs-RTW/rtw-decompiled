.class Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge/view/FloatWindow;
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

.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 87
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchX:F

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchY:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    .line 89
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result v1

    const/16 v2, 0x53

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 91
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    sub-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result v1

    const/16 v2, 0x55

    if-ne v1, v2, :cond_1

    .line 93
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 94
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    sub-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$600(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result v1

    const/16 v2, 0x35

    if-ne v1, v2, :cond_2

    .line 96
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 97
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 100
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$800(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$700(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/LinearLayout;

    move-result-object p2

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    .line 74
    :pswitch_1
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$300(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_3

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchY:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$400(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)V

    .line 81
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$500(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$500(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, p2, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    .line 67
    :pswitch_2
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialX:I

    .line 68
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$000(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialY:I

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchX:F

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->initialTouchY:F

    .line 71
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$200(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/view/FloatWindow$2;->this$0:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->access$100(Lcom/netease/unisdk/gmbridge/view/FloatWindow;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
