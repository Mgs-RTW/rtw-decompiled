.class Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$18;
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

    .line 1463
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$18;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    iput p2, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$18;->val$permissionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1465
    iget p1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$18;->val$permissionCode:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x147

    if-ne p1, v1, :cond_0

    .line 1466
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$18;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, p2

    invoke-static {v1, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x149

    if-ne p1, v1, :cond_1

    .line 1468
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity$18;->this$0:Lcom/netease/unisdk/gmbridge5/activity/GMWebviewActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, p2

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object p2, v2, v0

    invoke-static {v1, v2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
