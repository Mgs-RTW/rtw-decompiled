.class final Lorg/cocos2dx/lib/StzbInputView$2;
.super Ljava/lang/Object;
.source "StzbInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/StzbInputView;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 99
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lorg/cocos2dx/lib/StzbInputView;->access$200()Lorg/cocos2dx/lib/StzbInputView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/StzbInputView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 101
    invoke-static {v0}, Lorg/cocos2dx/lib/StzbInputView;->access$202(Lorg/cocos2dx/lib/StzbInputView;)Lorg/cocos2dx/lib/StzbInputView;

    return-void
.end method
