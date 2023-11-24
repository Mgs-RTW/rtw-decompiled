.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$17;
.super Ljava/lang/Object;
.source "GMWebviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->showPermissionReasonDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

.field final synthetic val$permissionCode:I


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;I)V
    .locals 0

    .line 1472
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$17;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iput p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$17;->val$permissionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1474
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$17;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$3200(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$17;->val$permissionCode:I

    const/16 p2, 0x147

    if-ne p1, p2, :cond_0

    .line 1475
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$17;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;->access$3300(Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
