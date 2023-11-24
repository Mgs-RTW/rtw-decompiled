.class public Lcom/netease/environment/task/InitialTask;
.super Landroid/os/AsyncTask;
.source "InitialTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    const-class v0, Lcom/netease/environment/task/InitialTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/netease/environment/task/InitialTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/environment/task/InitialTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 32
    invoke-static {}, Lcom/netease/environment/config/SdkConstants;->getInitUrl()Ljava/lang/String;

    move-result-object p1

    .line 33
    iget-object v2, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/netease/environment/task/InitialTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/environment/config/LogConfig;->getPostLog(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    iget-object v3, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before encode init param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/netease/environment/utils/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const v4, 0x19000

    if-le v3, v4, :cond_1

    .line 41
    iget-object v2, p0, Lcom/netease/environment/task/InitialTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/environment/config/LogConfig;->removeAll(Landroid/content/Context;)V

    const-string v2, ""

    .line 44
    :cond_1
    iget-object v3, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after encode init param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p1, v2}, Lcom/netease/environment/http/HttpPost;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v2, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 49
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v4, p0, Lcom/netease/environment/task/InitialTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/environment/config/LogConfig;->removeAll(Landroid/content/Context;)V

    const-string v4, "url"

    .line 51
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    iget-object v5, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the regex url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v4}, Lcom/netease/environment/utils/HttpUtils;->verifyURL(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 54
    invoke-static {}, Lcom/netease/environment/utils/DeviceUtils;->isOverAndroidP()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "http://"

    const-string v6, "https://"

    .line 55
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    :cond_2
    iget-object v5, p0, Lcom/netease/environment/task/InitialTask;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getGameId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/netease/environment/config/SdkConfig;->getRegexFileUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    iget-object v6, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the native regex url is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 60
    iget-object v5, p0, Lcom/netease/environment/task/InitialTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/netease/environment/http/DownloadUtils;->downloadRegularFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    iget-object v4, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    const-string v5, "the regex file is out of date"

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v4, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    const-string v5, "the regex file is latest"

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string v4, "rstr"

    const-string v5, "***"

    .line 67
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/environment/config/SdkData;->setReplaceData(Ljava/lang/String;)V

    const-string v4, "t2s"

    const/4 v5, 0x1

    .line 68
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Lcom/netease/environment/config/SdkData;->setSimplify(Z)V

    const-string v4, "f2h"

    .line 69
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Lcom/netease/environment/config/SdkData;->setToDBC(Z)V

    const-string v4, "un"

    .line 70
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lcom/netease/environment/config/SdkData;->setNormalize(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    iget-object v3, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to parse init result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 76
    iget-object p1, p0, Lcom/netease/environment/task/InitialTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get regex url cost time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "getUrl"

    .line 77
    invoke-static {p1, v3, v4}, Lcom/netease/environment/config/LogConfig;->saveTimeLog(Ljava/lang/String;J)V

    return-object v2
.end method
