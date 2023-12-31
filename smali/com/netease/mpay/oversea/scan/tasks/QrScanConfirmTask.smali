.class public Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;
.super Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;
.source "QrScanConfirmTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask<",
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
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
            "Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/scan/widgets/Progress;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/scan/widgets/Progress;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netease/mpay/oversea/scan/widgets/Progress;",
            "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
            "Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->APP_ID:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p7}, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    .line 41
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->uuid:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->url:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->confirmData:Ljava/lang/String;

    .line 44
    iput-boolean p5, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->isRemember:Z

    .line 45
    invoke-virtual {p0, p6}, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->setProgress(Lcom/netease/mpay/oversea/scan/widgets/Progress;)Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    return-void
.end method


# virtual methods
.method protected performInBackground()Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->mGameId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->uuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->confirmData:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->isRemember:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanConfirmRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->fetch(Lcom/netease/mpay/oversea/scan/server/modules/request/Request;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    return-object v0
.end method

.method protected bridge synthetic performInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/tasks/QrScanConfirmTask;->performInBackground()Lcom/netease/mpay/oversea/scan/server/modules/response/StringResponse;

    move-result-object v0

    return-object v0
.end method
