.class public Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanRequest;
.super Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;
.source "QrScanRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest<",
        "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;-><init>(ILjava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanRequest;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getDatas(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/scan/server/net/NameValuePair;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p1, "qrcode"

    .line 36
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanRequest;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;-><init>()V

    const-string v1, "uuid"

    .line 38
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->uuid:Ljava/lang/String;

    const-string v1, "status"

    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->status:I

    const-string v1, "data"

    .line 40
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->data:Ljava/lang/String;

    const-string p1, "confirm_url"

    .line 42
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->confirmUrl:Ljava/lang/String;

    const-string p1, "app_data"

    .line 44
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanRequest;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "name"

    .line 45
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->gameName:Ljava/lang/String;

    const-string p2, "web_token_persist"

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;->webTokenPersist:I

    return-object v0
.end method

.method protected bridge synthetic parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanRequest;->parseContent(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;

    move-result-object p1

    return-object p1
.end method
