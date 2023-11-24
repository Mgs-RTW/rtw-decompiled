.class public Lcom/netease/download/httpdns/ServicesNodeParams;
.super Ljava/lang/Object;
.source "ServicesNodeParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServicesNodeParams"

.field private static sServicesNodeParams:Lcom/netease/download/httpdns/ServicesNodeParams;


# instance fields
.field private mHttpdnsServicesUnitList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstances()Lcom/netease/download/httpdns/ServicesNodeParams;
    .locals 1

    .line 34
    sget-object v0, Lcom/netease/download/httpdns/ServicesNodeParams;->sServicesNodeParams:Lcom/netease/download/httpdns/ServicesNodeParams;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/netease/download/httpdns/ServicesNodeParams;

    invoke-direct {v0}, Lcom/netease/download/httpdns/ServicesNodeParams;-><init>()V

    sput-object v0, Lcom/netease/download/httpdns/ServicesNodeParams;->sServicesNodeParams:Lcom/netease/download/httpdns/ServicesNodeParams;

    .line 38
    :cond_0
    sget-object v0, Lcom/netease/download/httpdns/ServicesNodeParams;->sServicesNodeParams:Lcom/netease/download/httpdns/ServicesNodeParams;

    return-object v0
.end method


# virtual methods
.method public contain(Ljava/lang/String;)Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;

    .line 48
    iget-object v2, v2, Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;->zone:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public get(Ljava/lang/String;)Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;

    .line 64
    iget-object v2, v1, Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;->zone:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getHttpdnsServicesUnitList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668\uff0c\u521d\u59cb\u5316\u6570\u636e"

    .line 84
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "ServicesNodeParams"

    const-string v0, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668\uff0c\u6570\u636e\u4e3a\u7a7a"

    .line 87
    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 96
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 99
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p0, v2}, Lcom/netease/download/httpdns/ServicesNodeParams;->contain(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 106
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 107
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 111
    :cond_2
    new-instance v4, Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;

    invoke-direct {v4, v2, v3}, Lcom/netease/download/httpdns/ServicesNodeParams$HttpdnsServicesUnit;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 112
    iget-object v2, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p1, "ServicesNodeParams"

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Httpdns\u73af\u8282--\u8bf7\u6c42SA\u81ea\u5efa\u7684Httpdns\u670d\u52a1\u5668ip\uff0c\u7ed3\u679c\u53c2\u6570\u89e3\u6790\u5668 , \u89e3\u6790\u7ed3\u679c="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/httpdns/ServicesNodeParams;->mHttpdnsServicesUnitList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method
