.class public Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;
.super Ljava/lang/Object;
.source "ImgManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge ImgManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->upload(Ljava/lang/String;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V

    return-void
.end method

.method private static callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$2;-><init>(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static createSuitableImgFile(Landroid/content/Context;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    .line 129
    invoke-static {p0, p1}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->createBitmap(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    if-nez v0, :cond_1

    const-string p0, "gm_bridge ImgManager"

    const-string p2, "can\'t create a bitmap"

    .line 135
    invoke-static {p0, p2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 140
    :cond_1
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->getImgSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "gm_bridge ImgManager"

    const-string p2, "can\'t get a save path"

    .line 142
    invoke-static {p0, p2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 146
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p0

    :cond_3
    const-string p0, "gm_bridge ImgManager"

    const-string p2, "can\'t save bitmap"

    .line 149
    invoke-static {p0, p2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    .line 102
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 107
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "%s=%s;"

    .line 108
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "gm_bridge ImgManager"

    const-string v1, "cookie = %s"

    .line 111
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_1

    :catch_1
    move-exception p0

    .line 113
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method private static upload(Ljava/lang/String;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V
    .locals 7

    const/4 v0, 0x0

    .line 60
    :try_start_0
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 61
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 62
    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->filefield:Ljava/lang/String;

    const-string v5, "application/octet-stream"

    .line 63
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v2

    .line 66
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v4, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->uploadUrl:Ljava/lang/String;

    .line 67
    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Cookie"

    iget-object v5, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->cookies:Ljava/lang/String;

    .line 68
    invoke-static {v5}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 69
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gm_bridge ImgManager"

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "imageId"

    .line 77
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v2, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 83
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    iget-object p1, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager;->callbackInUIThread(Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :goto_0
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    throw p1
.end method

.method public static uploadImg(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    .line 37
    iget-object p1, p1, Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;->callback:Ljava/lang/String;

    invoke-interface {p3, p0, p1}, Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;->onFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/netease/unisdk/gmbridge/imgupload/ImgManager$1;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/netease/unisdk/gmbridge/imgupload/UploadInfo;Lcom/netease/unisdk/gmbridge/imgupload/IUploadFinishListener;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method
