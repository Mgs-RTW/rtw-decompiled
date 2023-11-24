.class final Lcom/netease/environment/http/DownloadUtils$2;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Lcom/netease/environment/listener/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/environment/http/DownloadUtils;->downloadRegularFile(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field startTime:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$regexFileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$regexFileUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    .line 164
    iput-wide p1, p0, Lcom/netease/environment/http/DownloadUtils$2;->startTime:J

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 7

    .line 177
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download data file result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/environment/utils/FileUtils;->getTempFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/environment/utils/FileUtils;->getRegexFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p1}, Lcom/netease/environment/utils/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getRC4Key()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/environment/utils/RC4Utils;->decryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Lcom/netease/environment/utils/JsonUtils;->isJSONObjectFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "settings"

    .line 189
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 190
    iget-object v3, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    const-string v4, "enable"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/netease/environment/config/SdkConfig;->saveEnableState(Landroid/content/Context;Z)V

    .line 191
    iget-object v3, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    const-string v4, "updateInterval"

    const-wide/32 v5, 0x36ee80

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/netease/environment/config/SdkConfig;->saveUpdateInterval(Landroid/content/Context;J)V

    .line 192
    iget-object v3, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    const-string v4, "taskTimeout"

    const-wide/16 v5, 0x3e8

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/netease/environment/config/SdkConfig;->saveTaskTimeout(Landroid/content/Context;J)V

    const-string v1, "regex"

    .line 193
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/environment/model/RegexGetter;->setPatternMap(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 195
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fail to save settings"

    invoke-static {v2, v3}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/netease/environment/config/SdkConfig;->saveUpdateDataTime(Landroid/content/Context;J)V

    .line 199
    invoke-static {p1, v0}, Lcom/netease/environment/utils/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 200
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regex file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getGameId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$regexFileUrl:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/environment/config/SdkConfig;->saveRegexFileUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new regularVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/environment/EnvManager;->getRegularVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "check data file file done"

    invoke-static {p1, v0}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/netease/environment/http/DownloadUtils$2;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/environment/config/SdkConfig;->saveDownloadState(Landroid/content/Context;Z)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/environment/http/DownloadUtils$2;->startTime:J

    sub-long/2addr v0, v2

    .line 211
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download regular and parse cost time\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "download"

    .line 212
    invoke-static {p1, v0, v1}, Lcom/netease/environment/config/LogConfig;->saveTimeLog(Ljava/lang/String;J)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 168
    invoke-static {}, Lcom/netease/environment/http/DownloadUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download data file start"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/environment/http/DownloadUtils$2;->startTime:J

    return-void
.end method
