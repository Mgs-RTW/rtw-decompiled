.class Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;
.super Ljava/lang/Object;
.source "ConfirmHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
        "Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
    .locals 7

    .line 130
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$500(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Lcom/netease/mpay/oversea/scan/widgets/Alerters;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->reason:Ljava/lang/String;

    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    .line 131
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$400(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c01d6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/scan/widgets/Alerters;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;)V
    .locals 2

    .line 122
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->val$data:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object v0, v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$200(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 125
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->this$1:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->access$300(Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p1, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler$3$1;->onSuccess(Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;)V

    return-void
.end method
