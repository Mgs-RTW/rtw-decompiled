.class Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;
.super Ljava/lang/Object;
.source "SdkNeteaseQrCode.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnCodeScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkNeteaseQrCode;->openScanner(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$sdkData:Ljava/util/Map;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkNeteaseQrCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$sdkData:Ljava/util/Map;

    iput-object p5, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public codeScannerFinish(ILjava/lang/String;)V
    .locals 9

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unisdkQrCodeScanner, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkNeteaseQrCode"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    .line 415
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$800(Lcom/netease/ntunisdk/SdkNeteaseQrCode;)Lcom/netease/mpay/oversea/scan/CodeScannerApi;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$uid:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$token:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->val$sdkData:Ljava/util/Map;

    new-instance v7, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3$1;-><init>(Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;)V

    iget-object p1, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    .line 439
    invoke-static {p1}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$700(Lcom/netease/ntunisdk/SdkNeteaseQrCode;)Lcom/netease/mpay/oversea/scan/ScannerOptions;

    move-result-object v8

    move-object v3, p2

    .line 417
    invoke-virtual/range {v2 .. v8}, Lcom/netease/mpay/oversea/scan/CodeScannerApi;->handlerQrCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/netease/mpay/oversea/scan/ScannerCallback;Lcom/netease/mpay/oversea/scan/ScannerOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 442
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlerQrCode error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNeteaseQrCode$3;->this$0:Lcom/netease/ntunisdk/SdkNeteaseQrCode;

    invoke-static {v0, p1, p2}, Lcom/netease/ntunisdk/SdkNeteaseQrCode;->access$900(Lcom/netease/ntunisdk/SdkNeteaseQrCode;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
