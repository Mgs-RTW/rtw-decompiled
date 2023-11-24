.class public Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;
.super Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;
.source "QrScanTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask<",
        "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/widgets/ProgressView;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/scan/widgets/ProgressView;",
            "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
            "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;",
            ">;)V"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/netease/mpay/oversea/scan/Consts;->APP_ID:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p4}, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    .line 26
    iput-object p2, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;->url:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p3}, Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;->setProgress(Lcom/netease/mpay/oversea/scan/widgets/Progress;)Lcom/netease/mpay/oversea/scan/server/BaseApiTask;

    return-void
.end method


# virtual methods
.method protected onPostPerform(Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo<",
            "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;",
            ">;",
            "Lcom/netease/mpay/oversea/scan/server/ServerApiCallback<",
            "Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/scan/tasks/ServerApiTask;->onPostPerform(Lcom/netease/mpay/oversea/scan/server/DataStructure$StInfo;Lcom/netease/mpay/oversea/scan/server/ServerApiCallback;)V

    return-void
.end method

.method protected performInBackground()Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;->mGameId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanRequest;

    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/scan/tasks/requests/QrScanRequest;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/scan/server/modules/ServerApi;->fetch(Lcom/netease/mpay/oversea/scan/server/modules/request/Request;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;

    return-object v0
.end method

.method protected bridge synthetic performInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/scan/server/modules/ApiCallException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/tasks/QrScanTask;->performInBackground()Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;

    move-result-object v0

    return-object v0
.end method
