.class Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;
.super Ljava/lang/Object;
.source "ScannerHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
        "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILcom/netease/mpay/oversea/scan/server/modules/ApiError;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    iget-object p2, p2, Lcom/netease/mpay/oversea/scan/server/modules/ApiError;->reason:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$600(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;)V
    .locals 8

    .line 112
    iget v0, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 114
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->data:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    .line 115
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$100(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->uuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->confirmUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->data:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->gameName:Ljava/lang/String;

    iget v6, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->webTokenPersist:I

    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    .line 123
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$200(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$Key;->CONFIRM_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 117
    invoke-static/range {v1 .. v7}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ConfirmHandler;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 125
    iget-object v0, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->uuid:Ljava/lang/String;

    sput-object v0, Lcom/netease/mpay/oversea/scan/Consts;->QRCODE_UUID:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->confirmUrl:Ljava/lang/String;

    sput-object v0, Lcom/netease/mpay/oversea/scan/Consts;->CONFIRM_PAY_URL:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-static {v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$300(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Lcom/netease/mpay/oversea/scan/ScannerCallback;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->data:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/scan/ScannerCallback;->onScannerNeedPay(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$400(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$500(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$600(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;->this$0:Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;

    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$500(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;->access$600(Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/tasks/handlers/ScannerHandler$2;->onSuccess(Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;)V

    return-void
.end method
