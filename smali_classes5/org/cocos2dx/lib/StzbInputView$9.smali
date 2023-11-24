.class Lorg/cocos2dx/lib/StzbInputView$9;
.super Ljava/lang/Object;
.source "StzbInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/StzbInputView;->addTextChangeWatcher()V
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

    .line 376
    iput-object p1, p0, Lorg/cocos2dx/lib/StzbInputView$9;->this$0:Lorg/cocos2dx/lib/StzbInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-static {p1}, Lorg/cocos2dx/lib/StzbInputView;->access$1000(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
