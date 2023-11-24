.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 611
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    .line 613
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 614
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 616
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->saveImageConfirmDialog:Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;

    new-instance v1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;Landroid/webkit/WebView$HitTestResult;)V

    new-instance p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$2;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$2;-><init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;)V

    invoke-virtual {v0, v1, p1}, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->showOfSaveImageDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method
