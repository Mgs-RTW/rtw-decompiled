.class final Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;
.super Ljava/lang/Object;
.source "VoiceUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->upload(Landroid/content/Context;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

.field final synthetic val$voiceFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 33
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "http://gmsdk.gameyw.netease.com/nos/gen_token"

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 35
    :try_start_0
    new-instance v4, Lokhttp3/OkHttpClient;

    invoke-direct {v4}, Lokhttp3/OkHttpClient;-><init>()V

    .line 36
    invoke-virtual {v4, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 37
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "token"

    .line 38
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "objectName"

    .line 39
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bucketName"

    .line 40
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    iget-object v6, v1, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "gm_bridge VoiceUploader"

    const-string v8, "[token=%s,objectName=%s,bucketName=%s,contentType=%s]"

    const/4 v9, 0x4

    .line 47
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v2

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    aput-object v6, v9, v10

    invoke-static {v7, v8, v9}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance v15, Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-direct {v15}, Lcom/netease/cloud/nos/android/core/WanNOSObject;-><init>()V

    .line 51
    invoke-virtual {v15, v4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->setNosBucketName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v15, v5}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->setNosObjectName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v15, v6}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->setContentType(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v15, v0}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->setUploadToken(Ljava/lang/String;)V

    .line 60
    :try_start_1
    iget-object v11, v1, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$context:Landroid/content/Context;

    new-instance v12, Ljava/io/File;

    iget-object v6, v1, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    iget-object v14, v1, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$voiceFilePath:Ljava/lang/String;

    new-instance v6, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;

    invoke-direct {v6, v1, v0, v5, v4}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1$1;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v6

    invoke-static/range {v11 .. v16}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->putFileByHttp(Landroid/content/Context;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/WanNOSObject;Lcom/netease/cloud/nos/android/core/Callback;)Lcom/netease/cloud/nos/android/core/UploadTaskExecutor;
    :try_end_1
    .catch Lcom/netease/cloud/nos/android/exception/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;->printStackTrace()V

    .line 90
    iget-object v0, v1, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    invoke-static {v0, v2, v3, v3, v3}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->access$000(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    iget-object v0, v1, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader$1;->val$listener:Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;

    invoke-static {v0, v2, v3, v3, v3}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->access$000(Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
