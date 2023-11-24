.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

.field final synthetic val$htr:Landroid/webkit/WebView$HitTestResult;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;Landroid/webkit/WebView$HitTestResult;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->val$htr:Landroid/webkit/WebView$HitTestResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 620
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->val$htr:Landroid/webkit/WebView$HitTestResult;

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$602(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/utils/PermissionUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {p1, v1}, Lcom/netease/unisdk/gmbridge5/utils/PermissionUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 624
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge5/utils/BitmapUtil;->returnNetworkImageBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 626
    :cond_0
    sget p1, Lcom/netease/unisdk/gmbridge5/GmSettings;->ENABLE_UNISDK_PERMISSION_TIPS:I

    const/16 v2, 0x149

    if-eqz p1, :cond_1

    .line 627
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {p1, v2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$800(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;I)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {p1, v3, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 632
    :goto_0
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8$1;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$8;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iget-object p1, p1, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->saveImageConfirmDialog:Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;

    invoke-virtual {p1}, Lcom/netease/unisdk/gmbridge5/view/SaveImageConfirmDialog;->dismiss()V

    return-void
.end method
