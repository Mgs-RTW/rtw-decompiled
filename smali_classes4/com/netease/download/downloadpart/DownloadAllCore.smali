.class public Lcom/netease/download/downloadpart/DownloadAllCore;
.super Ljava/lang/Object;
.source "DownloadAllCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadAllCore"

.field private static mUseTime:J


# instance fields
.field private mCheckTime:Lcom/netease/download/check/CheckTime;

.field private mCode:I

.field private mDownloadCallBack:Lcom/netease/download/downloadpart/DownloadCallBack;

.field private mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

.field private mHost:Ljava/lang/String;

.field private mIndex:I

.field private mIsUseHistoryTopSpeedIp:Z

.field private mLogData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMd5FailRetryDownloadCount:I

.field private mPartParams:[Lcom/netease/download/downloader/DownloadParams;

.field private mRetry:I

.field private mTotalFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 68
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mHost:Ljava/lang/String;

    const/4 v1, 0x3

    .line 70
    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mRetry:I

    const/4 v1, 0x2

    .line 71
    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mMd5FailRetryDownloadCount:I

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mLogData:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mIsUseHistoryTopSpeedIp:Z

    .line 76
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadCallBack:Lcom/netease/download/downloadpart/DownloadCallBack;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/downloadpart/DownloadAllCore;J)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/netease/download/downloadpart/DownloadAllCore;->setTotalFileSize(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/download/downloadpart/DownloadAllCore;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method private delFiles()Z
    .locals 8

    .line 1074
    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v6, v0, v4

    .line 1075
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_1

    .line 1076
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method private download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v0, "\u6574\u4f53\u4e0b\u8f7d"

    .line 277
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 278
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mLogData:Ljava/util/HashMap;

    const-string v5, "filetype"

    const-string v6, "UDT"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_38

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_13

    .line 285
    :cond_0
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isSpaceNotEnough()Z

    move-result v0

    const/4 v5, 0x5

    if-eqz v0, :cond_1

    return v5

    .line 289
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const-string v0, "DownloadAllCore"

    .line 290
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download params("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", pStage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DownloadAllCore"

    .line 293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u7f51\u7edc\u5f02\u5e38="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v0

    const/16 v7, 0xd

    if-ne v7, v0, :cond_2

    return v7

    .line 298
    :cond_2
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v0

    const/16 v7, 0xc

    if-ne v7, v0, :cond_3

    return v7

    .line 303
    :cond_3
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/netease/download/util/HashUtil;->calculateFileHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 305
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p0 .. p1}, Lcom/netease/download/downloadpart/DownloadAllCore;->check(Lcom/netease/download/downloader/DownloadParams;)I

    move-result v0

    .line 308
    invoke-virtual {v1, v0, v8}, Lcom/netease/download/downloadpart/DownloadAllCore;->handleViaFileCheckStatus(ILjava/io/File;)I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v13, v9, :cond_6

    if-nez v0, :cond_4

    const-string v0, "DownloadAllCore"

    const-string v3, "DownloadAllCore [download_core] AVAILABLE  \u76f4\u63a5\u8fd4\u56de\u7ed9\u63a5\u5165\u65b9"

    .line 313
    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v13

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getTaskAllSizes()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v16

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getCallBackFileName()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v13 .. v21}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_4
    if-ne v13, v0, :cond_5

    const-string v0, "DownloadAllCore"

    const-string v2, "DownloadAllCore [download_core] MD5ERROR\uff0c \u76f4\u63a5\u8fd4\u56de\u7ed9\u63a5\u5165\u65b9"

    .line 318
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_5
    if-ne v11, v0, :cond_6

    const-string v0, "DownloadAllCore"

    const-string v2, "DownloadAllCore [download_core] SIZEERROR\uff0c \u76f4\u63a5\u8fd4\u56de\u7ed9\u63a5\u5165\u65b9"

    .line 322
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 327
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "DownloadAllCore"

    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DownloadAllCore [download_core] \u751f\u6210\u7236\u76ee\u5f55\uff0c dlFile.getParentFile()="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v9, "DownloadAllCore"

    .line 332
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DownloadAllCore [download_core] Exception="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    :cond_7
    :goto_0
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreCount()V

    const-wide/16 v14, 0x0

    .line 340
    invoke-direct {v1, v14, v15}, Lcom/netease/download/downloadpart/DownloadAllCore;->setTotalFileSize(J)V

    .line 342
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object v9

    const-string v0, "DownloadAllCore"

    .line 343
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file type="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/download/downloader/TaskHandle;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v0, Lcom/netease/download/downloadpart/DownloadAllCore$1;

    invoke-direct {v0, v1, v6, v2}, Lcom/netease/download/downloadpart/DownloadAllCore$1;-><init>(Lcom/netease/download/downloadpart/DownloadAllCore;ILcom/netease/download/downloader/DownloadParams;)V

    .line 430
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v12, "Host"

    .line 431
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getDomainFromUrl()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v11

    .line 434
    invoke-static {v11}, Lcom/netease/download/util/Util;->isIpAddrDomain(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "DownloadAllCore"

    .line 435
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u53c2\u6570\u8bbe\u7f6e\u7684host="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Host"

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v5, "DownloadAllCore"

    .line 446
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pParams.getSegmentStart()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", pParams.getSegmentEnd()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v10

    move/from16 v22, v6

    const-wide v5, 0x3ff199999999999aL    # 1.1

    const/4 v12, -0x1

    cmp-long v16, v10, v14

    if-ltz v16, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v10

    cmp-long v16, v10, v14

    if-lez v16, :cond_b

    .line 448
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Lcom/netease/download/downloadpart/DownloadAllCore;->setTotalFileSize(J)V

    .line 450
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v0

    if-nez v0, :cond_a

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v10

    invoke-static {v0, v10, v11, v5, v6}, Lcom/netease/download/storage/StorageUtil;->canStore(Ljava/lang/String;JD)I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "DownloadAllCore"

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadAllCore [download_core] \u7a7a\u95f4\u4e0d\u8db3\uff0c md5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    const-string v2, "[ORBIT] Downfile not space"

    .line 456
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/netease/download/downloader/TaskHandle;->setSpaceNotEnough(Z)V

    const/4 v2, 0x5

    return v2

    :cond_9
    if-ne v12, v0, :cond_a

    const-string v0, "DownloadAllCore"

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadAllCore [download_core] \u76ee\u5f55\u5f02\u5e38\uff0c\u65e0\u6cd5\u8ba1\u7b97\uff0c md5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    const-string v2, "[ORBIT] Downfile not space"

    .line 462
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/netease/download/downloader/TaskHandle;->setSpaceNotEnough(Z)V

    const/4 v2, 0x5

    return v2

    :cond_a
    const/4 v5, 0x1

    const/4 v11, 0x2

    goto/16 :goto_d

    :cond_b
    :try_start_1
    const-string v11, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    .line 473
    invoke-static {v11}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    const-string v11, "DownloadAllCore"

    .line 474
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u83b7\u53d6\u5927\u5c0f\uff0c\u8bf7\u6c42\u7684header \u8bf7\u6c42\u94fe\u63a5="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v10

    const-string v11, "httpdns_config_cnd"

    invoke-virtual {v10, v11}, Lcom/netease/download/httpdns/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "DownloadAllCore"

    const-string v11, "DownloadAllCore [\u8bf7OkHttpProxy [execute_syn] headers =\u6c42\u6587\u4ef6\u5927\u5c0f] \u4f7f\u7528 dns ip"

    .line 478
    invoke-static {v10, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "DownloadAllCore"

    const-string v11, "\u5207\u6362\u4e0b\u4e00\u4e2ahost"

    .line 483
    invoke-static {v10, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/netease/download/dns/CdnIpController;->nextUnit(Ljava/lang/String;)Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    move-result-object v10

    goto :goto_1

    :cond_c
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_e

    .line 488
    iget-object v10, v10, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 490
    :try_start_2
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 491
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/netease/download/dns/CdnIpController;->nextIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 492
    :try_start_3
    iput-object v10, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mHost:Ljava/lang/String;

    const-string v13, "DownloadAllCore"

    .line 493
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u4e0b\u8f7d\u6587\u4ef6\u5927\u5c0f\u7684\u57df\u540d host="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", ip="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", pParams.getDownloadUrl()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v13, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v13}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v11}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v13

    const-string v14, "Host"

    .line 496
    invoke-virtual {v13, v14, v10}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 499
    invoke-virtual {v13}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->head()Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    const-string v14, "accept-encoding"

    const-string v15, "\'identity"

    .line 500
    invoke-virtual {v13, v14, v15}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 502
    invoke-static {}, Lcom/netease/download/network/OkHttpProxy;->getInstance()Lcom/netease/download/network/OkHttpProxy;

    move-result-object v14

    invoke-virtual {v14, v13, v0}, Lcom/netease/download/network/OkHttpProxy;->execute_syn(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Lcom/netease/ntunisdk/okhttp3/Callback;)I

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v23, v11

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v23, v11

    goto/16 :goto_5

    :cond_d
    const/4 v13, 0x1

    const/16 v23, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :cond_e
    :try_start_4
    const-string v10, "DownloadAllCore"

    const-string v11, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f] \u4f7f\u7528\u5907\u7528ip"

    .line 505
    invoke-static {v10, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmHttpdnsIp()Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 507
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getHost()Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 508
    :try_start_6
    new-instance v13, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v13}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v10}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v13

    const-string v14, "Host"

    .line 509
    invoke-virtual {v13, v14, v11}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 512
    invoke-virtual {v13}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->head()Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    const-string v14, "accept-encoding"

    const-string v15, "\'identity"

    .line 513
    invoke-virtual {v13, v14, v15}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 514
    invoke-static {}, Lcom/netease/download/network/OkHttpProxy;->getInstance()Lcom/netease/download/network/OkHttpProxy;

    move-result-object v14

    invoke-virtual {v14, v13, v0}, Lcom/netease/download/network/OkHttpProxy;->execute_syn(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Lcom/netease/ntunisdk/okhttp3/Callback;)I

    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :cond_f
    :try_start_7
    const-string v10, "DownloadAllCore"

    const-string v11, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f] \u4f7f\u7528 httpdns ip"

    .line 518
    invoke-static {v10, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmHttpdnsIp()Ljava/lang/String;

    move-result-object v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 521
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getHost()Ljava/lang/String;

    move-result-object v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 522
    :try_start_9
    new-instance v13, Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    invoke-direct {v13}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v10}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    move-result-object v13

    const-string v14, "Host"

    .line 523
    invoke-virtual {v13, v14, v11}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 526
    invoke-virtual {v13}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->head()Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    const-string v14, "accept-encoding"

    const-string v15, "\'identity"

    .line 527
    invoke-virtual {v13, v14, v15}, Lcom/netease/ntunisdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/okhttp3/Request$Builder;

    .line 528
    invoke-static {}, Lcom/netease/download/network/OkHttpProxy;->getInstance()Lcom/netease/download/network/OkHttpProxy;

    move-result-object v14

    invoke-virtual {v14, v13, v0}, Lcom/netease/download/network/OkHttpProxy;->execute_syn(Lcom/netease/ntunisdk/okhttp3/Request$Builder;Lcom/netease/ntunisdk/okhttp3/Callback;)I

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move v13, v0

    :goto_2
    move-object/from16 v23, v10

    move-object v10, v11

    :goto_3
    move-object/from16 v0, v23

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v23, v10

    move-object v10, v11

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v23, v10

    const/4 v10, 0x0

    goto :goto_5

    :catch_5
    move-exception v0

    const/4 v10, 0x0

    :goto_4
    const/16 v23, 0x0

    .line 532
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, v23

    const/4 v13, 0x1

    :goto_6
    const-string v11, "DownloadAllCore"

    .line 535
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f\u7684\u8fd4\u56de\u7801="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v14

    invoke-static {v11, v14, v15, v5, v6}, Lcom/netease/download/storage/StorageUtil;->canStore(Ljava/lang/String;JD)I

    move-result v5

    if-nez v5, :cond_10

    const-string v0, "DownloadAllCore"

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadAllCore [download_core] \u7a7a\u95f4\u4e0d\u8db3\uff0c md5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    const-string v2, "[ORBIT] Downfile not space"

    .line 542
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x5

    return v6

    :cond_10
    const/4 v6, 0x5

    if-ne v12, v5, :cond_11

    const-string v0, "DownloadAllCore"

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadAllCore [download_core] \u76ee\u5f55\u5f02\u5e38\uff0c\u65e0\u6cd5\u8ba1\u7b97\uff0c md5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    const-string v2, "[ORBIT] Downfile not space"

    .line 547
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0

    :cond_11
    const-string v5, "DownloadAllCore"

    .line 551
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DownloadAllCore [download_core] params size()="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", getTotalFileSize()="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-lez v5, :cond_13

    .line 553
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v14

    cmp-long v5, v14, v16

    if-lez v5, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v16

    cmp-long v5, v14, v16

    if-nez v5, :cond_13

    :cond_12
    const/4 v5, 0x1

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_14

    if-nez v13, :cond_14

    const/4 v11, 0x2

    return v11

    :cond_14
    const/4 v11, 0x2

    const-string v14, "DownloadAllCore"

    .line 561
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [download_core] reqCode="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sizeCorrect="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v13, :cond_15

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    goto :goto_8

    :cond_15
    const/4 v5, 0x0

    :goto_8
    if-nez v5, :cond_21

    .line 564
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_21

    const-string v5, "DownloadAllCore"

    .line 565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [download_core] CdnIpController.getInstances().hasNextIp(host)="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DownloadAllCore"

    .line 566
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [download_core] CdnIpController.getInstances().hasNextUnit()="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto/16 :goto_b

    :cond_16
    const-string v0, "DownloadAllCore"

    const-string v5, "DownloadAllCore [download_core] [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f] dns\u5df2\u65e0ip\u53ef\u7528\uff0c \u8fdb\u5165httpdns\u5904\u7406\u903b\u8f91"

    .line 583
    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [download_core] [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f] overSea="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllCore [download_core] \u5207\u6362httpdns"

    .line 587
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    .line 588
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f\uff0chttpdns] \u662f\u5426\u5df2\u7ecf\u89e3\u6790\u8fc7httpdns_config_cnd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v6

    const-string v8, "httpdns_config_cnd"

    invoke-virtual {v6, v8}, Lcom/netease/download/httpdns/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    const-string v5, "httpdns_config_cnd"

    invoke-virtual {v0, v5}, Lcom/netease/download/httpdns/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "DownloadAllCore"

    const-string v5, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f\uff0chttpdns] \u5f00\u59cbhttpdns"

    .line 592
    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    const-string v5, "httpdns_config_cnd"

    invoke-virtual {v9}, Lcom/netease/download/config/ConfigParams;->getmCdnMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/netease/download/httpdns/HttpdnsProxy;->synStart(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "DownloadAllCore"

    const-string v5, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f\uff0chttpdns] \u5b8c\u6210httpdns"

    .line 594
    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 597
    :cond_17
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    const-string v5, "httpdns_config_cnd"

    invoke-virtual {v0, v5}, Lcom/netease/download/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    const-string v5, "DownloadAllCore"

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f\uff0chttpdns] httpdns\u5220\u9664\u524d\u96c6\u5408="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_18

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->next(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 604
    iget-object v6, v5, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->remove(Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    .line 605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f\uff0chttpdns] \u5220\u9664ip="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_18
    :goto_9
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    const-string v5, "httpdns_config_cnd"

    invoke-virtual {v0, v5}, Lcom/netease/download/httpdns/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    const-string v5, "DownloadAllCore"

    .line 611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f\uff0chttpdns] httpdns\u6700\u65b0\u96c6\u5408="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1b

    .line 613
    invoke-virtual {v0}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->next(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 617
    iget-object v5, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/netease/download/downloader/DownloadParams;->setHost(Ljava/lang/String;)V

    .line 618
    iget-object v5, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/netease/download/downloader/DownloadParams;->setmHttpdnsIp(Ljava/lang/String;)V

    const-string v5, "DownloadAllCore"

    .line 619
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f\uff0chttpdns] \u5373\u5c06\u4f7f\u7528\u7684host="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",  \u5373\u5c06\u4f7f\u7528\u7684ip="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/netease/download/Const$Stage;->OTHER_IP_USED:Lcom/netease/download/Const$Stage;

    invoke-direct {v1, v2, v0, v4}, Lcom/netease/download/downloadpart/DownloadAllCore;->download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v0

    :goto_a
    move v13, v0

    goto/16 :goto_c

    .line 622
    :cond_19
    iget-boolean v0, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mIsUseHistoryTopSpeedIp:Z

    if-nez v0, :cond_1a

    const/4 v5, 0x1

    .line 623
    iput-boolean v5, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mIsUseHistoryTopSpeedIp:Z

    .line 624
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/check/BackUpIpProxy;->getHistoryTopSpeedIp()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/check/BackUpIpProxy;->getHistoryTopSpeedHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DownloadAllCore"

    .line 626
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f\uff0chttpdns] \u4f7f\u7528\u5907\u7528ip, host="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", tIp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 629
    invoke-virtual {v2, v5}, Lcom/netease/download/downloader/DownloadParams;->setHost(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v2, v0}, Lcom/netease/download/downloader/DownloadParams;->setmHttpdnsIp(Ljava/lang/String;)V

    .line 631
    sget-object v0, Lcom/netease/download/Const$Stage;->OTHER_IP_USED:Lcom/netease/download/Const$Stage;

    invoke-direct {v1, v2, v0, v4}, Lcom/netease/download/downloadpart/DownloadAllCore;->download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v13

    goto/16 :goto_c

    .line 635
    :cond_1a
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/netease/download/check/BackUpIpProxy;->setBackUpIpStatus(I)V

    goto/16 :goto_c

    .line 638
    :cond_1b
    iget-boolean v0, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mIsUseHistoryTopSpeedIp:Z

    if-nez v0, :cond_1c

    const/4 v5, 0x1

    .line 639
    iput-boolean v5, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mIsUseHistoryTopSpeedIp:Z

    .line 640
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/check/BackUpIpProxy;->getHistoryTopSpeedIp()Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/check/BackUpIpProxy;->getHistoryTopSpeedHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DownloadAllCore"

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadAllCore [\u8bf7\u6c42\u6587\u4ef6\u5927\u5c0f] \u4f7f\u7528\u5907\u7528ip, host="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", tIp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 645
    invoke-virtual {v2, v5}, Lcom/netease/download/downloader/DownloadParams;->setHost(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2, v0}, Lcom/netease/download/downloader/DownloadParams;->setmHttpdnsIp(Ljava/lang/String;)V

    .line 647
    sget-object v0, Lcom/netease/download/Const$Stage;->OTHER_IP_USED:Lcom/netease/download/Const$Stage;

    invoke-direct {v1, v2, v0, v4}, Lcom/netease/download/downloadpart/DownloadAllCore;->download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v0

    goto/16 :goto_a

    .line 651
    :cond_1c
    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/netease/download/check/BackUpIpProxy;->setBackUpIpStatus(I)V

    goto/16 :goto_c

    .line 569
    :cond_1d
    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [download_core] \u79fb\u9664ip\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", \u6240\u5c5ehost\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual {v5, v10, v0}, Lcom/netease/download/dns/CdnIpController;->removeIp(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "DownloadAllCore"

    .line 573
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [download_core] \u79fb\u9664cdn\uff0chost\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/netease/download/dns/CdnIpController;->removeUnit(Ljava/lang/String;)V

    :cond_1e
    const-string v0, "DownloadAllCore"

    .line 577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [download_core] \u5269\u4f59CDN-IP\u603b\u89c8="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-object v0, Lcom/netease/download/Const$Stage;->OTHER_SEG_USED:Lcom/netease/download/Const$Stage;

    invoke-direct {v1, v2, v0, v4}, Lcom/netease/download/downloadpart/DownloadAllCore;->download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v13

    .line 655
    :cond_1f
    :goto_c
    sget-object v0, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    if-ne v0, v3, :cond_20

    const-string v0, "DownloadAllCore"

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onfinish sendFinishMsg md5444="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return v13

    :cond_21
    const/4 v5, 0x1

    :goto_d
    const-string v0, "DownloadAllCore"

    const-string v6, "\u5206\u7247\u4e0b\u8f7d\u5f00\u59cb"

    .line 663
    invoke-static {v0, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/netease/download/dns/CdnIpController;->getCdnCount(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_22

    const/4 v13, 0x1

    :cond_22
    const-string v0, "DownloadAllCore"

    .line 674
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTotalFileSize()="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", configParams2.getSplitThreshold() * 1024="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/netease/download/config/ConfigParams;->getSplitThreshold()I

    move-result v10

    mul-int/lit16 v10, v10, 0x400

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pStage"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/download/Const$Stage;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v14

    invoke-virtual {v9}, Lcom/netease/download/config/ConfigParams;->getSplitThreshold()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v9, v0

    cmp-long v0, v14, v9

    if-lez v0, :cond_23

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    const/4 v13, 0x1

    .line 680
    :cond_24
    invoke-virtual {v2, v13}, Lcom/netease/download/downloader/DownloadParams;->setPartCount(I)V

    const-string v0, "DownloadAllCore"

    .line 682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4e0b\u8f7d\u7ebf\u7a0b\u6570="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5206\u7247\u5927\u5c0f\u5212\u5206, \u5c06\u8981\u4e0b\u8f7d\u7684\u5927\u5c0f="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v9

    invoke-direct {v1, v2, v9, v10}, Lcom/netease/download/downloadpart/DownloadAllCore;->produceSegmentParams(Lcom/netease/download/downloader/DownloadParams;J)[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->setPartParams([Lcom/netease/download/downloader/DownloadParams;)V

    const-string v0, "DownloadAllCore"

    .line 687
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u53c2\u6570\u4e2a\u6570="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_26

    .line 691
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    array-length v6, v0

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v6, :cond_26

    aget-object v10, v0, v9

    const-string v12, "DownloadAllCore"

    .line 692
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5206\u7247="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", start="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", end="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", url="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 692
    invoke-static {v12, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 697
    :cond_26
    invoke-static {}, Lcom/netease/download/check/CheckTime;->newInstance()Lcom/netease/download/check/CheckTime;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mCheckTime:Lcom/netease/download/check/CheckTime;

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/netease/download/downloadpart/DownloadAllCore;->mUseTime:J

    .line 701
    new-instance v0, Lcom/netease/download/downloadpart/DonwonloadPartProxy;

    invoke-direct {v0}, Lcom/netease/download/downloadpart/DonwonloadPartProxy;-><init>()V

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v6

    invoke-virtual {v0, v6, v3, v4}, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->init([Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)V

    .line 703
    invoke-virtual {v0}, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->start()I

    move-result v0

    const-string v3, "DownloadAllCore"

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0b\u8f7d\u8017\u65f6="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-wide v12, Lcom/netease/download/downloadpart/DownloadAllCore;->mUseTime:J

    sub-long/2addr v9, v12

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", \u56de\u8c03\u7ed3\u679c="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v3, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mCheckTime:Lcom/netease/download/check/CheckTime;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/netease/download/check/CheckTime;->mark(J)V

    .line 707
    iget-object v3, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mCheckTime:Lcom/netease/download/check/CheckTime;

    invoke-virtual {v3}, Lcom/netease/download/check/CheckTime;->calculate()Lcom/netease/download/check/CheckTime;

    .line 715
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/download/downloader/FileHandle;

    .line 716
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v4

    if-nez v4, :cond_2f

    if-nez v0, :cond_27

    const-string v4, "\u5408\u5e76\u6587\u4ef6"

    .line 719
    invoke-static {v4}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 721
    invoke-direct {v1, v8}, Lcom/netease/download/downloadpart/DownloadAllCore;->mergeFiles(Ljava/io/File;)Z

    move-result v12

    goto :goto_f

    :cond_27
    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_f
    if-eqz v12, :cond_2d

    .line 727
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->delFiles()Z

    .line 729
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreSuccessCount()V

    const-string v4, "DownloadAllCore"

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mergeMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->isMergeMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->isMergeMode()Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "NotMD5"

    .line 737
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "DownloadAllCore"

    .line 738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6ca1\u6709\u8bbe\u7f6eNotMD5\uff0c \u9700\u8981\u8fdb\u884cmd5\u68c0\u9a8c, \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8ba1\u7b97\u5408\u5e76\u6587\u4ef6\u7684md5, \u5408\u5e76\u540e\u7684\u6587\u4ef6\u8def\u5f84="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/HashUtil;->calculateFileHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "DownloadAllCore"

    .line 741
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u63a5\u5165\u65b9\u4f20\u5165\u7684md5="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", \u6700\u540e\u5408\u5e76\u6587\u4ef6\u7684md5="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", \u6700\u540e\u5408\u5e76\u6587\u4ef6\u7684\u5927\u5c0f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "md5"

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/netease/download/util/SpUtil;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 744
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v9

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/netease/download/util/SpUtil;->setLong(Ljava/lang/Object;Ljava/lang/String;JZ)V

    .line 746
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "DownloadAllCore"

    .line 747
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "md5\u6821\u9a8c\u6210\u529f, \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_28
    const-string v0, "DownloadAllCore"

    .line 751
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "md5\u6821\u9a8c\u5931\u8d25, \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreVerifyFailCount()V

    const/4 v0, 0x3

    goto/16 :goto_10

    :cond_29
    const-string v4, "DownloadAllCore"

    .line 759
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bbe\u7f6e\u4e86NotMD5\uff0c \u9700\u8981\u8fdb\u884c\u6587\u4ef6\u5927\u5c0f\u68c0\u9a8c, \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v8

    cmp-long v6, v4, v8

    if-nez v6, :cond_2a

    const-string v4, "DownloadAllCore"

    .line 762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6587\u4ef6\u5927\u5c0f\u6821\u9a8c\u6210\u529f, \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_2a
    const-string v0, "DownloadAllCore"

    .line 766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6587\u4ef6\u5927\u5c0f\u6821\u9a8c\u5931\u8d25, \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreVerifyFailCount()V

    const/4 v0, 0x2

    goto :goto_10

    :cond_2b
    const-string v4, "DownloadAllCore"

    .line 773
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8bbe\u7f6e\u4e86Merge\u6a21\u5f0f\uff0c\u8df3\u8fc7md5\u9a8c\u8bc1\u548c\u5927\u5c0f\u9a8c\u8bc1\u4e2a\u903b\u8f91\uff0c\u76f4\u63a5\u8ba4\u4e3amd5\u9a8c\u8bc1\u6210\u529f, \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->isMergeMode()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 777
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskDownloadFileVerifySizes(J)V

    .line 780
    :cond_2c
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreVerifySuccessCount()V

    :goto_10
    const-string v4, "DownloadAllCore"

    .line 788
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ORBIT] ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") Download Params=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" Filepath=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" DownMd5=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" Md5=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_2d
    if-eqz v5, :cond_2e

    const/4 v0, 0x5

    .line 814
    :cond_2e
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreFailCount()V

    goto/16 :goto_12

    :cond_2f
    const-string v4, "DownloadAllCore"

    const-string v6, "DownloadAllCore [download_core] [\u5185\u5b58\u56de\u8c03\u6a21\u5f0f] \u8ba1\u7b97md5\u90e8\u5206"

    .line 818
    invoke-static {v4, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "NotMD5"

    .line 820
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    const-string v4, "SHA1"

    .line 821
    invoke-virtual {v3}, Lcom/netease/download/downloader/FileHandle;->getDownloadParams()Lcom/netease/download/downloader/DownloadParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netease/download/util/HashUtil;->calculateFileHash(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DownloadAllCore"

    .line 822
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [download_core] [\u5185\u5b58\u56de\u8c03\u6a21\u5f0f] \u63a5\u5165\u65b9\u4f20\u5165\u7684md5="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", \u5185\u5b58\u5185\u5bb9\u7684md5="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", \u5185\u5b58\u5185\u5bb9\u7684\u5927\u5c0f="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/netease/download/downloader/FileHandle;->getDownloadParams()Lcom/netease/download/downloader/DownloadParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/downloader/DownloadParams;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "md5"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v4, v9}, Lcom/netease/download/util/SpUtil;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 825
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v10

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/netease/download/util/SpUtil;->setLong(Ljava/lang/Object;Ljava/lang/String;JZ)V

    .line 827
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_32

    const-string v6, "NotMD5"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    if-eqz v4, :cond_30

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    :cond_30
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->isMergeMode()Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_11

    :cond_31
    const/4 v5, 0x0

    :cond_32
    :goto_11
    if-nez v0, :cond_36

    const-string v2, "DownloadAllCore"

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [download_core] [\u5185\u5b58\u56de\u8c03\u6a21\u5f0f] md5Correct="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_33

    .line 833
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreVerifyFailCount()V

    const/4 v0, 0x3

    goto :goto_12

    .line 836
    :cond_33
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->isMergeMode()Z

    move-result v2

    if-nez v2, :cond_34

    .line 837
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskDownloadFileVerifySizes(J)V

    .line 840
    :cond_34
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreVerifySuccessCount()V

    goto :goto_12

    :cond_35
    const-string v2, "DownloadAllCore [download_core] [\u5185\u5b58\u56de\u8c03\u6a21\u5f0f]  \u53c2\u6570\u8bbe\u7f6e\u4e3aNotMD5, \u65e0\u9700\u8ba1\u7b97md5"

    .line 845
    invoke-static {v2}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    :cond_36
    :goto_12
    const-string v2, "DownloadAllCore"

    .line 849
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "final download result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_37

    .line 852
    iget-object v2, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mCheckTime:Lcom/netease/download/check/CheckTime;

    invoke-virtual {v2}, Lcom/netease/download/check/CheckTime;->getAverageSpeed()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/netease/download/downloader/FileHandle;->setPatchDlspeed(D)V

    :cond_37
    return v0

    :cond_38
    :goto_13
    const-string v0, "DownloadAllCore"

    const-string v2, "invalid download params"

    .line 281
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xe

    return v0
.end method

.method private getContentLength(Ljava/util/Map;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    const-string v3, "Content-Length"

    .line 868
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "Content-Length"

    .line 869
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_1
    if-eqz v2, :cond_2

    .line 872
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 873
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "DownloadAllCore"

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processHeader, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 877
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-string p1, "DownloadAllCore"

    const-string v2, "no Content-Length found"

    .line 882
    invoke-static {p1, v2}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private getPartParams()[Lcom/netease/download/downloader/DownloadParams;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mPartParams:[Lcom/netease/download/downloader/DownloadParams;

    return-object v0
.end method

.method private isAllInterrupted([I)Z
    .locals 5

    .line 1091
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    const/16 v4, 0xc

    if-ne v4, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private mergeFiles(Ljava/io/File;)Z
    .locals 10

    const-string v0, "DownloadAllCore"

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5408\u5e76\u524d\u7684\u6587\u4ef6\u8def\u5f84="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \u5927\u5c0f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    const-string v0, "DownloadAllCore"

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5408\u5e76\u524d\u7684\u6587\u4ef6\u8def\u5f84  getPartParams()11="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadAllCore"

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5408\u5e76\u524d\u7684\u6587\u4ef6\u8def\u5f84  getPartParams() filepath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1021
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DownloadAllCore"

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5408\u5e76\u524d\u7684\u6587\u4ef6\u8def\u5f84  \u6587\u4ef6\u5927\u5c0f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "DownloadAllCore"

    const-string v1, "\u5408\u5e76\u524d\u7684\u6587\u4ef6\u8def\u5f84  \u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 1025
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "DownloadAllCore"

    const-string v1, "\u5408\u5e76\u524d\u7684\u6587\u4ef6\u8def\u5f84  \u6587\u4ef6\u8def\u5f84\u4e0d\u5b58\u5728"

    .line 1028
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    .line 1035
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    :try_start_1
    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 1038
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const v7, 0x8000

    .line 1039
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1041
    :goto_2
    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 1042
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1043
    invoke-virtual {v3, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1044
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    .line 1058
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v3, v0

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 1051
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_5

    .line 1058
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_5
    const/4 v1, 0x0

    :catch_3
    :cond_6
    :goto_4
    const-string v0, "DownloadAllCore"

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5408\u5e76\u540e\u7684\u6587\u4ef6\u8def\u5f84="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \u5927\u5c0f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", \u662f\u5426\u5408\u5e76\u6210\u529f="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v3, :cond_7

    .line 1058
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1062
    :catch_4
    :cond_7
    throw p1
.end method

.method private produceSegmentParams(Lcom/netease/download/downloader/DownloadParams;J)[Lcom/netease/download/downloader/DownloadParams;
    .locals 28

    move-wide/from16 v0, p2

    .line 906
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPartCount()I

    move-result v2

    .line 907
    new-array v3, v2, [Lcom/netease/download/downloader/DownloadParams;

    .line 908
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netease/download/dns/CdnIpController;->getChannelWeight(Ljava/lang/String;)I

    move-result v4

    const-string v5, "DownloadAllCore"

    .line 910
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u603b\u6743\u91cd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", \u5206\u7247\u6570="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", \u539f\u59cb\u94fe\u63a5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getOriginUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->getHost(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 913
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/TaskHandle;->getNetThreadSpeedLimit()F

    move-result v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    const-string v7, "DownloadAllCore"

    .line 914
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadAllCore [produceSegmentParams] netThreadSpeedLimit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/download/downloader/TaskHandle;->getNetThreadSpeedLimit()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", netSpeedLimit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", num="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const-wide/16 v16, 0x1

    if-eqz v4, :cond_8

    const-string v8, "\u6309\u6743\u91cd\u5206"

    .line 917
    invoke-static {v8}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 918
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/netease/download/dns/CdnIpController;->getWeights(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 920
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v18

    .line 921
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v8

    if-nez v5, :cond_0

    return-object v3

    :cond_0
    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    if-ne v14, v2, :cond_3

    .line 928
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v8

    cmp-long v2, v8, v12

    if-nez v2, :cond_1

    move-wide v8, v0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v8

    :goto_0
    const-string v2, "DownloadAllCore"

    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "weight[i] pOriginalParams.getSegmentEnd()="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", pTotalSize="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-long v0, v8, v16

    const/4 v9, 0x0

    .line 932
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    move-object v14, v2

    goto :goto_2

    :cond_2
    const-string v2, ""

    goto :goto_1

    :goto_2
    move-object/from16 v8, p1

    move-wide/from16 v10, v18

    move-wide v4, v12

    move-wide v12, v0

    move v15, v6

    invoke-virtual/range {v8 .. v15}, Lcom/netease/download/downloader/DownloadParams;->produceSegment(IJJLjava/lang/String;F)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    aput-object v0, v3, v7

    .line 933
    aget-object v0, v3, v7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setmChannel(Ljava/lang/String;)V

    .line 934
    aget-object v0, v3, v7

    invoke-virtual {v0, v4, v5}, Lcom/netease/download/downloader/DownloadParams;->setmMergeOffset(J)V

    goto/16 :goto_b

    :cond_3
    move-wide/from16 v20, v12

    move-wide/from16 v10, v18

    const/4 v2, 0x0

    .line 939
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_a

    const-string v12, "DownloadAllCore"

    .line 940
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "weight[i]="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v12, v7

    mul-long v12, v12, v0

    move-object/from16 v22, v15

    int-to-long v14, v4

    div-long/2addr v12, v14

    if-eqz v2, :cond_4

    add-long v8, v8, v16

    move-wide v14, v8

    goto :goto_4

    :cond_4
    move-wide v14, v10

    .line 947
    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v23, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_6

    .line 949
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v7

    cmp-long v9, v20, v7

    if-nez v9, :cond_5

    sub-long v7, v0, v16

    :goto_5
    move-wide v12, v7

    goto :goto_6

    .line 953
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v7

    sub-long v7, v7, v16

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    add-long/2addr v12, v14

    sub-long v12, v12, v16

    .line 960
    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v2, :cond_7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const-string v7, ""

    :goto_7
    move-object/from16 v8, p1

    move v9, v2

    move-wide v10, v14

    move-wide/from16 v24, v12

    move/from16 v26, v4

    move-object/from16 v27, v5

    move-wide v4, v14

    move-object v14, v7

    move-object/from16 v7, v22

    move v15, v6

    invoke-virtual/range {v8 .. v15}, Lcom/netease/download/downloader/DownloadParams;->produceSegment(IJJLjava/lang/String;F)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v8

    aput-object v8, v3, v2

    .line 962
    aget-object v8, v3, v2

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/netease/download/downloader/DownloadParams;->setmChannel(Ljava/lang/String;)V

    .line 963
    aget-object v8, v3, v2

    sub-long v14, v4, v18

    invoke-virtual {v8, v14, v15}, Lcom/netease/download/downloader/DownloadParams;->setmMergeOffset(J)V

    const-string v8, "DownloadAllCore"

    .line 964
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5206\u7247\u53c2\u6570\u751f\u6210\uff0c\u5206\u7247="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", start="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", end="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move-wide v10, v4

    move-object v15, v7

    move-wide v8, v12

    move/from16 v4, v26

    move-object/from16 v5, v27

    const/4 v7, 0x0

    const/4 v14, 0x1

    goto/16 :goto_3

    :cond_8
    move-object/from16 v27, v5

    const-string v4, "\u5e73\u5747\u5206"

    .line 968
    invoke-static {v4}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    int-to-long v4, v2

    .line 969
    div-long v18, v0, v4

    mul-long v4, v4, v18

    sub-long/2addr v0, v4

    .line 971
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v4

    add-long v0, v18, v0

    sub-long v0, v0, v16

    move-wide/from16 v22, v0

    move-wide/from16 v20, v4

    const/4 v0, 0x0

    :goto_8
    if-eq v0, v2, :cond_a

    .line 975
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_9

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_9
    move-object v14, v7

    goto :goto_a

    :cond_9
    move-object/from16 v1, v27

    const-string v7, ""

    goto :goto_9

    :goto_a
    move-object/from16 v8, p1

    move v9, v0

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    move v15, v6

    invoke-virtual/range {v8 .. v15}, Lcom/netease/download/downloader/DownloadParams;->produceSegment(IJJLjava/lang/String;F)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    aput-object v7, v3, v0

    .line 976
    aget-object v7, v3, v0

    sub-long v8, v20, v4

    invoke-virtual {v7, v8, v9}, Lcom/netease/download/downloader/DownloadParams;->setmMergeOffset(J)V

    add-long v20, v22, v16

    add-long v7, v20, v18

    sub-long v22, v7, v16

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v27, v1

    goto :goto_8

    :cond_a
    :goto_b
    const-string v0, "DownloadAllCore"

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u7247\u53c2\u6570\u4e2a\u6570="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    array-length v0, v3

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_b

    aget-object v2, v3, v1

    const-string v4, "DownloadAllCore"

    .line 985
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5206\u7247\u53c2\u6570="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_b
    return-object v3
.end method

.method private setPartParams([Lcom/netease/download/downloader/DownloadParams;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mPartParams:[Lcom/netease/download/downloader/DownloadParams;

    return-void
.end method

.method private setTotalFileSize(J)V
    .locals 0

    .line 892
    iput-wide p1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mTotalFileSize:J

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/downloader/DownloadParams;->setmStartDownloadTime(J)V

    .line 1107
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->start()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DownloadAllCore"

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadAllCore Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 1112
    :goto_0
    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {p0, v1, v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->handleElement(Lcom/netease/download/downloader/DownloadParams;I)V

    const-string v1, "DownloadAllCore"

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d call\u7ed3\u675f\uff0c\u63a5\u4e0b\u6765\u5e94\u8be5\u8fd4\u56de\u5230\u7ebf\u7a0b\u6c60\u7684\u7ed3\u679c\u56de\u8c03 result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadCallBack:Lcom/netease/download/downloadpart/DownloadCallBack;

    iget v2, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mIndex:I

    iget-object v3, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-interface {v1, v0, v2, v3}, Lcom/netease/download/downloadpart/DownloadCallBack;->onFinish(IILcom/netease/download/downloader/DownloadParams;)I

    .line 1116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public check(Lcom/netease/download/downloader/DownloadParams;)I
    .locals 7

    const-string v0, "DownloadAllCore"

    const-string v1, "DownloadAllCore [check] start"

    .line 184
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadAllCore [check] \u5c06\u8981\u4e0b\u8f7d\u6587\u4ef6\u7684\u5168\u8def\u5f84="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->ismWriteToExistFile()Z

    move-result v1

    if-nez v1, :cond_4

    .line 190
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/TaskHandle;->isMergeMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v2

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-string p1, "NotMD5"

    .line 197
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const-string p1, "DownloadAllCore"

    const-string v0, "DownloadAllCore [check] \u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u8bbe\u7f6e\u4e86NotMD5\uff0c\u6587\u4ef6\u5927\u5c0f\u662f\u5bf9\u7684"

    .line 200
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    const-string p1, "DownloadAllCore"

    const-string v0, "DownloadAllCore [check] \u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u8bbe\u7f6e\u4e86NotMD5\uff0c\u6587\u4ef6\u5927\u5c0f\u662f\u9519\u7684"

    .line 204
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    .line 209
    :cond_1
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandle;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/download/util/HashUtil;->calculateFileHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "DownloadAllCore"

    const-string v0, "DownloadAllCore [check] \u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u8bbe\u7f6e\u4e86md5\uff0c\u4e14md5\u9a8c\u8bc1\u901a\u8fc7"

    .line 212
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_2
    const-string p1, "DownloadAllCore"

    const-string v0, "DownloadAllCore [check] \u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u8bbe\u7f6e\u4e86md5\uff0c\u4f46\u662fmd5\u9a8c\u8bc1\u4e0d\u901a\u8fc7"

    .line 216
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    const-string p1, "DownloadAllCore"

    const-string v0, "DownloadAllCore [check] \u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 222
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    return p1

    :cond_4
    const-string p1, "DownloadAllCore"

    const-string v0, "DownloadAllCore [check] \u76f4\u63a5\u63d2\u5165\u5230\u5df2\u6709\u6587\u4ef6\uff0c\u8be5\u6a21\u5f0f\u4e0b\uff0c\u4e0d\u9700\u8981\u5bf9\u5df2\u6709\u6587\u4ef6\u8fdb\u884c\u68c0\u9a8c\u6216\u8005\u5220\u9664\u5de5\u4f5c"

    .line 227
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    return p1
.end method

.method public download(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I
    .locals 4

    const-string v0, "DownloadAllCore"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u5b58\u5728httpdns_config_cnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v2

    const-string v3, "httpdns_config_cnd"

    invoke-virtual {v2, v3}, Lcom/netease/download/httpdns/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u8fd8\u5b58\u5728\u6ca1\u6709\u4f7f\u7528\u7684ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v2

    const-string v3, "httpdns_config_cnd"

    invoke-virtual {v2, v3}, Lcom/netease/download/httpdns/HttpdnsProxy;->hasNext(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    const-string v1, "httpdns_config_cnd"

    invoke-virtual {v0, v1}, Lcom/netease/download/httpdns/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/download/httpdns/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns/HttpdnsProxy;

    move-result-object v0

    const-string v2, "httpdns_config_cnd"

    invoke-virtual {v0, v2}, Lcom/netease/download/httpdns/HttpdnsProxy;->hasNext(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/check/BackUpIpProxy;->neverUseBackUpIp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DownloadAllCore"

    const-string v2, "\u505a\u4e86httpdns\u89e3\u6790\uff0c\u5df2\u7ecf\u6ca1\u6709ip\u53ef\u4ee5\u4f7f\u7528\u4e86"

    .line 161
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 163
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->stopAll()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/dns/CdnIpController;->hasNextIp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netease/download/check/BackUpIpProxy;->getInstances()Lcom/netease/download/check/BackUpIpProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/check/BackUpIpProxy;->neverUseBackUpIp()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DownloadAllCore"

    const-string v2, "\u53ea\u505adns\u89e3\u6790\uff0c\u5df2\u7ecf\u6ca1\u6709ip\u53ef\u4ee5\u4f7f\u7528\u4e86"

    .line 168
    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/TaskHandle;->setStatus(I)V

    .line 170
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->stopAll()V

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mCode:I

    .line 175
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/download/downloader/FileHandle;

    invoke-direct {v2, p1}, Lcom/netease/download/downloader/FileHandle;-><init>(Lcom/netease/download/downloader/DownloadParams;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p0, p1}, Lcom/netease/download/downloadpart/DownloadAllCore;->initData(Lcom/netease/download/downloader/DownloadParams;)V

    .line 177
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mLogData:Ljava/util/HashMap;

    const-string v1, "httpdns"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/download/downloadpart/DownloadAllCore;->download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result p2

    const-string p3, "DownloadAllCore"

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6587\u4ef6\u540d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", \u603b\u4e0b\u8f7d\u4e0b\u8f7d\u7ed3\u679c="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method public getTotalFileSize()J
    .locals 2

    .line 887
    iget-wide v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mTotalFileSize:J

    return-wide v0
.end method

.method public handleElement(Lcom/netease/download/downloader/DownloadParams;I)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    const-string v3, "DownloadAllCore"

    const-string v4, "DownloadAllCore [handleElement]"

    .line 1120
    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    const-string v3, "DownloadAllCore"

    const-string v4, "DownloadAllCore [handleElement] param error"

    .line 1123
    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "DownloadAllCore"

    .line 1126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadAllCore [handleElement] result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DownloadAllCore"

    .line 1128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadAllCore [handleElement] mDownloadParams.ismWriteToExistFile() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->ismWriteToExistFile()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DownloadAllCore"

    .line 1130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadAllCore [handleElement] downloadParams = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmElementList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1134
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmWoffset()J

    move-result-wide v4

    const-string v6, "DownloadAllCore"

    .line 1136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [handleElement] woffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    const-string v3, "DownloadAllCore"

    const-string v4, "DownloadAllCore [handleElement] \u8be5\u6587\u4ef6\u5c5e\u4e8ewoffset\u6a21\u578b\uff0c\u8fdb\u5165woffset\u5904\u7406\u4e2d\u5fc3"

    .line 1141
    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-static {}, Lcom/netease/download/woffset/WoffsetProxy;->getInstances()Lcom/netease/download/woffset/WoffsetProxy;

    move-result-object v3

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getmTotalFileCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/netease/download/woffset/WoffsetProxy;->init(I)V

    .line 1143
    invoke-virtual/range {p1 .. p2}, Lcom/netease/download/downloader/DownloadParams;->setmResult(I)V

    .line 1144
    invoke-static {}, Lcom/netease/download/woffset/WoffsetProxy;->getInstances()Lcom/netease/download/woffset/WoffsetProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/download/woffset/WoffsetProxy;->put(Lcom/netease/download/downloader/DownloadParams;)V

    goto/16 :goto_f

    :cond_1
    const-string v4, "DownloadAllCore"

    const-string v5, "DownloadAllCore [handleElement] \u8be5\u6587\u4ef6\u975ewoffset\u6a21\u578b\uff0c\u76f4\u63a5\u56de\u8c03\u7ed3\u679c"

    .line 1147
    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x1

    if-gt v4, v8, :cond_9

    const-string v3, "DownloadAllCore"

    const-string v4, "DownloadAllCore [handleElement] \u4e0d\u662f\u5408\u5e76\u800c\u6210\u7684\u6587\u4ef6\uff0c\u4e0d\u9700\u8981\u518d\u5904\u7406\uff0c\u76f4\u63a5\u56de\u8c03\u51fa\u53bb\u5373\u53ef"

    .line 1156
    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v15

    .line 1160
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1162
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "DownloadAllCore"

    .line 1165
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadAllCore [handleElement] [elementList.size = 1] desFilePath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", \u6587\u4ef6\u5b58\u5728"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v4

    const-string v8, "NotMD5"

    .line 1174
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 1177
    :cond_2
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/downloader/TaskHandle;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v15}, Lcom/netease/download/util/HashUtil;->calculateFileHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DownloadAllCore"

    .line 1179
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DownloadAllCore [handleElement] [elementList.size = 1] paramMd5="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", fileMd5="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1182
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreMergeFileVerifyFailCount()V

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v4, "DownloadAllCore"

    .line 1188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [handleElement] [elementList.size = 1]desFilePath="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", \u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 1192
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskDownloadMergeFileVerifySizes(J)V

    .line 1193
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreMergeFileCount()V

    .line 1194
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreMergeFileVerifySuccessCount()V

    goto :goto_2

    .line 1197
    :cond_5
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreMergeFileFailCount()V

    .line 1199
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v3

    .line 1200
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v19

    .line 1201
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v8

    cmp-long v5, v19, v3

    if-nez v5, :cond_6

    cmp-long v5, v19, v6

    if-nez v5, :cond_6

    cmp-long v5, v8, v6

    if-lez v5, :cond_6

    const-wide/16 v3, 0x1

    sub-long/2addr v8, v3

    move-wide/from16 v21, v8

    goto :goto_1

    :cond_6
    move-wide/from16 v21, v3

    .line 1207
    :goto_1
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v23

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v23}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFailFileInfoMap(ILjava/lang/String;JJLjava/lang/String;)V

    :goto_2
    const-string v3, "DownloadAllCore"

    .line 1210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ORBIT] ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") Download Params=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" Filepath=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" Range=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "] Bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " Cost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmStartDownloadTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v8

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v3

    iget-wide v10, v3, Lcom/netease/download/downloader/TaskHandle;->mTaskAllSizes:J

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/listener/DownloadListenerProxy;->getHasDownloadSize()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getCallBackFileName()Ljava/lang/String;

    move-result-object v14

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v18

    move v9, v0

    invoke-virtual/range {v8 .. v18}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_7
    if-nez v0, :cond_8

    .line 1217
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/netease/download/downloader/FileHandle;

    const-string v3, "DownloadAllCore"

    const-string v4, "DownloadAllCore [handleElement] Rammode\u6a21\u5f0f  call sendFinishMsg"

    .line 1219
    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v3

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    iget-wide v4, v4, Lcom/netease/download/downloader/TaskHandle;->mTaskAllSizes:J

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/listener/DownloadListenerProxy;->getHasDownloadSize()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getCallBackFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13}, Lcom/netease/download/downloader/FileHandle;->getDownloadParams()Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v12

    move-object v2, v3

    move/from16 v3, p2

    move-object v9, v15

    invoke-virtual/range {v2 .. v12}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v13}, Lcom/netease/download/downloader/FileHandle;->getDownloadParams()Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->clearByteBuffer()V

    goto/16 :goto_e

    :cond_8
    const-string v3, "DownloadAllCore"

    const-string v4, "DownloadAllCore [handleElement] Rammode\u6a21\u5f0f  call sendFinishMsg"

    .line 1224
    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v3

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    iget-wide v4, v4, Lcom/netease/download/downloader/TaskHandle;->mTaskAllSizes:J

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/listener/DownloadListenerProxy;->getHasDownloadSize()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getCallBackFileName()Ljava/lang/String;

    move-result-object v8

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v12

    move-object v2, v3

    move/from16 v3, p2

    move-object v9, v15

    invoke-virtual/range {v2 .. v12}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1230
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v8, :cond_15

    const-string v4, "DownloadAllCore"

    const-string v6, "DownloadAllCore [handleElement] merge\u5408\u5e76\u800c\u6210\u7684\u6587\u4ef6\uff0c\u9700\u8981\u8fdb\u884c\u62c6\u5206"

    .line 1231
    invoke-static {v4, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_14

    const-string v0, "DownloadAllCore"

    const-string v4, "DownloadAllCore [handleElement] [elementList.size > 1] merge\u5408\u5e76\u800c\u6210\u7684\u6587\u4ef6\uff0c\u5bf9\u4e8e\u4e0b\u8f7d\u6210\u529f\u7684\u90e8\u5206\uff0c\u8fdb\u884c\u62c6\u5206"

    .line 1234
    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1237
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__all_"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1241
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v4, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v0, "DownloadAllCore"

    .line 1245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DownloadAllCore [handleElement] [elementList.size > 1] elementList size="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v8, -0x1

    move-wide v10, v8

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/netease/download/downloader/DownloadParams$Element;

    .line 1253
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreMergeFileCount()V

    .line 1255
    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementFilePath()Ljava/lang/String;

    move-result-object v14

    .line 1256
    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementStart()J

    move-result-wide v12

    cmp-long v0, v8, v10

    if-nez v0, :cond_a

    move-wide v10, v12

    .line 1262
    :cond_a
    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementLast()J

    move-result-wide v8

    move-object/from16 v24, v6

    sub-long v5, v8, v12

    long-to-int v0, v5

    .line 1264
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1269
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 1271
    :cond_b
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1272
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_c
    :goto_4
    const-string v5, "DownloadAllCore"

    .line 1276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DownloadAllCore [handleElement] [elementList.size > 1] element start="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", end="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", desFilePath="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", priFilePath="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v24

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetUrl="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1281
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    sub-long v1, v12, v10

    .line 1282
    invoke-virtual {v6, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 1283
    new-array v1, v0, [B

    .line 1284
    invoke-virtual {v6, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 1286
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1287
    :try_start_1
    invoke-virtual {v2, v1, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1299
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    const-string v1, "DownloadAllCore"

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [handleElement] [elementList.size > 1] IOException="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v25, v2

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/16 v25, 0x0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    :goto_6
    :try_start_3
    const-string v2, "DownloadAllCore"

    .line 1290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadAllCore [handleElement] [elementList.size > 1] Exception="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_d

    .line 1298
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1299
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v1, "DownloadAllCore"

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadAllCore [handleElement] [elementList.size > 1] IOException="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1308
    :cond_d
    :goto_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "DownloadAllCore"

    .line 1312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadAllCore [handleElement] [elementList.size > 1] desFilePath="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \u6587\u4ef6\u5b58\u5728"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementMd5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotMD5"

    .line 1321
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v22, v1

    const/16 v26, 0x0

    goto/16 :goto_9

    :cond_e
    const-string v2, "DownloadAllCore"

    .line 1324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [handleElement] [elementList.size > 1] element.getmElementFilePath()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", desFilePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/download/util/HashUtil;->calculateFileHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "DownloadAllCore"

    .line 1327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadAllCore [handleElement] [elementList.size > 1] paramMd5="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", fileMd5="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1330
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreMergeFileVerifyFailCount()V

    const/16 v26, 0x3

    goto :goto_8

    :cond_f
    const/16 v26, 0x0

    :goto_8
    move-object/from16 v22, v1

    goto :goto_9

    :cond_10
    const/4 v1, 0x4

    const-string v2, "DownloadAllCore"

    .line 1337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadAllCore [handleElement] [elementList.size > 1] desFilePath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x0

    const/16 v26, 0x4

    :goto_9
    if-nez v26, :cond_11

    .line 1341
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskDownloadMergeFileVerifySizes(J)V

    .line 1342
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreMergeFileVerifySuccessCount()V

    move-object v2, v15

    goto :goto_a

    .line 1345
    :cond_11
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreMergeFileFailCount()V

    .line 1346
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v17

    move-object v2, v15

    move-object v15, v0

    move/from16 v16, v26

    move-wide/from16 v18, v12

    move-wide/from16 v20, v8

    invoke-virtual/range {v15 .. v22}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFailFileInfoMap(ILjava/lang/String;JJLjava/lang/String;)V

    :goto_a
    const-string v0, "DownloadAllCore"

    .line 1349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ORBIT] ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") Download Params=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" Filepath=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" Range=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "] Bytes="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Cost="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmStartDownloadTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v12

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getTaskAllSizes()J

    move-result-wide v0

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/listener/DownloadListenerProxy;->getHasDownloadSize()J

    move-result-wide v16

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v22

    move/from16 v13, v26

    move-object v4, v14

    move-wide v14, v0

    move-object/from16 v18, v4

    move-object/from16 v19, v4

    invoke-virtual/range {v12 .. v22}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v8, -0x1

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v25, v1

    move-object v1, v0

    :goto_b
    if-eqz v25, :cond_12

    .line 1298
    :try_start_5
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->flush()V

    .line 1299
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    .line 1302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadAllCore [handleElement] [elementList.size > 1] IOException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadAllCore"

    invoke-static {v3, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1304
    :cond_12
    :goto_c
    throw v1

    .line 1353
    :cond_13
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1354
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto/16 :goto_e

    :cond_14
    const-string v1, "DownloadAllCore"

    const-string v2, "DownloadAllCore [handleElement] [elementList.size > 1] merge\u5408\u5e76\u800c\u6210\u7684\u6587\u4ef6\uff0c\u5bf9\u4e8e\u4e0b\u8f7d\u5931\u8d25\u7684\u90e8\u5206\uff0c\u4e0d\u9700\u8981\u62c6\u5206"

    .line 1358
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/download/downloader/DownloadParams$Element;

    .line 1361
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileEnterDownloadProcessCoreMergeFileFailCount()V

    .line 1362
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementStart()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementLast()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementMd5()Ljava/lang/String;

    move-result-object v10

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v10}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFailFileInfoMap(ILjava/lang/String;JJLjava/lang/String;)V

    const-string v3, "DownloadAllCore"

    .line 1363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ORBIT] ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") Download Params=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" Filepath=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" Range=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "] Bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " Cost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmStartDownloadTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v3

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/TaskHandle;->getTaskAllSizes()J

    move-result-wide v5

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/listener/DownloadListenerProxy;->getHasDownloadSize()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams$Element;->getmElementFilePath()Ljava/lang/String;

    move-result-object v10

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getSessionid()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v13

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v13}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_15
    :goto_e
    const-string v0, "DownloadAllCore"

    const-string v1, "DownloadAllCore [handleElement] Rammode\u6a21\u5f0f  call sendFinishMsg2222"

    .line 1369
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public handleViaFileCheckStatus(ILjava/io/File;)I
    .locals 3

    const-string v0, "DownloadAllCore"

    const-string v1, "DownloadAllCore [handleViaFileCheckStatus] start"

    .line 233
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadAllCore"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadAllCore [handleViaFileCheckStatus] fileCheckStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 239
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskFileHasSuccessCount()V

    .line 240
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/netease/download/downloader/TaskHandleOp;->addTaskHasDownloadVerifySizes(J)V

    const-string p1, "DownloadAllCore"

    const-string p2, "DownloadAllCore [handleViaFileCheckStatus] \u6587\u4ef6\u662f\u5408\u683c\u7684\uff0c \u76f4\u63a5\u8fd4\u56de\u7ed9\u63a5\u5165\u65b9"

    .line 241
    invoke-static {p1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_2

    .line 246
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandle;->isRenew()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DownloadAllCore"

    const-string p2, "DownloadAllCore [handleViaFileCheckStatus] \u6ca1\u6709\u8bbe\u7f6eisRenew\uff0c \u76f4\u63a5\u8fd4\u56de\u7ed9\u63a5\u5165\u65b9"

    .line 247
    invoke-static {p1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "DownloadAllCore"

    const-string v0, "DownloadAllCore [handleViaFileCheckStatus] \u6587\u4ef6MD5ERROR\uff0c\u8bbe\u7f6e\u4e86isRenew\uff0c \u5185\u90e8\u5220\u9664\u8be5\u6587\u4ef6\uff0c\u91cd\u65b0\u4e0b\u8f7d"

    .line 251
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_4

    .line 257
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandle;->isRenew()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "DownloadAllCore"

    const-string p2, "DownloadAllCore [handleViaFileCheckStatus] \u6ca1\u6709\u8bbe\u7f6eisRenew\uff0c \u76f4\u63a5\u8fd4\u56de\u7ed9\u63a5\u5165\u65b9"

    .line 258
    invoke-static {p1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "DownloadAllCore"

    const-string v0, "DownloadAllCore [handleViaFileCheckStatus] \u6587\u4ef6SIZEERROR \u8bbe\u7f6e\u4e86isRenew\uff0c \u5185\u90e8\u5220\u9664\u8be5\u6587\u4ef6\uff0c\u91cd\u65b0\u4e0b\u8f7d"

    .line 262
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_4
    const/4 p2, 0x4

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public init(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/downloadpart/DownloadCallBack;I)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 81
    iput-object p2, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadCallBack:Lcom/netease/download/downloadpart/DownloadCallBack;

    .line 82
    iput p3, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mIndex:I

    return-void
.end method

.method public initData(Lcom/netease/download/downloader/DownloadParams;)V
    .locals 1

    .line 102
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/download/downloader/TaskHandle;->getOverSea()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-1"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_WS_CHINA:[Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/download/Const;->setReqIpsForWs([Ljava/lang/String;)V

    .line 108
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_CHINA:[Ljava/lang/String;

    sput-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/download/Const;->setReqIpsForWs([Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    sput-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "2"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    invoke-static {p1}, Lcom/netease/download/Const;->setReqIpsForWs([Ljava/lang/String;)V

    .line 116
    sget-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    sput-object p1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    const-string p1, "sigma-orbit-impression.proxima.nie.easebar.com"

    .line 117
    sput-object p1, Lcom/netease/download/Const;->URL_LOG:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public start()I
    .locals 6

    .line 126
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DownloadAllCore"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadAllCore [start] Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, -0x1

    :goto_0
    const-string v2, "DownloadAllCore"

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ORBIT] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") Download URL=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" Size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " DownloadedSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " first="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " last="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " Md5=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" Filepath=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DownloadAllCore"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f51\u7edc\u5f02\u5e38="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v1, v0, :cond_0

    return v1

    .line 143
    :cond_0
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v1, v0, :cond_1

    return v1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    sget-object v1, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/download/downloadpart/DownloadAllCore;->download(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v0

    return v0
.end method
