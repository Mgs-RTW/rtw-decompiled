.class Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator$1;
.super Ljava/lang/Object;
.source "BallClipRotateIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator$1;->this$0:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator$1;->this$0:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->scaleFloat:F

    .line 42
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator$1;->this$0:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->postInvalidate()V

    return-void
.end method
