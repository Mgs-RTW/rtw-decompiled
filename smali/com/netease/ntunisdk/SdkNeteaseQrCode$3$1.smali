.class Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;
.super Ljava/lang/Object;
.source "SdkNeteaseQrCode.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/ScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->codeScannerFinish(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScannerCancel()V
    .locals 3

    const-string v0, "onScannerCancel"

    const-string v1, "SdkNeteaseQrCode"

    .line 421
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    iget-object v1, v1, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$200(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;)V

    return-void
.end method

.method public onScannerLoginSuccess(Ljava/lang/String;)V
    .locals 4

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScannerLoginSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkNeteaseQrCode"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    iget-object v1, v1, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    iget-object v2, v2, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$extra:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v3, p1, v2}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$300(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$400(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;)V

    return-void
.end method

.method public onScannerNeedPay(Ljava/lang/String;)V
    .locals 4

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScannerNeedPay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkNeteaseQrCode"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    iget-object v1, v1, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    iget-object v2, v2, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    iget-object v3, v3, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$extra:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$300(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$500(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;->this$1:Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$600(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/lang/String;)V

    return-void
.end method
