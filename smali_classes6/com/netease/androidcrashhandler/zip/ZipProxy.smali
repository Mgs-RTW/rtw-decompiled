.class public Lcom/netease/androidcrashhandler/zip/ZipProxy;
.super Ljava/lang/Object;
.source "ZipProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZipProxy"

.field private static sZipProxy:Lcom/netease/androidcrashhandler/zip/ZipProxy;

.field private static zipCore:Lcom/netease/androidcrashhandler/zip/ZipCore;


# instance fields
.field private mUploadIngMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/zip/ZipProxy;
    .locals 2

    .line 38
    sget-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sZipProxy:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/zip/ZipProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sZipProxy:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    .line 41
    new-instance v0, Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/zip/ZipCore;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    .line 42
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    sget-object v0, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    sget-object v1, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-virtual {v1, v0}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setmUploadFilePath(Ljava/lang/String;)V

    .line 49
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->sZipProxy:Lcom/netease/androidcrashhandler/zip/ZipProxy;

    return-object v0
.end method


# virtual methods
.method public changeZipUploadStatus(Ljava/lang/String;)V
    .locals 3

    const-string v0, "trace"

    const-string v1, "ZipProxy [changeZipUploadStatus] start"

    .line 133
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipProxy [changeZipUploadStatus] zipFileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "trace"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipProxy [changeZipUploadStatus] mUploadIngMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dispatch()V
    .locals 6

    const-string v0, "trace"

    const-string v1, "ZipProxy [dispatch] start"

    .line 80
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->getInstance()Lcom/netease/androidcrashhandler/wifi4g/WifiCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->isConnectNet()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->getInstance()Lcom/netease/androidcrashhandler/wifi4g/WifiCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/wifi4g/WifiCore;->isConnectedMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->ismWifiOnly()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 89
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/zip/ZipCore;->getSuitableZipFileList()Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    new-instance v2, Lcom/netease/androidcrashhandler/net/NetZipRequest;

    invoke-direct {v2}, Lcom/netease/androidcrashhandler/net/NetZipRequest;-><init>()V

    .line 95
    invoke-virtual {v2, v1}, Lcom/netease/androidcrashhandler/net/NetZipRequest;->setmZipFileName(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/netease/androidcrashhandler/net/NetProxy;->getInstance()Lcom/netease/androidcrashhandler/net/NetProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/net/NetProxy;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    invoke-static {}, Lcom/netease/androidcrashhandler/net/NetProxy;->getInstance()Lcom/netease/androidcrashhandler/net/NetProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/net/NetProxy;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/androidcrashhandler/net/NetZipRequest;->setmUrl(Ljava/lang/String;)V

    .line 101
    :cond_1
    sget-object v3, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-virtual {v3, v1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->getCfgFileContent(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 103
    invoke-virtual {v2, v3}, Lcom/netease/androidcrashhandler/net/NetZipRequest;->setCfgFileContent(Lorg/json/JSONObject;)V

    .line 104
    new-instance v3, Lcom/netease/androidcrashhandler/zip/ZipProxy$1;

    invoke-direct {v3, p0}, Lcom/netease/androidcrashhandler/zip/ZipProxy$1;-><init>(Lcom/netease/androidcrashhandler/zip/ZipProxy;)V

    invoke-virtual {v2, v3}, Lcom/netease/androidcrashhandler/net/NetZipRequest;->setmNetCallbackImpl(Lcom/netease/androidcrashhandler/net/NetCallbackImpl;)V

    const-string v3, "trace"

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZipProxy [dispatch] zipfileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "trace"

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZipProxy [dispatch] zipfileName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \u8be5zip\u5305\u8fd8\u6ca1\u4e0a\u4f20\uff0c\u8fdb\u5165\u4e0a\u4f20\u73af\u8282"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->mUploadIngMap:Ljava/util/HashMap;

    const-string v4, "1"

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Lcom/netease/androidcrashhandler/task/TaskProxy;->getInstances()Lcom/netease/androidcrashhandler/task/TaskProxy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/task/TaskProxy;->put(Ljava/util/concurrent/Callable;)V

    goto/16 :goto_0

    :cond_2
    const-string v2, "trace"

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZipProxy [dispatch] zipfileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u8be5zip\u6b63\u5728\u4e0a\u4f20\u4e2d\uff0c\u65e0\u6cd5\u540c\u4e00\u65f6\u523b\u91cd\u590d\u4e0a\u4f20"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "trace"

    const-string v3, "ZipProxy [dispatch] param\u6587\u4ef6\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u751f\u6210config\u6587\u4ef6\uff0c\u76f4\u63a5\u5220\u9664\u8be5zip\u5305"

    .line 124
    invoke-static {v2, v3}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :cond_4
    :goto_1
    const-string v0, "trace"

    const-string v1, "ZipProxy [dispatch] \u4e0d\u89e6\u53d1\u5206\u53d1\u4e0a\u4f20\u673a\u5236"

    .line 85
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public zip(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "ZipProxy [zip] start"

    .line 53
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-virtual {v0, p2}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setErrorType(Ljava/lang/String;)V

    .line 66
    sget-object p2, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-virtual {p2, p1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->setmIsZipCrashFile(Z)V

    .line 67
    sget-object p2, Lcom/netease/androidcrashhandler/zip/ZipProxy;->zipCore:Lcom/netease/androidcrashhandler/zip/ZipCore;

    invoke-virtual {p2, p1}, Lcom/netease/androidcrashhandler/zip/ZipCore;->zip(Z)V

    .line 69
    invoke-static {}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->getInstance()Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/androidcrashhandler/entity/Extension/ExtensionInfo;->clean()V

    .line 71
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/zip/ZipProxy;->dispatch()V

    return-void
.end method
