.class public Lcom/netease/unisdk/ngvoice/NgVoiceManager;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Lcom/netease/unisdk/ngvoice/NgVoiceInterface;


# static fields
.field public static final IDLE_STATE:I = 0x0

.field private static final MIN_USABLE_SPACE:I = 0x500000

.field private static final NG_VIDEO_PERMISSIONS_REQUEST_CODE:I = 0x69

.field public static final PLAYING_STATE:I = 0x2

.field public static final RECORDING_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ng_voice Manager"

.field private static final VOICE_DIR_NAME:Ljava/lang/String; = "ng_voice"

.field private static final VOICE_FILE_SUFFIX:Ljava/lang/String; = ".amr"

.field private static sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

.field private mContext:Landroid/content/Context;

.field private mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

.field private mStartRecordTime:J

.field private mState:I

.field private mVoiceFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    .line 66
    new-instance p1, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    invoke-direct {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;-><init>()V

    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    const/4 p1, 0x2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 67
    invoke-static {p1, v0, v1}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->init(III)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/ngvoice/NgVoiceManager;ZZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;J)Ljava/io/File;
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->getFileDir(J)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->saveDownloadVoiceFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->downloadError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->translateFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/MediaPlayer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/AudioManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->startRecord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->startPlayback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->uploadVoiceFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    return-object p0
.end method

.method private checkDirUsable(Ljava/io/File;J)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 380
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "ng_voice"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/utils/FileUtil;->createDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const-string p1, "ng_voice Manager"

    const-string p2, "can\'t create dir <%s>"

    .line 382
    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v2

    invoke-static {p1, p2, p3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 385
    :cond_1
    invoke-direct {p0, v1, p2, p3}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->hasUsableSpace(Ljava/io/File;J)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ng_voice Manager"

    const-string p2, "<%s> has\'t enough space"

    .line 386
    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v2

    invoke-static {p1, p2, p3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method private checkPermissions(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 479
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 481
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    const-string v2, "ng_voice Manager"

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetSdkVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    if-lt v1, v3, :cond_1

    .line 490
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    :cond_2
    :goto_1
    return v4
.end method

.method public static clear()V
    .locals 1

    .line 709
    sget-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    if-eqz v0, :cond_0

    .line 710
    invoke-static {}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    .line 712
    sput-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    return-void
.end method

.method private doDelete(Ljava/io/File;J)V
    .locals 9

    if-eqz p1, :cond_3

    .line 694
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 695
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 696
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 699
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p2

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    const-string v4, "ng_voice Manager"

    const-string v5, "delete file :%s"

    const/4 v6, 0x1

    .line 701
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    return-void
.end method

.method private downloadError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 625
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getFileDir(J)Ljava/io/File;
    .locals 1

    .line 362
    invoke-static {}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->getExternalFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkDirUsable(Ljava/io/File;J)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkDirUsable(Ljava/io/File;J)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkDirUsable(Ljava/io/File;J)Ljava/io/File;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/netease/unisdk/ngvoice/NgVoiceManager;
    .locals 2

    .line 71
    sget-object v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .line 75
    invoke-static {p0}, Lcom/netease/unisdk/ngvoice/log/NgLog;->checkIsDebug(Landroid/content/Context;)V

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 79
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->sInstance:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    return-object p0
.end method

.method private hasUsableSpace(Ljava/io/File;J)Z
    .locals 7

    .line 393
    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v0

    const-string v2, "ng_voice Manager"

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " %s :usable size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v2, v3, v5}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long p1, v0, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private requestFocus()Z
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mAudioManager:Landroid/media/AudioManager;

    .line 228
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private saveDownloadVoiceFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    .line 635
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v2, 0x1

    .line 636
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    const/16 p2, 0x400

    .line 637
    new-array p2, p2, [B

    .line 639
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 640
    invoke-virtual {v1, p2, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 642
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 643
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 646
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private startPlayback(Ljava/lang/String;)V
    .locals 4

    const-string v0, "ng_voice Manager"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start playback in thread : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ng_voice Manager"

    const-string v0, "requestFocus error"

    .line 261
    invoke-static {p1, v0}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance p1, Lcom/netease/unisdk/ngvoice/NgVoiceManager$8;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$8;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 270
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    .line 273
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 275
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 276
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 289
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$10;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 304
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 305
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x2

    .line 306
    iput p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    .line 310
    new-instance p1, Lcom/netease/unisdk/ngvoice/NgVoiceManager$11;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$11;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private startRecord(Ljava/lang/String;)V
    .locals 5

    const-string v0, "ng_voice Manager"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start record in thread : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    invoke-direct {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    .line 103
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->setVoiceSettings(Lcom/netease/unisdk/ngvoice/NgVoiceSettings;)V

    :cond_1
    const-wide/32 v0, 0x500000

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->getFileDir(J)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "ng_voice Manager"

    const-string v0, "can\'t find a path to save voice file"

    .line 108
    invoke-static {p1, v0}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance p1, Lcom/netease/unisdk/ngvoice/NgVoiceManager$1;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$1;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 119
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".amr"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_3
    invoke-static {v0, p1}, Lcom/netease/unisdk/ngvoice/utils/FileUtil;->createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    .line 123
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    if-nez p1, :cond_4

    const-string p1, "ng_voice Manager"

    const-string v0, "can\'t create voice file"

    .line 124
    invoke-static {p1, v0}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/netease/unisdk/ngvoice/NgVoiceManager$2;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$2;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    const-string p1, "ng_voice Manager"

    const-string v0, "voice file save path = %s"

    const/4 v1, 0x1

    .line 133
    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v0, v2}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_5

    .line 136
    invoke-direct {p0, v4, v4}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    :cond_5
    const-string p1, "ng_voice Manager"

    const-string v0, "new MediaRecorder"

    .line 138
    invoke-static {p1, v0}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    .line 141
    :try_start_0
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 142
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 143
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 144
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v0, 0x128e

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 145
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    iget v0, v0, Lcom/netease/unisdk/ngvoice/NgVoiceSettings;->maxDuration:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 146
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 161
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$4;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$4;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 172
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :try_start_1
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mStartRecordTime:J

    .line 200
    iput v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const-string p1, "ng_voice Manager"

    const-string v0, "startRecord end"

    .line 201
    invoke-static {p1, v0}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ng_voice Manager"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recorder.start Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v4, v4}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    .line 191
    new-instance p1, Lcom/netease/unisdk/ngvoice/NgVoiceManager$6;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$6;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception p1

    const-string v0, "ng_voice Manager"

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, v4, v4}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    .line 176
    new-instance p1, Lcom/netease/unisdk/ngvoice/NgVoiceManager$5;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$5;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 324
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 328
    iput v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private stopRecord(ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 211
    :try_start_0
    iget-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->stop()V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 213
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "ng_voice Manager"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecord Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    if-eqz p1, :cond_1

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mStartRecordTime:J

    sub-long/2addr v0, v2

    long-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 220
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRecordFinish(ZLjava/lang/String;FLjava/lang/String;)V

    .line 222
    :cond_1
    iput-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 p1, 0x0

    .line 223
    iput p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    return-void
.end method

.method private translateFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 346
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$13;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private uploadVoiceFile(Ljava/lang/String;)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->upload(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 337
    new-instance v2, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$12;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public hasPermissions()Z
    .locals 2

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 400
    invoke-direct {p0, v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkPermissions(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 401
    invoke-direct {p0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkPermissions(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ntCancelRecord()V
    .locals 2

    const-string v0, "ng_voice Manager"

    const-string v1, "nt cancel record ... "

    .line 542
    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 543
    invoke-direct {p0, v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    .line 545
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mVoiceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public ntClearVoiceCache(J)V
    .locals 3

    .line 672
    invoke-static {}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/utils/StorageUtil;->getExternalFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "ng_voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->doDelete(Ljava/io/File;J)V

    .line 675
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ng_voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->doDelete(Ljava/io/File;J)V

    return-void
.end method

.method public ntDownloadVoiceFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "ng_voice Manager"

    const-string v1, "nt download voice file ... key = %s,voiceFileName = %s"

    const/4 v2, 0x2

    .line 568
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "ng_voice Manager"

    const-string v0, "network not available"

    .line 570
    invoke-static {p2, v0}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    const/4 v0, 0x0

    invoke-interface {p2, v3, p1, v0}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onDownloadFinish(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 574
    :cond_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntGetTranslation(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ng_voice Manager"

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt get translation ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ng_voice Manager"

    const-string v1, "network not available"

    .line 656
    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onTranslateFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 660
    :cond_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$21;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$21;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntGetVoiceAmplitude()F
    .locals 5

    .line 680
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    const/high16 v3, 0x43960000    # 300.0f

    div-float/2addr v0, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    float-to-double v3, v0

    .line 685
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-float v1, v3

    :cond_0
    const/high16 v0, 0x428c0000    # 70.0f

    div-float/2addr v1, v0

    return v1

    :cond_1
    return v1
.end method

.method public ntStartPlayback(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ng_voice Manager"

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt start playback ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    goto :goto_0

    .line 522
    :cond_0
    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 523
    invoke-direct {p0, v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    .line 526
    :cond_1
    :goto_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$17;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$17;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntStartRecord(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ng_voice Manager"

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt start record ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    goto :goto_0

    .line 464
    :cond_0
    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 465
    invoke-direct {p0, v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    .line 467
    :cond_1
    :goto_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$15;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$15;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ntStopPlayback()V
    .locals 2

    const-string v0, "ng_voice Manager"

    const-string v1, "nt stop playback ... "

    .line 536
    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopPlayback()V

    return-void
.end method

.method public ntStopRecord()V
    .locals 2

    const-string v0, "ng_voice Manager"

    const-string v1, "nt stop record ... "

    .line 501
    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->stopRecord(ZZ)V

    goto :goto_1

    .line 506
    :cond_1
    :goto_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$16;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$16;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public ntUploadVoiceFile(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ng_voice Manager"

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt upload voice file ... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ng_voice Manager"

    const-string v1, "network not available"

    .line 554
    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onUploadFinish(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 558
    :cond_0
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$18;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$18;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/16 p2, 0x69

    if-ne p1, p2, :cond_2

    if-eqz p3, :cond_2

    .line 410
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p3, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 416
    :goto_1
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    invoke-interface {p1, p2}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRequestPermissions(Z)V

    :cond_2
    return-void
.end method

.method public requestPermissions()V
    .locals 6

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 425
    invoke-direct {p0, v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkPermissions(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 426
    invoke-direct {p0, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->checkPermissions(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "ng_voice Manager"

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission.RECORD_AUDIO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ng_voice Manager"

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission.WRITE_EXTERNAL_STORAGE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 430
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    invoke-interface {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRequestPermissions(Z)V

    goto :goto_0

    .line 432
    :cond_0
    new-instance v1, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;

    invoke-direct {v1, p0, v0, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$14;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;ZZ)V

    invoke-static {v1}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    invoke-interface {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRequestPermissions(Z)V

    :goto_0
    return-void
.end method

.method public setCallback(Lcom/netease/unisdk/ngvoice/NgVoiceCallback;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    return-void
.end method

.method public setVoiceSettings(Lcom/netease/unisdk/ngvoice/NgVoiceSettings;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mSettings:Lcom/netease/unisdk/ngvoice/NgVoiceSettings;

    .line 88
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->mHttpHelper:Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->setVoiceSettings(Lcom/netease/unisdk/ngvoice/NgVoiceSettings;)V

    return-void
.end method
