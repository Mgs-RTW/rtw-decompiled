.class public Lcom/netease/cloud/nos/android/core/UploadTask;
.super Landroid/os/AsyncTask;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/netease/cloud/nos/android/core/CallRet;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private MD5:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private callback:Lcom/netease/cloud/nos/android/core/Callback;

.field private context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private fileParam:Ljava/lang/Object;

.field protected volatile get:Lorg/apache/http/client/methods/HttpGet;

.field private isHttps:Z

.field private item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

.field private meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

.field private offset:J

.field protected volatile post:Lorg/apache/http/client/methods/HttpPost;

.field private token:Ljava/lang/String;

.field private volatile upCancelled:Z

.field private uploadContext:Ljava/lang/String;

.field protected volatile uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/netease/cloud/nos/android/core/UploadTask;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ZLcom/netease/cloud/nos/android/core/WanNOSObject;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    .line 56
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileName:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    .line 69
    iput-object p6, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    .line 70
    iput-object p7, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 71
    iput-object p8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    .line 72
    iput-boolean p9, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    .line 73
    new-instance p1, Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-direct {p1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;-><init>()V

    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .line 74
    iput-object p10, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    .line 75
    invoke-virtual {p10}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getContentMD5()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object p3

    .line 79
    invoke-virtual {p3}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMd5FileMaxSize()I

    move-result p3

    int-to-long p3, p3

    cmp-long p6, p1, p3

    if-gtz p6, :cond_0

    .line 80
    invoke-static {p5}, Lcom/netease/cloud/nos/android/utils/FileDigest;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private abort()V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 618
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "get method abort exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_1

    .line 624
    :try_start_1
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 626
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "post method abort exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private buildHttpEntity([B)Lorg/apache/http/HttpEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    return-object v0
.end method

.method private createCancelCallRet()Lcom/netease/cloud/nos/android/core/CallRet;
    .locals 9

    .line 632
    new-instance v8, Lcom/netease/cloud/nos/android/core/CallRet;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    const-string v6, "uploading is cancelled"

    const/16 v3, 0x258

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v8
.end method

.method private doUpload(I)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 18

    move-object/from16 v14, p0

    move/from16 v0, p1

    .line 205
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    const/16 v16, 0x0

    if-nez v1, :cond_0

    .line 206
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isPipelineEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-static {}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 210
    :goto_0
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file parameters: ContentMD5="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getContentMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", realMD5="

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ContentType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/core/WanNOSObject;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", chunkSize="

    .line 212
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x2bb

    const/16 v12, 0xc8

    if-eqz v1, :cond_4

    .line 215
    iget-object v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 216
    new-instance v11, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    iget-object v2, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    iget-object v3, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    iget-object v4, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->fileName:Ljava/lang/String;

    iget-object v5, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v6, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    .line 217
    iget-object v7, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    iget-boolean v8, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    iget-object v9, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    iget-object v10, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    iget-object v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    move-object/from16 v17, v1

    move-object v1, v11

    move-object v15, v11

    move-object/from16 v11, v17

    const/16 v0, 0xc8

    move/from16 v12, p1

    move-object/from16 v13, p0

    invoke-direct/range {v1 .. v13}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/lang/String;ZLcom/netease/cloud/nos/android/core/WanNOSObject;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ILcom/netease/cloud/nos/android/core/UploadTask;)V

    .line 216
    iput-object v15, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    .line 218
    iget-object v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    invoke-direct {v14, v1}, Lcom/netease/cloud/nos/android/core/UploadTask;->pipeUpload(Landroid/content/Context;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v1

    .line 220
    iget-object v2, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->getUploadContext()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 221
    iget-object v2, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploadType(I)V

    .line 222
    iget-boolean v2, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v2, :cond_1

    .line 223
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "pipeline upload is cancelled, Don\'t fall back"

    invoke-static {v0, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 227
    :cond_1
    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    if-eq v2, v0, :cond_3

    const/16 v4, 0x193

    if-eq v2, v4, :cond_3

    const/16 v4, 0x208

    if-eq v2, v4, :cond_3

    const/16 v8, 0x2bb

    if-eq v2, v8, :cond_3

    const/16 v4, 0x1f4

    if-eq v2, v4, :cond_3

    const/16 v4, 0x190

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 238
    :cond_2
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pipeline upload result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fall back to non pipeline"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    goto :goto_2

    .line 234
    :cond_3
    :goto_1
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pipeline upload result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Don\'t fall back"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    const/16 v0, 0xc8

    const/16 v8, 0x2bb

    const/4 v12, 0x0

    .line 244
    :goto_2
    :try_start_0
    iget-object v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 247
    iget-object v2, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v3, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    .line 248
    iget-object v4, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->fileName:Ljava/lang/String;

    iget-object v5, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    iget-object v6, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    iget-boolean v7, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    move-object/from16 v1, p0

    .line 247
    invoke-direct/range {v1 .. v7}, Lcom/netease/cloud/nos/android/core/UploadTask;->getBreakOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    const/16 v3, 0x194

    if-ne v2, v3, :cond_5

    const/4 v1, 0x0

    .line 250
    iput-object v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    goto :goto_3

    .line 251
    :cond_5
    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 252
    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    goto :goto_3

    :cond_6
    return-object v1

    .line 258
    :cond_7
    :goto_3
    iget-wide v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    iget-object v3, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-ltz v7, :cond_8

    iget-object v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-nez v3, :cond_9

    :cond_8
    iget-wide v1, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    cmp-long v3, v1, v5

    if-gez v3, :cond_a

    .line 260
    :cond_9
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 261
    new-instance v2, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "offset is invalid in server side, with offset:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    iget-wide v4, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", file length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-direct {v2, v3}, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-direct {v0, v8, v1, v2}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    return-object v0

    .line 265
    :cond_a
    iget-object v2, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v3, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    iget-wide v4, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J

    .line 266
    iget-object v7, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    iget-object v8, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->fileName:Ljava/lang/String;

    iget-object v9, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    iget-object v10, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    iget-boolean v11, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    move-object/from16 v1, p0

    move/from16 v6, p1

    .line 265
    invoke-direct/range {v1 .. v11}, Lcom/netease/cloud/nos/android/core/UploadTask;->putFile(Landroid/content/Context;Ljava/io/File;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v1

    if-eqz v12, :cond_b

    .line 268
    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    if-ne v2, v0, :cond_b

    .line 270
    invoke-static {}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->stop()V

    .line 274
    :cond_b
    iget-object v0, v14, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    if-eqz v12, :cond_c

    const/16 v16, 0x2

    const/4 v2, 0x2

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0, v2}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploadType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 277
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "offset result exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    new-instance v1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v2, 0x31f

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    return-object v1
.end method

.method private executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/cloud/nos/android/http/HttpResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 289
    :try_start_0
    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->newGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    if-eqz p3, :cond_0

    .line 291
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1, p3}, Lcom/netease/cloud/nos/android/utils/Util;->setHeader(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p1

    check-cast p1, Lorg/apache/http/client/methods/HttpGet;

    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    .line 293
    :cond_0
    invoke-static {p2}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 294
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 295
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_4

    .line 296
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    .line 297
    invoke-static {p2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p3

    .line 298
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    .line 300
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http get response is correct, response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 300
    invoke-static {v2, p3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :cond_1
    sget-object p3, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "http get response is failed."

    invoke-static {p3, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    new-instance p3, Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-direct {p3, p1, v1, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_2

    .line 315
    :try_start_2
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 317
    sget-object p2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "Consume Content exception"

    invoke-static {p2, v1, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    return-object p3

    :cond_3
    move-object p2, v0

    .line 307
    :cond_4
    :try_start_3
    new-instance p1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 p3, 0x383

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p1, p3, v1, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_5

    .line 315
    :try_start_4
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 317
    sget-object p3, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "Consume Content exception"

    invoke-static {p3, v1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    :cond_5
    :goto_2
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    return-object p1

    :catch_2
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_5

    :catch_3
    move-exception p1

    move-object p2, v0

    .line 310
    :goto_3
    :try_start_5
    sget-object p3, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "http get task exception"

    invoke-static {p3, v1, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    new-instance p3, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v1, 0x31f

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p3, v1, v2, p1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_6

    .line 315
    :try_start_6
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 317
    sget-object p2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "Consume Content exception"

    invoke-static {p2, v1, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    :cond_6
    :goto_4
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    return-object p3

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz p2, :cond_7

    .line 315
    :try_start_7
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception p2

    .line 317
    sget-object p3, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "Consume Content exception"

    invoke-static {p3, v1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    :cond_7
    :goto_6
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->get:Lorg/apache/http/client/methods/HttpGet;

    .line 322
    throw p1
.end method

.method private failureOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V
    .locals 2

    .line 637
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderSucc(I)V

    .line 638
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/monitor/Monitor;->add(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    .line 639
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    invoke-interface {v0, p1}, Lcom/netease/cloud/nos/android/core/Callback;->onFailure(Lcom/netease/cloud/nos/android/core/CallRet;)V

    return-void
.end method

.method private getBreakOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 8

    .line 327
    invoke-static {p1, p2, p6}, Lcom/netease/cloud/nos/android/utils/Util;->getUploadServer(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p6

    .line 328
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload servers: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-nos-token"

    .line 330
    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p5, 0x0

    .line 333
    :try_start_0
    array-length v1, p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    move-object v3, p5

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_1
    aget-object v4, p6, v2

    .line 334
    invoke-static {v4, p2, p3, p4}, Lcom/netease/cloud/nos/android/utils/Util;->buildQueryUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "break query upload server url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0, v4, p1, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->retryQuery(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :try_start_2
    iget-boolean v3, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v3, :cond_1

    return-object v4

    .line 342
    :cond_1
    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v3

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_3

    .line 343
    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v5, 0x194

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    return-object v4

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v3, p5

    .line 348
    :goto_2
    sget-object p2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string p3, "get break offset exception"

    invoke-static {p2, p3, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez v3, :cond_4

    .line 350
    new-instance v3, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 p1, 0x31f

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v3, p1, p2, p5}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    :cond_4
    :goto_3
    return-object v3
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "statusCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/cloud/nos/android/constants/Code;->getDes(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private pipeUpload(Landroid/content/Context;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 7

    .line 694
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setFileSize(J)V

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->isHttps:Z

    invoke-static {p1, v0, v1}, Lcom/netease/cloud/nos/android/utils/Util;->getUploadServer(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    .line 702
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    .line 703
    invoke-static {v2}, Lcom/netease/cloud/nos/android/utils/Util;->getIPString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 704
    iget-object v5, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v5, v2}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderIP(Ljava/lang/String;)V

    .line 706
    invoke-direct {p0, v4}, Lcom/netease/cloud/nos/android/core/UploadTask;->retryPipeUpload(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v2

    .line 707
    iget-boolean v4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v4, :cond_1

    goto :goto_1

    .line 711
    :cond_1
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_4

    const/16 v5, 0x193

    if-eq v4, v5, :cond_4

    const/16 v5, 0x208

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2bb

    if-eq v4, v5, :cond_4

    const/16 v5, 0x190

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 722
    :cond_2
    iget-object v4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploadRetryCount(I)V

    .line 723
    array-length v4, p1

    if-lt v3, v4, :cond_3

    .line 724
    sget-object v4, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v5, "pipeline upload failed with all tries"

    invoke-static {v4, v5}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_3
    sget-object v4, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http post failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 730
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline upload file exception"

    invoke-static {v0, v1, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v0, 0x31f

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, v0, v1, p1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    :cond_4
    :goto_1
    return-object v2
.end method

.method private post(Ljava/lang/String;[B)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 5

    .line 539
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "http post task is executing"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 544
    :try_start_0
    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 545
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "x-nos-token"

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->token:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 547
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Content-MD5"

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->MD5:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    if-eqz p1, :cond_1

    .line 550
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-static {p1, v1}, Lcom/netease/cloud/nos/android/utils/Util;->addHeaders(Lorg/apache/http/client/methods/HttpPost;Lcom/netease/cloud/nos/android/core/WanNOSObject;)V

    .line 552
    :cond_1
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, p2}, Lcom/netease/cloud/nos/android/core/UploadTask;->buildHttpEntity([B)Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 553
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 554
    sget-object p2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "http post task executing finished"

    invoke-static {p2, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 556
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 557
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_4

    .line 558
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    .line 559
    invoke-static {p2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    .line 561
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http post response is correct, response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_2
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http post response is failed, status code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpResult;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p1, v3, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    move-object p2, v0

    .line 571
    :cond_4
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 p1, 0x383

    invoke-direct {v2, p1, v0, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz p2, :cond_5

    .line 579
    :try_start_2
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_5

    :catch_2
    move-exception p1

    move-object p2, v0

    .line 574
    :goto_2
    :try_start_3
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "http post exception"

    invoke-static {v1, v2, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v1, 0x31f

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, v1, v3, p1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_5

    .line 579
    :try_start_4
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 581
    :goto_3
    sget-object p2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "Consume Content exception"

    invoke-static {p2, v1, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    :cond_5
    :goto_4
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v2

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz p2, :cond_6

    .line 579
    :try_start_5
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p2

    .line 581
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "Consume Content exception"

    invoke-static {v1, v2, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 585
    :cond_6
    :goto_6
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 586
    throw p1
.end method

.method private putFile(Landroid/content/Context;Ljava/io/File;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p8

    .line 384
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 385
    iget-object v5, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v5, v3, v4}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setFileSize(J)V

    .line 386
    sget-object v5, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file length is: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p9

    .line 391
    iput-object v5, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v6, p2

    move-object/from16 v13, p7

    .line 393
    :try_start_0
    invoke-static {v0, v6, v13}, Lcom/netease/cloud/nos/android/utils/Util;->fromInputStream(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Lcom/netease/cloud/nos/android/utils/FileInput;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v16, 0x0

    move-wide/from16 v10, p3

    move-object v6, v5

    const/4 v5, 0x1

    const/16 v17, 0x0

    :goto_0
    if-eqz v5, :cond_10

    const-wide/16 v18, 0x0

    cmp-long v7, v10, v3

    if-ltz v7, :cond_0

    cmp-long v7, v10, v18

    if-nez v7, :cond_10

    cmp-long v7, v3, v18

    if-nez v7, :cond_10

    .line 395
    :cond_0
    :try_start_1
    iget-boolean v7, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v7, :cond_1

    goto/16 :goto_5

    :cond_1
    move/from16 v12, p5

    int-to-long v7, v12

    sub-long v12, v3, v10

    .line 397
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v13, v7

    .line 398
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "upload block size is: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v12, p6

    move/from16 v9, p10

    .line 399
    invoke-static {v0, v12, v9}, Lcom/netease/cloud/nos/android/utils/Util;->getUploadServer(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v8

    .line 400
    invoke-virtual {v14, v10, v11, v13}, Lcom/netease/cloud/nos/android/utils/FileInput;->read(JI)[B

    move-result-object v7

    .line 402
    array-length v15, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v22, v5

    move-object/from16 v21, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v20, 0x0

    :goto_1
    if-lt v5, v15, :cond_2

    move-object/from16 v6, v21

    :goto_2
    move/from16 v5, v22

    :goto_3
    move-object/from16 v13, p7

    goto :goto_0

    :cond_2
    move/from16 v23, v6

    :try_start_2
    aget-object v6, v8, v5

    move-object/from16 v25, v7

    move-object/from16 v24, v8

    int-to-long v7, v13

    add-long/2addr v7, v10

    cmp-long v26, v7, v3

    if-ltz v26, :cond_3

    .line 404
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v8, "upload block is the last block"

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    .line 407
    :cond_3
    iget-object v7, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v7, v6}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderIP(Ljava/lang/String;)V

    .line 409
    iget-object v8, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    move/from16 v27, v13

    move-object/from16 v13, v25

    move-object/from16 v7, p6

    move/from16 v28, v15

    move-object/from16 v15, v24

    move-object/from16 v24, v8

    move-object/from16 v8, p7

    move-object/from16 v9, v24

    move-wide/from16 v29, v10

    move/from16 v12, v23

    .line 408
    invoke-static/range {v6 .. v12}, Lcom/netease/cloud/nos/android/utils/Util;->buildPostDataUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v6

    .line 410
    invoke-direct {v1, v6, v2, v0, v13}, Lcom/netease/cloud/nos/android/core/UploadTask;->retryPutFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    :try_start_3
    iget-boolean v7, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_5

    if-eqz v14, :cond_4

    .line 470
    invoke-virtual {v14}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_4
    return-object v6

    .line 414
    :cond_5
    :try_start_4
    invoke-virtual {v6}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_8

    .line 417
    invoke-virtual {v6}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "offset"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v10, v5

    .line 418
    invoke-virtual {v6}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "context"

    .line 419
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 420
    iget-object v7, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 421
    iget-object v7, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    iget-object v8, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    .line 422
    iget-object v9, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 421
    invoke-interface {v7, v8, v9, v5}, Lcom/netease/cloud/nos/android/core/Callback;->onUploadContextCreate(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_6
    iput-object v5, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/4 v5, 0x2

    .line 425
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v16

    iget-object v7, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-virtual {v1, v5}, Lcom/netease/cloud/nos/android/core/UploadTask;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v5, v17, 0x1

    .line 427
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http post success, offset: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", len: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", this is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " block uploaded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 427
    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v7, v10, v18

    if-nez v7, :cond_7

    cmp-long v7, v3, v18

    if-nez v7, :cond_7

    move/from16 v17, v5

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_7
    move/from16 v17, v5

    goto/16 :goto_2

    :cond_8
    const/16 v8, 0x190

    if-eq v7, v8, :cond_e

    const/16 v8, 0x193

    if-eq v7, v8, :cond_c

    const/16 v8, 0x208

    if-eq v7, v8, :cond_a

    .line 453
    iget-object v7, v1, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/4 v8, 0x1

    add-int/lit8 v9, v20, 0x1

    invoke-virtual {v7, v9}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploadRetryCount(I)V

    .line 454
    array-length v7, v15

    if-lt v9, v7, :cond_9

    .line 456
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 457
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "upload block failed with all tries, offset: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v11, v29

    .line 458
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 456
    invoke-static {v7, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    goto :goto_4

    :cond_9
    move-wide/from16 v11, v29

    .line 460
    :goto_4
    sget-object v7, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v8, "http post failed: "

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v21, v6

    move/from16 v20, v9

    move-wide v10, v11

    move-object v7, v13

    move-object v8, v15

    move/from16 v6, v23

    move/from16 v13, v27

    move/from16 v15, v28

    move-object/from16 v12, p6

    move/from16 v9, p10

    goto/16 :goto_1

    .line 444
    :cond_a
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "callback error."

    invoke-static {v0, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v14, :cond_b

    .line 470
    invoke-virtual {v14}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_b
    return-object v6

    :cond_c
    move-wide/from16 v11, v29

    .line 439
    :try_start_5
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "token is expired, token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", offset: "

    .line 440
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-static {v0, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v14, :cond_d

    .line 470
    invoke-virtual {v14}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_d
    return-object v6

    .line 447
    :cond_e
    :try_start_6
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v2, "bad request."

    invoke-static {v0, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v14, :cond_f

    .line 470
    invoke-virtual {v14}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_f
    return-object v6

    :catch_0
    move-exception v0

    move-object v5, v14

    move-object/from16 v6, v21

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v5, v14

    goto :goto_6

    :cond_10
    :goto_5
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_11
    return-object v6

    :catchall_1
    move-exception v0

    move-object v14, v5

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v6, v5

    .line 467
    :goto_6
    :try_start_7
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v3, "upload block exception"

    invoke-static {v2, v3, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_12

    .line 470
    invoke-virtual {v5}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    :cond_12
    return-object v6

    :goto_7
    if-eqz v14, :cond_13

    invoke-virtual {v14}, Lcom/netease/cloud/nos/android/utils/FileInput;->doClose()V

    .line 472
    :cond_13
    throw v0
.end method

.method private queryLBS(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "netease_pomelo_nos_net_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network connection change for bucket "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "netease_pomelo_nos_lbs_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/cloud/nos/android/utils/Util;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 170
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "netease_pomelo_nos_net_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netease/cloud/nos/android/utils/Util;->setData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "netease_pomelo_nos_lbs_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/android/utils/Util;->getBooleanData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 174
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "netease_pomelo_nos_server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/android/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "netease_pomelo_nos_lbs_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/android/utils/Util;->getLongData(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 176
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getRefreshInterval()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 177
    sget-boolean p1, Lcom/netease/cloud/nos/android/core/WanAccelerator;->isOpened:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x1

    .line 181
    sput-boolean p1, Lcom/netease/cloud/nos/android/core/WanAccelerator;->isOpened:Z

    .line 182
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "get lbs address"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 185
    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/netease/cloud/nos/android/core/IOManager;->getLBSAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v2

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 187
    iget-object v5, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setLbsUseTime(J)V

    .line 188
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 189
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object p1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const-string v1, "lbs"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setLbsIP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse LBS result: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v0, p1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setLbsSucc(I)V

    .line 198
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {v2}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpCode(Lcom/netease/cloud/nos/android/http/HttpResult;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setLbsHttpCode(I)V

    :goto_0
    return-object v2
.end method

.method private retryPipeUpload(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 7

    .line 657
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getChunkRetryCount()I

    move-result v0

    .line 658
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "user set the retry times is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v1, v0, :cond_4

    .line 663
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 664
    :cond_0
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "pipeline put file to server : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retryTime: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-virtual {v1, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upload(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v2

    .line 667
    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v1, :cond_1

    return-object v2

    .line 671
    :cond_1
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v1

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_3

    const/16 v4, 0x193

    if-eq v1, v4, :cond_3

    const/16 v4, 0x208

    if-eq v1, v4, :cond_3

    const/16 v4, 0x1f4

    if-eq v1, v4, :cond_3

    const/16 v4, 0x2bb

    if-eq v1, v4, :cond_3

    const/16 v4, 0x190

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 682
    :cond_2
    sget-object v4, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pipeline retry server "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/netease/cloud/nos/android/core/UploadTask;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    iget-object v4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setChunkRetryCount(I)V

    move v1, v3

    goto :goto_0

    .line 678
    :cond_3
    :goto_1
    sget-object p1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "pipeline upload result: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/netease/cloud/nos/android/core/UploadTask;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 686
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "put file exception"

    invoke-static {v0, v1, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    new-instance v2, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v0, 0x31f

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, v0, v1, p1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    :cond_4
    :goto_2
    return-object v2
.end method

.method private retryPutFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 5

    .line 478
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getChunkRetryCount()I

    move-result p2

    .line 479
    sget-object p3, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user set the retry times is : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p3, 0x1

    if-ge p3, p2, :cond_b

    .line 484
    :try_start_0
    iget-boolean p3, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz p3, :cond_0

    goto/16 :goto_3

    .line 485
    :cond_0
    sget-object p3, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "put block to server side with url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", length: "

    .line 486
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", retryTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-static {p3, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-direct {p0, p1, p4}, Lcom/netease/cloud/nos/android/core/UploadTask;->post(Ljava/lang/String;[B)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    :try_start_1
    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v1, :cond_1

    return-object p3

    .line 492
    :cond_1
    invoke-virtual {p3}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_8

    const/16 v3, 0x190

    if-eq v1, v3, :cond_7

    const/16 v3, 0x193

    if-eq v1, v3, :cond_6

    const/16 v3, 0x1f4

    if-eq v1, v3, :cond_5

    const/16 v3, 0x208

    if-eq v1, v3, :cond_4

    const/16 v3, 0x31f

    if-eq v1, v3, :cond_3

    const/16 v3, 0x383

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x5

    goto :goto_1

    :cond_3
    const/4 v0, -0x4

    goto :goto_1

    :cond_4
    return-object p3

    :cond_5
    return-object p3

    :cond_6
    return-object p3

    :cond_7
    return-object p3

    .line 495
    :cond_8
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http post result is back, result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retryTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-static {v1, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {p3}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v3, "context"

    .line 498
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "offset"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 499
    invoke-virtual {p3}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 500
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http post result success with context: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    iget-object v4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-static {v1, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    if-lez v0, :cond_a

    .line 525
    sget-object p1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "retryPutFile with success result: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 525
    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 529
    :cond_a
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    iget-object v3, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v3}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getChunkRetryCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setChunkRetryCount(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p3

    move p3, v2

    goto/16 :goto_0

    :catch_0
    move-exception p1

    move-object v1, p3

    goto :goto_2

    :catch_1
    move-exception p1

    .line 533
    :goto_2
    sget-object p2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string p3, "put file exception"

    invoke-static {p2, p3, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_3
    return-object v1
.end method

.method private retryQuery(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/cloud/nos/android/http/HttpResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 358
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getQueryRetryCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v1, v0, :cond_3

    .line 361
    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    sget-object v1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "query offset with url: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retry times: "

    .line 363
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cloud/nos/android/core/UploadTask;->executeQueryTask(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v2

    .line 366
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v1

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_1

    .line 367
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object p1

    .line 368
    sget-object p2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "get break offset result:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    iget-object v4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->getQueryRetryCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setQueryRetryCount(I)V

    .line 373
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v1

    const/16 v4, 0x194

    if-ne v1, v4, :cond_2

    .line 374
    sget-object p1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string p2, "upload file is expired in server side."

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2
.end method

.method private successOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderSucc(I)V

    .line 644
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/monitor/Monitor;->add(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    .line 645
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    invoke-interface {v0, p1}, Lcom/netease/cloud/nos/android/core/Callback;->onSuccess(Lcom/netease/cloud/nos/android/core/CallRet;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 596
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "uploading is canceling"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploader:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    .line 603
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/core/UploadTask;->abort()V

    .line 604
    invoke-virtual {p0, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->cancel(Z)Z

    .line 605
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/core/UploadTask;->abort()V

    .line 606
    invoke-virtual {p0, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->cancel(Z)Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/netease/cloud/nos/android/core/CallRet;
    .locals 11

    .line 88
    :try_start_0
    iget-object p1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/NetworkType;->getNetWorkType(Landroid/content/Context;)Lcom/netease/cloud/nos/android/utils/NetworkType;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/utils/NetworkType;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setNetEnv(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {}, Lcom/netease/cloud/nos/android/utils/Util;->getIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setClientIP(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setBucketName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/utils/NetworkType;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->queryLBS(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v0

    const/16 v1, 0xc8

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "netease_pomelo_nos_server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/Util;->getData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 97
    new-instance p1, Lcom/netease/cloud/nos/android/core/CallRet;

    iget-object v4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 98
    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v6

    const-string v1, "requestID"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/Util;->getResultString(Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "callbackRetMsg"

    .line 99
    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/Util;->getResultString(Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, p1

    .line 97
    invoke-direct/range {v3 .. v10}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object p1

    .line 103
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/utils/NetworkType;->getChunkSize()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->doUpload(I)Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object p1

    if-nez p1, :cond_1

    .line 106
    new-instance p1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v0, 0x1f4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    invoke-direct {p1, v0, v4, v5}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 108
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 109
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->offset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    const/4 v0, 0x0

    sub-long/2addr v4, v2

    long-to-double v2, v4

    const-wide v8, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v8

    div-double/2addr v6, v2

    double-to-float v0, v6

    .line 110
    :try_start_1
    sget-object v2, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "upload result:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", speed:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "KB/S"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-virtual {v0, v4, v5}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderUseTime(J)V

    .line 113
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpCode(Lcom/netease/cloud/nos/android/http/HttpResult;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderHttpCode(I)V

    .line 115
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->bucketName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "netease_pomelo_nos_lbs_status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/cloud/nos/android/utils/Util;->setBooleanData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 119
    :cond_2
    new-instance v8, Lcom/netease/cloud/nos/android/core/CallRet;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getStatusCode()I

    move-result v3

    const-string v0, "requestID"

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/android/utils/Util;->getResultString(Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "callbackRetMsg"

    .line 121
    invoke-static {p1, v0}, Lcom/netease/cloud/nos/android/utils/Util;->getResultString(Lcom/netease/cloud/nos/android/http/HttpResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/http/HttpResult;->getMsg()Lorg/json/JSONObject;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    .line 119
    invoke-direct/range {v0 .. v7}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v8

    :catch_0
    move-exception p1

    move-object v7, p1

    .line 125
    sget-object p1, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v0, "upload exception"

    invoke-static {p1, v0, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    new-instance p1, Lcom/netease/cloud/nos/android/core/CallRet;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/16 v3, 0x31f

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object p1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->doInBackground([Ljava/lang/Object;)Lcom/netease/cloud/nos/android/core/CallRet;

    move-result-object p1

    return-object p1
.end method

.method public getUploadProgress(JJ)V
    .locals 3

    .line 651
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uploading Progress offset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", file length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 652
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/netease/cloud/nos/android/core/UploadTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public isUpCancelled()Z
    .locals 1

    .line 610
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->upCancelled:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 2

    .line 158
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "on cancelled"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderSucc(I)V

    .line 160
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->setUploaderHttpCode(I)V

    .line 161
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/monitor/Monitor;->add(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    .line 162
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    invoke-direct {p0}, Lcom/netease/cloud/nos/android/core/UploadTask;->createCancelCallRet()Lcom/netease/cloud/nos/android/core/CallRet;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/cloud/nos/android/core/Callback;->onCanceled(Lcom/netease/cloud/nos/android/core/CallRet;)V

    return-void
.end method

.method protected onPostExecute(Lcom/netease/cloud/nos/android/core/CallRet;)V
    .locals 10

    .line 141
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "on post executed"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 143
    new-instance p1, Lcom/netease/cloud/nos/android/core/CallRet;

    iget-object v3, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->uploadContext:Ljava/lang/String;

    const/16 v5, 0x3e7

    const-string v6, ""

    const-string v7, ""

    const-string v8, "result is null"

    const/4 v9, 0x0

    move-object v2, p1

    .line 144
    invoke-direct/range {v2 .. v9}, Lcom/netease/cloud/nos/android/core/CallRet;-><init>(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->failureOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V

    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/core/CallRet;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->failureOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/core/CallRet;->getHttpCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 150
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->successOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->failureOperation(Lcom/netease/cloud/nos/android/core/CallRet;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/cloud/nos/android/core/CallRet;

    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/core/UploadTask;->onPostExecute(Lcom/netease/cloud/nos/android/core/CallRet;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 7

    .line 133
    sget-object v0, Lcom/netease/cloud/nos/android/core/UploadTask;->LOGTAG:Ljava/lang/String;

    const-string v1, "on process update"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 134
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 135
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 136
    iget-object v1, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/core/UploadTask;->fileParam:Ljava/lang/Object;

    invoke-interface/range {v1 .. v6}, Lcom/netease/cloud/nos/android/core/Callback;->onProcess(Ljava/lang/Object;JJ)V

    return-void
.end method
