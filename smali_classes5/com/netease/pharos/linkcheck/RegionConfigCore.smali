.class public Lcom/netease/pharos/linkcheck/RegionConfigCore;
.super Ljava/lang/Object;
.source "RegionConfigCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegionConfigCore"


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

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/netease/pharos/linkcheck/RegionConfigCore$1;

    invoke-direct {v0, p0}, Lcom/netease/pharos/linkcheck/RegionConfigCore$1;-><init>(Lcom/netease/pharos/linkcheck/RegionConfigCore;)V

    iput-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .line 193
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public start()I
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/netease/pharos/linkcheck/RegionConfigCore;->start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegionConfigCore [dealer] [processContent]  \u666e\u901a\u8bf7\u6c42\u7ed3\u679c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegionConfigCore"

    invoke-static {v2, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, "RegionConfigCore [dealer] [processContent]  \u94fe\u8def\u63a2\u6d4b\u6a21\u5757---\u4e0b\u8f7d\u914d\u7f6e\u6587\u4ef6"

    .line 134
    invoke-static {v0}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0xb

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Host-Type"

    .line 145
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Host"

    .line 146
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    :try_start_0
    const-string v2, "GET"

    .line 152
    iget-object v3, p0, Lcom/netease/pharos/linkcheck/RegionConfigCore;->dealer:Lcom/netease/pharos/network/NetworkDealer;

    invoke-static {p1, p2, v2, v1, v3}, Lcom/netease/pharos/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/pharos/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RegionConfigCore [dealer] [processContent]  \u63a2\u6d4b\u7528\u6237\u8bbe\u5907\u7684\u57fa\u672c\u4fe1\u606f---\u7ed3\u679c="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    return v0
.end method
