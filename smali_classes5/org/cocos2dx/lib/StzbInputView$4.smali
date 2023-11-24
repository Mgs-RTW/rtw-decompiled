.class Lorg/cocos2dx/lib/StzbInputView$4;
.super Ljava/lang/Object;
.source "StzbInputView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/StzbInputView;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/StzbInputView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/StzbInputView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$4;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 152
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 153
    new-instance v0, Lorg/cocos2dx/lib/StzbInputView$4$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/StzbInputView$4$1;-><init>(Lorg/cocos2dx/lib/StzbInputView$4;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
