.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

.field final synthetic val$request:Landroid/webkit/PermissionRequest;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;Landroid/webkit/PermissionRequest;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->val$request:Landroid/webkit/PermissionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 897
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iget-object v0, v0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->val$request:Landroid/webkit/PermissionRequest;

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2602(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/webkit/PermissionRequest;)Landroid/webkit/PermissionRequest;

    .line 898
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 900
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 901
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gm_bridge"

    invoke-static {v6, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "android.webkit.resource.AUDIO_CAPTURE"

    .line 902
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 903
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iget-object v4, v4, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-static {v4, v5}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 904
    sget v4, Lcom/netease/unisdk/gmbridge5/GmSettings;->ENABLE_UNISDK_PERMISSION_TIPS:I

    if-eqz v4, :cond_0

    .line 905
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iget-object v4, v4, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2700(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    goto :goto_1

    .line 907
    :cond_0
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iget-object v4, v4, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v2

    const/16 v5, 0x148

    invoke-static {v4, v6, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 910
    :cond_1
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iget-object v4, v4, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/PermissionRequest;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 911
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iget-object v4, v4, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/PermissionRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iget-object v5, v5, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v5}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/PermissionRequest;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 912
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10$3;->this$1:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;

    iget-object v4, v4, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$10;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {v4}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2600(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Landroid/webkit/PermissionRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    const-string v4, "onPermissionRequest --"

    .line 913
    invoke-static {v6, v4}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
