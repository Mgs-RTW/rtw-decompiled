.class final Lorg/cocos2dx/lib/StzbInputView$1;
.super Ljava/lang/Object;
.source "StzbInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/StzbInputView;->open(FFLjava/lang/String;IIIILjava/lang/String;IIFZLjava/lang/String;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionId:I

.field final synthetic val$alpha:I

.field final synthetic val$fontColor:I

.field final synthetic val$fontName:Ljava/lang/String;

.field final synthetic val$fontSize:F

.field final synthetic val$halign:I

.field final synthetic val$height:I

.field final synthetic val$hint:Ljava/lang/String;

.field final synthetic val$isMultiline:Z

.field final synthetic val$isNumberKeyboard:Z

.field final synthetic val$left:I

.field final synthetic val$renderHeight:F

.field final synthetic val$renderWidth:F

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$top:I

.field final synthetic val$valign:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(FFFLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZIIIZIIII)V
    .locals 2

    move-object v0, p0

    move v1, p1

    .line 68
    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$renderWidth:F

    move v1, p2

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$renderHeight:F

    move v1, p3

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$fontSize:F

    move-object v1, p4

    iput-object v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$fontName:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$fontColor:I

    move v1, p6

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$alpha:I

    move-object v1, p7

    iput-object v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$text:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$hint:Ljava/lang/String;

    move v1, p9

    iput-boolean v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$isMultiline:Z

    move v1, p10

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$actionId:I

    move v1, p11

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$halign:I

    move v1, p12

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$valign:I

    move v1, p13

    iput-boolean v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$isNumberKeyboard:Z

    move/from16 v1, p14

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$left:I

    move/from16 v1, p15

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$top:I

    move/from16 v1, p16

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$width:I

    move/from16 v1, p17

    iput v1, v0, Lorg/cocos2dx/lib/StzbInputView$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 72
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$000()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string v1, "StzbInputView"

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s_gameScale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$renderWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$renderHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$renderWidth:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lorg/cocos2dx/lib/StzbInputView;->access$102(F)F

    .line 75
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lorg/cocos2dx/lib/StzbInputView;

    invoke-direct {v0}, Lorg/cocos2dx/lib/StzbInputView;-><init>()V

    invoke-static {v0}, Lorg/cocos2dx/lib/StzbInputView;->access$202(Lorg/cocos2dx/lib/StzbInputView;)Lorg/cocos2dx/lib/StzbInputView;

    .line 77
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$fontSize:F

    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$100()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/StzbInputView;->setFontSize(F)V

    .line 78
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/StzbInputView;->setFontName(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$fontColor:I

    iget v2, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$alpha:I

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/lib/StzbInputView;->setFontColor(II)V

    .line 80
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/StzbInputView;->updateFont()V

    .line 81
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/StzbInputView;->setText(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/StzbInputView;->setHint(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$isMultiline:Z

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/StzbInputView;->setSingleLine(Z)V

    .line 84
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$actionId:I

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/StzbInputView;->setActionId(I)V

    .line 85
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$halign:I

    iget v2, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$valign:I

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/lib/StzbInputView;->setAlign(II)V

    .line 86
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/StzbInputView;->addTextChangeWatcher()V

    .line 87
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$isNumberKeyboard:Z

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/StzbInputView;->setNumberKeyboard(Z)V

    .line 88
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$left:I

    int-to-float v1, v1

    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$100()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget v2, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$top:I

    int-to-float v2, v2

    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$100()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$width:I

    int-to-float v3, v3

    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$100()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget v4, p0, Lorg/cocos2dx/lib/StzbInputView$1;->val$height:I

    int-to-float v4, v4

    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$100()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2dx/lib/StzbInputView;->access$300(Lorg/cocos2dx/lib/StzbInputView;IIII)V

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Lorg/cocos2dx/lib/StzbInputView;->access$402(I)I

    return-void
.end method
