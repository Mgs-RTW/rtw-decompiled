.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showImgPickDialog()V
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

    .line 1253
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, 0x1

    if-eqz p2, :cond_3

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1265
    :cond_0
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {p2, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2902(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)Z

    .line 1266
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const-string v0, "android.permission.CAMERA"

    invoke-static {p2, v0}, Lcom/netease/unisdk/gmbridge5/utils/PermissionUtil;->checkPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1268
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$3100(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    goto :goto_0

    .line 1270
    :cond_1
    sget p2, Lcom/netease/unisdk/gmbridge5/GmSettings;->ENABLE_UNISDK_PERMISSION_TIPS:I

    const/16 v1, 0x147

    if-eqz p2, :cond_2

    .line 1271
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {p1, v1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$800(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;I)V

    goto :goto_0

    .line 1273
    :cond_2
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    new-array p1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    invoke-static {p2, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 1260
    :cond_3
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {p2, p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$2902(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Z)Z

    .line 1261
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$13;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$3000(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)V

    :goto_0
    return-void
.end method
