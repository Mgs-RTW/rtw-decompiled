.class public Lcom/netease/pharos/locationCheck/NetAreaCore;
.super Ljava/lang/Object;
.source "NetAreaCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetAreaCore"

.field private static sLocationCore:Lcom/netease/pharos/locationCheck/NetAreaCore;


# instance fields
.field private dealer:Lcom/netease/pharos/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/pharos/network/NetworkDealer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/netease/pharos/locationCheck/NetAreaCore;->mHasRequested:Z

    .line 52
    new-instance v0, Lcom/netease/pharos/locationCheck/NetAreaCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/locationCheck/NetAreaCore$1;-><init>(Lcom/netease/pharos/locationCheck/NetAreaCore;)V

    iput-object v0, p0, Lcom/netease/pharos/locationCheck/NetAreaCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/locationCheck/NetAreaCore;
    .locals 1

    .line 46
    sget-object v0, Lcom/netease/pharos/locationCheck/NetAreaCore;->sLocationCore:Lcom/netease/pharos/locationCheck/NetAreaCore;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/netease/pharos/locationCheck/NetAreaCore;

    invoke-direct {v0}, Lcom/netease/pharos/locationCheck/NetAreaCore;-><init>()V

    sput-object v0, Lcom/netease/pharos/locationCheck/NetAreaCore;->sLocationCore:Lcom/netease/pharos/locationCheck/NetAreaCore;

    .line 49
    :cond_0
    sget-object v0, Lcom/netease/pharos/locationCheck/NetAreaCore;->sLocationCore:Lcom/netease/pharos/locationCheck/NetAreaCore;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .line 227
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public start()I
    .locals 6

    .line 95
    invoke-static {}, Lcom/netease/pharos/ServerProxy;->getInstance()Lcom/netease/pharos/ServerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/ServerProxy;->getNetAreaUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/netease/pharos/util/Util;->getUpperVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "all"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 95
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetAreaCore [start] \u666e\u901a\u8bf7\u6c42\u7ed3\u679c decision="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/PharosProxy;->getmDecision()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetAreaCore"

    invoke-static {v3, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmDecision()I

    move-result v2

    if-ne v5, v2, :cond_0

    .line 101
    invoke-static {}, Lcom/netease/pharos/ServerProxy;->getInstance()Lcom/netease/pharos/ServerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/ServerProxy;->getNetAreaUrl()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/netease/pharos/util/Util;->getUpperVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/PharosProxy;->getmProjectId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 101
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v1

    invoke-static {v0}, Lcom/netease/pharos/util/Util;->getDecisionTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->setmDecisionTag(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/netease/pharos/locationCheck/NetAreaCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetAreaCore [start] \u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetAreaCore [start] \u666e\u901a\u8bf7\u6c42\u7ed3\u679c DeviceInfo.getInstances().getmProbeRegion()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceCheck/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/pharos/deviceCheck/DeviceInfo;->getmProbeRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const-string v1, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u83b7\u53d6\u5931\u8d25\uff0c\u91c7\u7528\u4e0a\u4e00\u6b21\u6570\u636e"

    .line 169
    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getLastNetDecisionConfigContent()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u4e0a\u4e00\u6b21\u6570\u636e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->init(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u4e0a\u4e00\u6b21\u6570\u636e \u8bfb\u53d6\u5931\u8d25\uff0c\u91c7\u7528\u9ed8\u8ba4\u6570\u636e"

    .line 177
    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getDefaultNetDecisionConfigContent()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u9ed8\u8ba4\u6570\u636e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->getInstances()Lcom/netease/pharos/locationCheck/NetAreaInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/pharos/locationCheck/NetAreaInfo;->init(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u9ed8\u8ba4\u6570\u636e \u8bfb\u53d6\u5931\u8d25"

    .line 185
    invoke-static {v1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string v0, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868"

    .line 195
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Pharos] Config Refresh url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetAreaCore"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Lcom/netease/pharos/locationCheck/NetAreaCore;->mHasRequested:Z

    const/16 v2, 0xb

    if-eqz v0, :cond_0

    const-string p1, "NetAreaCore \u6b64\u6b21APP\u542f\u52a8\u5df2\u8bf7\u6c42\u4e00\u6b21\uff0c\u4e0d\u518d\u4e8c\u6b21\u8bf7\u6c42"

    .line 200
    invoke-static {v1, p1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/netease/pharos/locationCheck/NetAreaCore;->mHasRequested:Z

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Host"

    .line 207
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    :try_start_0
    const-string p2, "GET"

    .line 213
    iget-object v0, p0, Lcom/netease/pharos/locationCheck/NetAreaCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Lcom/netease/pharos/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NetAreaCore [start] \u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868---\u7ed3\u679c="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    return v2
.end method
