.class Lcom/netease/pharos/qos/HighSpeedListCore$1;
.super Ljava/lang/Object;
.source "HighSpeedListCore.java"

# interfaces
.implements Lcom/netease/pharos/network/NetworkDealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/pharos/qos/HighSpeedListCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/pharos/network/NetworkDealer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/qos/HighSpeedListCore;


# direct methods
.method constructor <init>(Lcom/netease/pharos/qos/HighSpeedListCore;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/netease/pharos/qos/HighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/HighSpeedListCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "HighSpeedListCore \u83b7\u53d6\u9ad8\u901f\u5217\u8868---\u89e3\u6790\u5185\u5bb9"

    .line 62
    invoke-static {p2}, Lcom/netease/pharos/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 64
    new-instance p2, Ljava/io/InputStreamReader;

    const-string p3, "utf-8"

    invoke-direct {p2, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 65
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 70
    invoke-static {}, Lcom/netease/pharos/qos/HighSpeedListInfo;->getInstance()Lcom/netease/pharos/qos/HighSpeedListInfo;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/netease/pharos/qos/HighSpeedListInfo;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/netease/pharos/qos/HighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/HighSpeedListCore;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netease/pharos/qos/HighSpeedListCore;->access$102(Lcom/netease/pharos/qos/HighSpeedListCore;I)I

    .line 113
    iget-object p1, p0, Lcom/netease/pharos/qos/HighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/HighSpeedListCore;

    invoke-static {p1}, Lcom/netease/pharos/qos/HighSpeedListCore;->access$200(Lcom/netease/pharos/qos/HighSpeedListCore;)I

    move-result p1

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/pharos/qos/HighSpeedListCore$1;->processContent(Ljava/io/InputStream;ILjava/util/Map;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public processHeader(Ljava/util/Map;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    iget-object p1, p0, Lcom/netease/pharos/qos/HighSpeedListCore$1;->this$0:Lcom/netease/pharos/qos/HighSpeedListCore;

    const/16 p3, 0x1f7

    if-eq p3, p2, :cond_1

    const/16 p3, 0x198

    if-eq p3, p2, :cond_1

    const/16 p3, 0x190

    if-ne p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p1, p2}, Lcom/netease/pharos/qos/HighSpeedListCore;->access$002(Lcom/netease/pharos/qos/HighSpeedListCore;Z)Z

    return-void
.end method
