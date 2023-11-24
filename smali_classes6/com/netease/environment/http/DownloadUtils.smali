.class public Lcom/netease/environment/http/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/netease/environment/http/DownloadUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/environment/listener/OnDownloadListener;)V
    .locals 2

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/netease/environment/http/DownloadUtils$1;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/netease/environment/http/DownloadUtils$1;-><init>(Lcom/netease/environment/listener/OnDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static downloadRegularFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 158
    invoke-static {p0, v0}, Lcom/netease/environment/config/SdkConfig;->saveDownloadState(Landroid/content/Context;Z)V

    .line 161
    sget-object v0, Lcom/netease/environment/http/DownloadUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http get:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p0}, Lcom/netease/environment/utils/FileUtils;->getTempDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/environment/utils/FileUtils;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/environment/http/DownloadUtils$2;

    invoke-direct {v2, p0, p1}, Lcom/netease/environment/http/DownloadUtils$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/netease/environment/http/DownloadUtils;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/environment/listener/OnDownloadListener;)V

    return-void
.end method
