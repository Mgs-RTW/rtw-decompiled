.class public Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;
.super Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;
.source "QrScanConfirmRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest<",
        "Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private confirmData:Ljava/lang/String;

.field private isRemember:Z

.field private url:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/scan/tasks/requests/ScannerRequest;-><init>(ILjava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->uuid:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->url:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->confirmData:Ljava/lang/String;

    .line 30
    iput-boolean p4, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->isRemember:Z

    return-void
.end method


# virtual methods
.method protected getDatas(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
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

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->confirmData:Ljava/lang/String;

    const-string v2, "confirm_data"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->isRemember:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "is_remember"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/scan/server/net/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;->url:Ljava/lang/String;

    return-object v0
.end method
