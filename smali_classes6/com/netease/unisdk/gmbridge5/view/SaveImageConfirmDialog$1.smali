.class Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;
.super Ljava/lang/Object;
.source "SaveImageConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;->this$0:Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;->val$textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;->this$0:Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->access$100(Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;->val$onClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;->val$textView:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return p2

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;->val$textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog$1;->this$0:Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->access$000(Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return p2
.end method
