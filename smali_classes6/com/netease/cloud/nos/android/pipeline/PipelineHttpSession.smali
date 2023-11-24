.class public Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;
.super Ljava/lang/Object;
.source "PipelineHttpSession.java"


# static fields
.field private static final EACH_PART_SIZE:I = 0x20000

.field private static final LOGTAG:Ljava/lang/String;

.field private static isStop:Z

.field private static stopTime:J


# instance fields
.field private MD5:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private callback:Lcom/netease/cloud/nos/android/core/Callback;

.field private chunkSize:I

.field private client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

.field private completeCondition:Ljava/lang/Object;

.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private fileParam:Ljava/lang/Object;

.field private volatile hasBreakQuery:Z

.field private volatile isComplete:Z

.field private isHttps:Z

.field private volatile isSuccess:I

.field private volatile lastResponseTime:J

.field private meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

.field private volatile respNum:J

.field private volatile responseOffset:J

.field private volatile rs:Lcom/netease/cloud/nos/android/http/HttpResult;

.field private volatile sendOffset:J

.field private timeout:I

.field private token:Ljava/lang/String;

.field private totalLength:J

.field private volatile upCancelled:Z

.field private volatile uploadContext:Ljava/lang/String;

.field private uploadTask:Lcom/netease/cloud/nos/android/core/UploadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Ljava/lang/String;ZLcom/netease/cloud/nos/android/core/WanNOSObject;Ljava/lang/String;Lcom/netease/cloud/nos/android/core/Callback;ILcom/netease/cloud/nos/android/core/UploadTask;)V
    .locals 6

    move-object v0, p0

    move v1, p7

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 40
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileName:Ljava/lang/String;

    .line 41
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->token:Ljava/lang/String;

    .line 42
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    .line 43
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    const-wide/16 v3, 0x0

    .line 45
    iput-wide v3, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    .line 46
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->file:Ljava/io/File;

    .line 47
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    .line 49
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    .line 50
    iput-wide v3, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    .line 51
    iput-wide v3, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 52
    iput-wide v3, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    const/4 v5, 0x0

    .line 53
    iput-boolean v5, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    .line 54
    iput v5, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    .line 55
    iput-boolean v5, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    .line 56
    iput-wide v3, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 57
    iput-boolean v5, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    .line 58
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 60
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadTask:Lcom/netease/cloud/nos/android/core/UploadTask;

    .line 61
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    const/high16 v2, 0x20000

    .line 63
    iput v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->chunkSize:I

    const/16 v2, 0x7530

    .line 64
    iput v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    .line 65
    iput-boolean v5, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isHttps:Z

    .line 66
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    move-object v2, p2

    .line 73
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->bucketName:Ljava/lang/String;

    move-object v2, p3

    .line 74
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileName:Ljava/lang/String;

    move-object v2, p6

    .line 75
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    move-object/from16 v2, p10

    .line 76
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    move-object v2, p4

    .line 77
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileParam:Ljava/lang/Object;

    .line 78
    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    move-object v2, p5

    .line 79
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->file:Ljava/io/File;

    move-object v2, p1

    .line 81
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->token:Ljava/lang/String;

    move-object v2, p8

    .line 82
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    .line 83
    iput-boolean v1, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isHttps:Z

    move-object v2, p9

    .line 84
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    move-object/from16 v2, p12

    .line 86
    iput-object v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadTask:Lcom/netease/cloud/nos/android/core/UploadTask;

    .line 87
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getSoTimeout()I

    move-result v2

    iput v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    move/from16 v2, p11

    .line 88
    iput v2, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->chunkSize:I

    if-eqz v1, :cond_0

    const/16 v2, 0x1bb

    goto :goto_0

    :cond_0
    const/16 v2, 0x50

    .line 91
    :goto_0
    new-instance v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-direct {v3, v2, p7, p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;-><init>(IZLcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;)V

    iput-object v3, v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    return-void
.end method

.method private buildBreakRequest(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpRequest;
    .locals 3

    .line 356
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    .line 357
    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    .line 358
    sget-object v2, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    .line 356
    invoke-direct {v0, v1, v2, p1}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    .line 360
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    const-string v1, "Host"

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    iget-object v2, v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 362
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p1

    const-string v1, "x-nos-token"

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->token:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method private buildUploadRequest(Ljava/io/InputStream;ILjava/lang/String;)Lio/netty/handler/codec/http/DefaultFullHttpRequest;
    .locals 3

    .line 394
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpMethod;->POST:Lio/netty/handler/codec/http/HttpMethod;

    invoke-direct {v0, v1, v2, p3}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p3

    const-string v1, "Host"

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    iget-object v2, v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p3

    const-string v1, "Content-Length"

    .line 397
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 399
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p3

    const-string v1, "x-nos-token"

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->token:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 400
    iget-object p3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 401
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object p3

    const-string v1, "Content-MD5"

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->MD5:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 403
    :cond_0
    iget-object p3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    if-eqz p3, :cond_1

    .line 404
    iget-object p3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->meta:Lcom/netease/cloud/nos/android/core/WanNOSObject;

    invoke-static {v0, p3}, Lcom/netease/cloud/nos/android/utils/Util;->pipeAddHeaders(Lio/netty/handler/codec/http/DefaultFullHttpRequest;Lcom/netease/cloud/nos/android/core/WanNOSObject;)V

    .line 408
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, 0xb

    .line 413
    iget-object p3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-virtual {p0, p1, p3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 414
    sget-object p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "failed to read file, readlength:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", totalLength:"

    .line 415
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 414
    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private handlerComplete(Lcom/netease/cloud/nos/android/http/HttpResult;)V
    .locals 2

    .line 570
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline http post Complete"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, v0, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    return-void
.end method

.method private handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V
    .locals 3

    .line 576
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerError cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object p3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-virtual {p3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->channelClose()V

    .line 578
    invoke-virtual {p0, p2, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    return-void
.end method

.method public static isStop()Z
    .locals 5

    .line 639
    sget-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->stopTime:J

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getPipelineFailoverPeriod()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    .line 641
    sput-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    .line 644
    :cond_0
    sget-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    return v0
.end method

.method private oneUpload(Ljava/lang/String;Ljava/io/FileInputStream;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline one upload start"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    const/16 v1, 0xe

    .line 206
    iput v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    .line 207
    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    const-wide/16 v1, 0x0

    .line 208
    iput-wide v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 209
    iput-wide v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    const/4 v3, 0x0

    .line 210
    iput-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 213
    iget-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-virtual {v4, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connect(Ljava/lang/String;)Lio/netty/channel/Channel;

    move-result-object v4

    if-nez v4, :cond_0

    .line 214
    sget-object p2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "failed to connect uploadServer:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance p1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 p2, 0x384

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p1, p2, v0, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    iput-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    return-wide v1

    .line 220
    :cond_0
    iget-boolean p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-eqz p1, :cond_1

    return-wide v1

    .line 224
    :cond_1
    sget-object p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uploadContext:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uploadContextExist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContextExist()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContextExist()Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->breakQuery()V

    .line 229
    iget-boolean p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    if-nez p1, :cond_3

    return-wide v1

    .line 235
    :cond_2
    iput-boolean v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    .line 239
    :cond_3
    iget-boolean p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-eqz p1, :cond_4

    return-wide v1

    .line 243
    :cond_4
    iget-wide v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 244
    iget-boolean p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez p1, :cond_5

    .line 245
    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    iput-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    .line 247
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 248
    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    invoke-virtual {p1, v7, v8}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 251
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 253
    :goto_0
    iget-boolean p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez p1, :cond_10

    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    iget-wide v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long p1, v7, v9

    if-ltz p1, :cond_6

    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    cmp-long p1, v7, v1

    if-nez p1, :cond_10

    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long p1, v7, v1

    if-eqz p1, :cond_6

    goto/16 :goto_2

    .line 255
    :cond_6
    iget-boolean p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-eqz p1, :cond_7

    goto/16 :goto_2

    :cond_7
    add-int/2addr v0, v4

    .line 261
    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    iget p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->chunkSize:I

    invoke-virtual {p0, p2, v7, v8, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendPost(Ljava/io/FileInputStream;JI)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_2

    .line 268
    :cond_8
    :try_start_0
    iget v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v7, v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v7, v8, v9}, Lio/netty/channel/ChannelFuture;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 270
    iget-boolean v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-nez v8, :cond_9

    .line 271
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 273
    :cond_9
    sget-object v8, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "pipeline upload is interrupted:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_1
    iget-boolean v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-eqz v7, :cond_a

    goto/16 :goto_2

    .line 281
    :cond_a
    sget-object v7, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pipeline one block upload isDone:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    iget v11, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    const-wide/16 v11, 0x320

    add-long/2addr v9, v11

    cmp-long v11, v7, v9

    if-lez v11, :cond_b

    .line 285
    new-instance p1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 p2, 0x383

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p1, p2, v0, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const/4 p2, 0x6

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "upload timeout for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms, close channel"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 290
    :cond_b
    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v9, v7, v1

    if-nez v9, :cond_c

    goto :goto_2

    .line 295
    :cond_c
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v7

    invoke-interface {v7}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v7

    if-nez v7, :cond_d

    .line 296
    sget-object v7, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "channel is not wirtable, sendCount:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->waitForWriteDone(Lio/netty/channel/ChannelFuture;I)V

    .line 300
    :cond_d
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->isActive()Z

    move-result p1

    if-eqz p1, :cond_f

    if-ne v4, v0, :cond_e

    .line 302
    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    iget-wide v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long p1, v7, v9

    if-gez p1, :cond_e

    .line 303
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->waitForContext()V

    .line 306
    :cond_e
    sget-object p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pipeline http post success, sendOffset: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    iget-wide v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", totalLength: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", this is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " block uploaded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 306
    invoke-static {p1, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    :cond_f
    new-instance p1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 p2, 0x31f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p1, p2, v0, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const-string p2, "Channel is not active"

    .line 311
    invoke-direct {p0, p1, v4, p2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 316
    :cond_10
    :goto_2
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->waitForComplete()V

    .line 318
    iget-wide p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    cmp-long v0, p1, v5

    if-lez v0, :cond_11

    iget-wide p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    sub-long v1, p1, v5

    .line 319
    :cond_11
    sget-object p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "pipeline one upload isSuccess:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sendSize:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public static reStart()V
    .locals 2

    .line 648
    sget-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 649
    sput-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    .line 650
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline restart"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static stop()V
    .locals 2

    const/4 v0, 0x1

    .line 633
    sput-boolean v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isStop:Z

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->stopTime:J

    .line 635
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline stopped for a while"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private uploadContextExist()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private waitForBreakResp()V
    .locals 7

    .line 329
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 332
    :goto_0
    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v1, :cond_1

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    iget v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    iget v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 330
    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 344
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v0, :cond_3

    .line 345
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "no breakQuery response"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v1, 0x383

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const/4 v1, 0x3

    .line 348
    invoke-virtual {p0, v1, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    return-void

    :cond_3
    return-void
.end method

.method private waitForComplete()V
    .locals 7

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 134
    :goto_0
    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    iget v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    iget v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 132
    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 145
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v0, :cond_3

    .line 147
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v1, 0x383

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const/4 v1, 0x6

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upload timeout for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ms, close channel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private waitForContext()V
    .locals 7

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 105
    :goto_0
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContextExist()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v1, :cond_1

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    iget v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    iget v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 103
    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 116
    :goto_2
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContextExist()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v0, :cond_2

    .line 117
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "no uploadContext received"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v1, 0x383

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const/4 v1, 0x6

    .line 120
    invoke-virtual {p0, v1, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    return-void

    :cond_2
    return-void
.end method


# virtual methods
.method public breakQuery()V
    .locals 5

    .line 372
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isHttps:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    iget-object v2, v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":443"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->bucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netease/cloud/nos/android/utils/Util;->pipeBuildQueryUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    sget-object v1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "break query upload server url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 382
    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-direct {p0, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->buildBreakRequest(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpRequest;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->get(Lio/netty/handler/codec/http/HttpRequest;)V

    .line 383
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->waitForBreakResp()V

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 387
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "breakQuery duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    .line 375
    sget-object v1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v2, "build breakQueryUrl exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    new-instance v1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v2, 0x31f

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    return-void
.end method

.method public cancel()V
    .locals 3

    .line 480
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string v1, "pipeline uploading is canceling"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    .line 483
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v1, 0xc

    const-string v2, "pipeline upload is cancelled"

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getUploadContext()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    return-object v0
.end method

.method public handleBreakInfo(ILorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x5

    const/16 v1, 0x2bb

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v5, 0x194

    if-ne p1, v5, :cond_0

    .line 505
    iput-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_6

    if-eqz p2, :cond_5

    const-string v2, "offset"

    .line 507
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "offset"

    .line 516
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    int-to-long v5, p2

    iput-wide v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 523
    :goto_0
    iget-wide v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long p2, v5, v7

    if-ltz p2, :cond_2

    iget-wide v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long p2, v5, v3

    if-nez p2, :cond_3

    :cond_2
    iget-wide v5, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    cmp-long p2, v5, v3

    if-gez p2, :cond_4

    .line 524
    :cond_3
    new-instance p2, Lcom/netease/cloud/nos/android/http/HttpResult;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 525
    new-instance v5, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "offset is invalid in server side, with offset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", file length: "

    .line 526
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 525
    invoke-direct {v5, v6}, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-direct {p2, v1, v2, v5}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP Response Code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 528
    iput-wide v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    return-void

    .line 532
    :cond_4
    iget-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x1

    .line 533
    :try_start_0
    iput-boolean p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    .line 534
    iget-object p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 532
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 509
    :cond_5
    :goto_1
    new-instance p1, Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 510
    new-instance v2, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;

    const-string v5, "offset is missing in breakQuery response"

    invoke-direct {v2, v5}, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-direct {p1, v1, p2, v2}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const-string p2, "no offset in breakQuery response"

    .line 511
    invoke-direct {p0, p1, v0, p2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 512
    iput-wide v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    return-void

    .line 518
    :cond_6
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-direct {v0, p1, p2, v2}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const/4 p2, 0x4

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP Response Code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    return-void
.end method

.method public handleOffset(ILcom/netease/cloud/nos/android/http/HttpResult;)V
    .locals 6

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 543
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    int-to-long v0, p1

    .line 545
    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 547
    iput-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    .line 548
    invoke-direct {p0, p2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerComplete(Lcom/netease/cloud/nos/android/http/HttpResult;)V

    goto :goto_1

    .line 549
    :cond_0
    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    if-gez p1, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 553
    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pipeline backoff, offset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current responseOffset: "

    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd

    const-string v3, "pipeline offset backoff"

    .line 556
    invoke-direct {p0, p2, v2, v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto :goto_1

    .line 559
    :cond_2
    iput-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->responseOffset:J

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v2, 0x9

    const-string v3, "offset error"

    .line 551
    invoke-direct {p0, p2, v2, v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 562
    :goto_1
    iget-object p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadTask:Lcom/netease/cloud/nos/android/core/UploadTask;

    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/netease/cloud/nos/android/core/UploadTask;->getUploadProgress(JJ)V

    .line 563
    sget-object p2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pipeline http response, offset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", totalLength: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", this is "

    .line 565
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " block response"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-static {p2, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public hasBreakQuery()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery:Z

    return v0
.end method

.method public isUpCancelled()Z
    .locals 1

    .line 629
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    return v0
.end method

.method public sendPost(Ljava/io/FileInputStream;JI)Lio/netty/channel/ChannelFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 425
    sget-object p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "iscomplete offset: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", totalLength: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 429
    :cond_0
    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    .line 430
    iget-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-direct {p0, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerComplete(Lcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 431
    sget-object p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "sendPost complete offset: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "= totalLength: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 433
    :cond_1
    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    const/16 p1, 0xa

    .line 434
    iget-object p4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    invoke-virtual {p0, p1, p4}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    .line 435
    sget-object p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "sendPost Error offset: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", totalLength: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    int-to-long v2, p4

    .line 439
    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    sub-long/2addr v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 440
    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload block size is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", part_size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, v0

    add-long/2addr v2, p2

    .line 442
    iput-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->sendOffset:J

    const/4 p4, 0x0

    .line 444
    iget-wide v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->totalLength:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    const/4 p4, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 448
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isHttps:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    iget-object v3, v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":443"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v2, ""

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->bucketName:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    move-wide v5, p2

    invoke-static/range {v2 .. v7}, Lcom/netease/cloud/nos/android/utils/Util;->pipeBuildPostDataUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 450
    sget-object p3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "post data url: "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object p3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-direct {p0, p1, v0, p2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->buildUploadRequest(Ljava/io/InputStream;ILjava/lang/String;)Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->post(Lio/netty/handler/codec/http/DefaultFullHttpRequest;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    if-nez p1, :cond_5

    .line 454
    new-instance p2, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 p3, 0x31f

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p2, p3, p4, v1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const/4 p3, 0x2

    const-string p4, "pipeline exception: ChannelFuture is null"

    .line 455
    invoke-direct {p0, p2, p3, p4}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    :cond_5
    return-object p1
.end method

.method public setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->client:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->reset()V

    .line 464
    iget v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 465
    iput p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    .line 468
    :cond_0
    iget-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    if-nez p1, :cond_1

    .line 469
    iput-object p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 472
    :cond_1
    iget-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x1

    .line 473
    :try_start_0
    iput-boolean p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    .line 474
    iget-object p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 472
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setUploadContext(Ljava/lang/String;)V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->callback:Lcom/netease/cloud/nos/android/core/Callback;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->fileParam:Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/netease/cloud/nos/android/core/Callback;->onUploadContextCreate(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    iput-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->uploadContext:Ljava/lang/String;

    .line 494
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 492
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received new uploadContext: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 492
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public upload(Ljava/lang/String;)Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 159
    sget-object v1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start pipeline upload to uploadServer ip: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    .line 162
    :goto_0
    iget-boolean v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-eqz v9, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->oneUpload(Ljava/lang/String;Ljava/io/FileInputStream;)J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 166
    iget-boolean v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->upCancelled:Z

    if-eqz v9, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    iget v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    const/16 v10, 0xd

    if-eq v9, v10, :cond_5

    .line 172
    iget v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    cmp-long v9, v7, v3

    if-eqz v9, :cond_5

    .line 173
    iget-wide v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    cmp-long v11, v9, v3

    if-nez v11, :cond_5

    .line 186
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-double v0, v5

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    .line 188
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v7

    long-to-double v7, v3

    const-wide v9, 0x408f400000000000L    # 1000.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    div-double/2addr v0, v7

    double-to-float p1, v0

    .line 190
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pipeline upload isSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " totalSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "KB/S"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {v0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    if-nez p1, :cond_4

    .line 194
    new-instance p1, Lcom/netease/cloud/nos/android/http/HttpResult;

    iget v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    if-nez v0, :cond_3

    const/16 v0, 0xc8

    goto :goto_2

    :cond_3
    const/16 v0, 0x31f

    :goto_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    iput-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    .line 197
    :cond_4
    iget-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->rs:Lcom/netease/cloud/nos/android/http/HttpResult;

    return-object p1

    .line 181
    :cond_5
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "retry to upload for reason:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isSuccess:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " count:"

    .line 182
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", current respNum:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->respNum:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 181
    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    goto/16 :goto_0
.end method

.method public waitForWriteDone(Lio/netty/channel/ChannelFuture;I)V
    .locals 6

    .line 594
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object p2

    invoke-interface {p2}, Lio/netty/channel/Channel;->isWritable()Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez p2, :cond_2

    .line 595
    iget-object p2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    .line 597
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez v0, :cond_1

    .line 598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->lastResponseTime:J

    iget v4, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_1

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    iget v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->timeout:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 595
    :cond_1
    :goto_1
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 606
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 609
    :cond_2
    :goto_2
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->isComplete:Z

    if-nez p1, :cond_3

    .line 610
    sget-object p1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->LOGTAG:Ljava/lang/String;

    const-string p2, "wait for channel writable long time"

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance p1, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 p2, 0x31f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    const/4 p2, 0x2

    const-string v0, "pipeline exception: channel is not writable"

    .line 613
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handlerError(Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    return-void

    :cond_3
    return-void
.end method

.method public writeDone()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->completeCondition:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 622
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
