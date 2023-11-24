.class public Lcom/netease/unisdk/gmbridge/voice/VoiceManager;
.super Ljava/lang/Object;
.source "VoiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge VoiceManager"

.field private static sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;


# instance fields
.field private mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

.field private mContext:Landroid/content/Context;

.field private mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

.field private mRecording:Z

.field private mWebViewCallbackListener:Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    .line 94
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->getInstance(Landroid/content/Context;)Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    .line 96
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mCallback:Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    invoke-virtual {p1, v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->setCallback(Lcom/netease/unisdk/ngvoice/NgVoiceCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mRecording:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->getCallbackJsonParams(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mWebViewCallbackListener:Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->startPlay(Ljava/lang/String;)V

    return-void
.end method

.method private getCallbackJsonParams(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 2

    .line 195
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 196
    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "token"

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    .line 197
    :goto_1
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "objectName"

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const-string p3, ""

    .line 198
    :goto_2
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bucketName"

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    const-string p4, ""

    .line 199
    :goto_3
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    float-to-int p2, p5

    .line 200
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/voice/VoiceManager;
    .locals 2

    .line 100
    sget-object v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    if-nez v0, :cond_1

    .line 101
    const-class v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-direct {v1, p0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    .line 105
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 107
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->sInstance:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    return-object p0
.end method

.method private startPlay(Ljava/lang/String;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntStartPlayback(Ljava/lang/String;)V

    .line 180
    sget-object p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const-string v0, "success"

    const-string v1, "start_play_record"

    invoke-virtual {p1, v0, v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelRecord()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-virtual {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntCancelRecord()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mRecording:Z

    return-void
.end method

.method public playback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-static {}, Lcom/netease/unisdk/gmbridge/utils/StorageUtil;->isSDCardAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/unisdk/gmbridge/utils/StorageUtil;->getExternalFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :goto_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ng_voice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 135
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".amr"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p2, "gm_bridge VoiceManager"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voicePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->startPlay(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_2
    new-instance p2, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;

    invoke-direct {p2, p0, p1, v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Ljava/lang/String;Ljava/io/File;)V

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->executeTask(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public startRecord(Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;)V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mWebViewCallbackListener:Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    .line 115
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntStartRecord(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mRecording:Z

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-virtual {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntStopPlayback()V

    return-void
.end method

.method public stopRecord()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->mNgVoiceManager:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-virtual {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntStopRecord()V

    return-void
.end method
