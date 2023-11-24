.class Lcom/netease/download/downloadpart/DownloadPartCore$1;
.super Ljava/lang/Object;
.source "DownloadPartCore.java"

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/downloadpart/DownloadPartCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/downloadpart/DownloadPartCore;


# direct methods
.method constructor <init>(Lcom/netease/download/downloadpart/DownloadPartCore;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DownloadPartCore [okhttpCallback] [onFailure] \u5206\u7247="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", start"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "DownloadPartCore"

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadPartCore [okhttpCallback] [onFailure] \u5206\u7247="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Call Header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 377
    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 382
    :cond_1
    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadPartCore"

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadPartCore [okhttpCallback] [onFailure] \u5206\u7247="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v2}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {p1}, Lcom/netease/download/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 393
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 394
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/download/downloader/FileHandle;

    invoke-virtual {p1}, Lcom/netease/download/downloader/FileHandle;->getPartResultMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    .line 395
    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/download/util/Util;->getCdnIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "DownloadPartCore"

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ORBIT] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") Download Params=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" Filepath=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" Segment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Host=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$400(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" IP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$300(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Range=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "DownloadPartCore [okhttpCallback] [onResponse] start"

    .line 141
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    if-eqz p1, :cond_15

    if-eqz v2, :cond_15

    const-string v0, "DownloadPartCore"

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Call Header="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", request = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DownloadPartCore"

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Response Header="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", hashCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", resUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", protocol="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->protocol()Lcom/netease/ntunisdk/okhttp3/Protocol;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", request="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", \u5206\u7247\u4e0b\u8f7d\u8fd4\u56de\uff0cInputStream\u6570\u636e\u6d41\u5904\u7406\uff0cURL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 157
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$102(Lcom/netease/download/downloadpart/DownloadPartCore;Z)Z

    const/16 v5, 0x2000

    .line 159
    new-array v6, v5, [B

    .line 160
    invoke-interface/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    const-string v7, "START"

    invoke-virtual {v0, v7}, Lcom/netease/ntunisdk/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 161
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v9

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    const-string v0, "content-length"

    .line 162
    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v0, "DownloadPartCore"

    .line 164
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v14}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v14

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", realSize="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", partSize - lastSize="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v14, v9, v7

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", partSize="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", lastSize="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v11, v14

    if-nez v0, :cond_14

    const-string v0, "DownloadPartCore"

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v9}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", \u5206\u7247\u6587\u4ef6\u8def\u5f84="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v9}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$200(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v9, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v9}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$200(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "rwd"

    invoke-direct {v0, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v4

    .line 178
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 180
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/32 v9, 0xa00000

    .line 182
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getPartCount()I

    move-result v0

    int-to-long v13, v0

    div-long/2addr v9, v13

    .line 183
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    .line 184
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/netease/download/config/ConfigProxy;->getInstances()Lcom/netease/download/config/ConfigProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config/ConfigProxy;->getmConfigParams()Lcom/netease/download/config/ConfigParams;

    move-result-object v9

    .line 187
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 191
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    new-instance v4, Ljava/io/File;

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/io/File;

    iget-object v13, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v13}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$200(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    goto :goto_1

    :cond_1
    move-object v13, v4

    .line 196
    :goto_1
    invoke-static {}, Lcom/netease/download/check/CheckTime;->newInstance()Lcom/netease/download/check/CheckTime;

    move-result-object v14

    .line 198
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getBufferCount()I

    move-result v0

    add-int/lit8 v15, v0, -0x1

    const-string v5, "DownloadPartCore"

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bufferCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bufferConunt_limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x2000

    mul-int/lit16 v0, v0, 0x2000

    .line 205
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto :goto_3

    .line 208
    :cond_2
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v2}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/downloader/FileHandle;

    .line 209
    invoke-virtual {v0}, Lcom/netease/download/downloader/FileHandle;->getDownloadParams()Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Lcom/netease/download/downloader/DownloadParams;->createByteBuffer(J)V

    .line 210
    invoke-virtual {v0}, Lcom/netease/download/downloader/FileHandle;->getDownloadParams()Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    .line 216
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 217
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getmSpeedLimit()F

    move-result v3

    const-string v0, "DownloadPartCore"

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v15}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", NetSpeedLimit="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v0, 0x0

    .line 220
    :goto_5
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v8, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_b

    .line 222
    invoke-static {}, Lcom/netease/download/network/NetworkStatus;->getNetStatus()I

    move-result v15

    if-nez v15, :cond_3

    goto/16 :goto_9

    .line 226
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    if-lt v15, v5, :cond_4

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v15

    if-nez v15, :cond_4

    add-int/2addr v0, v5

    :cond_4
    const/4 v15, 0x0

    .line 230
    invoke-virtual {v2, v6, v15, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    move-object/from16 v22, v6

    const/16 v6, 0x2000

    if-lt v15, v6, :cond_6

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_6

    :cond_5
    move-object/from16 v6, v22

    goto :goto_5

    .line 234
    :cond_6
    :goto_6
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v15

    invoke-virtual {v15}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v32, v7

    int-to-long v6, v0

    .line 235
    invoke-virtual {v14, v6, v7}, Lcom/netease/download/check/CheckTime;->mark(J)V

    .line 236
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    move-object/from16 v33, v8

    move-object/from16 v15, v32

    const/4 v8, 0x0

    invoke-virtual {v15, v5, v8, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 240
    invoke-virtual {v14}, Lcom/netease/download/check/CheckTime;->calculate()Lcom/netease/download/check/CheckTime;

    .line 241
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v23

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->getTaskAllSizes()J

    move-result-wide v24

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getCallBackFileName()Ljava/lang/String;

    move-result-object v28

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v30

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v31

    move-wide/from16 v26, v6

    invoke-virtual/range {v23 .. v31}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    move-object v15, v7

    move-object/from16 v33, v8

    int-to-long v5, v5

    .line 247
    invoke-virtual {v14}, Lcom/netease/download/check/CheckTime;->calculate()Lcom/netease/download/check/CheckTime;

    .line 248
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v34

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskHandle;->getTaskAllSizes()J

    move-result-wide v35

    iget-object v7, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getCallBackFileName()Ljava/lang/String;

    move-result-object v39

    iget-object v7, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v7}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v40

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v41

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v42

    move-wide/from16 v37, v5

    invoke-virtual/range {v34 .. v42}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_7
    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v17

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$300(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v19

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$400(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v20

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$500(Lcom/netease/download/downloadpart/DownloadPartCore;)Z

    move-result v21

    move-object/from16 v16, v14

    move-object/from16 v18, v9

    invoke-virtual/range {v16 .. v21}, Lcom/netease/download/check/CheckTime;->check(Ljava/lang/String;Lcom/netease/download/config/ConfigParams;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v11

    const/4 v8, 0x0

    cmpl-float v11, v3, v8

    if-lez v11, :cond_8

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float v0, v0, v11

    long-to-float v6, v6

    sub-float/2addr v0, v6

    cmpl-float v6, v0, v8

    if-lez v6, :cond_8

    float-to-long v6, v0

    .line 261
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 264
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 269
    :cond_8
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 273
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 274
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 277
    :cond_9
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$500(Lcom/netease/download/downloadpart/DownloadPartCore;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v5, :cond_a

    .line 280
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$102(Lcom/netease/download/downloadpart/DownloadPartCore;Z)Z

    const-string v0, "DownloadPartCore"

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", \u7b26\u5408\u4f4e\u901f\u79fb\u9664\u7684\u60c5\u51b5, \u4f4e\u901f\u79fb\u9664ip="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$300(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_a

    :cond_a
    move-object v7, v15

    move-object/from16 v6, v22

    move-object/from16 v8, v33

    goto/16 :goto_4

    :cond_b
    :goto_9
    move-object v15, v7

    const/4 v3, 0x0

    :goto_a
    if-eqz v0, :cond_c

    .line 289
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v5

    if-nez v5, :cond_c

    int-to-long v5, v0

    .line 290
    invoke-virtual {v14, v5, v6}, Lcom/netease/download/check/CheckTime;->mark(J)V

    .line 291
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v15, v7, v8, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 294
    invoke-virtual {v14}, Lcom/netease/download/check/CheckTime;->calculate()Lcom/netease/download/check/CheckTime;

    .line 295
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v22

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getTaskAllSizes()J

    move-result-wide v23

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getCallBackFileName()Ljava/lang/String;

    move-result-object v27

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v28

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v30

    move-wide/from16 v25, v5

    invoke-virtual/range {v22 .. v30}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$300(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v19

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$400(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v20

    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$500(Lcom/netease/download/downloadpart/DownloadPartCore;)Z

    move-result v21

    move-object/from16 v16, v14

    move-object/from16 v18, v9

    invoke-virtual/range {v16 .. v21}, Lcom/netease/download/check/CheckTime;->check(Ljava/lang/String;Lcom/netease/download/config/ConfigParams;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 302
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 304
    iget-object v2, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v2}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$500(Lcom/netease/download/downloadpart/DownloadPartCore;)Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v0, :cond_c

    .line 307
    iget-object v0, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$102(Lcom/netease/download/downloadpart/DownloadPartCore;Z)Z

    const-string v0, "DownloadPartCore"

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", \u7b26\u5408\u4f4e\u901f\u79fb\u9664\u7684\u60c5\u51b5, \u4f4e\u901f\u79fb\u9664ip="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$300(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_b

    :cond_c
    const/4 v2, 0x1

    :goto_b
    if-eqz v15, :cond_d

    .line 315
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V

    .line 318
    :cond_d
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/netease/download/network/NetworkStatus;->getNetStatus()I

    move-result v0

    if-eqz v0, :cond_13

    if-nez v3, :cond_12

    const-string v0, "DownloadPartCore"

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v5}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")read all"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 330
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 331
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v15

    const-string v0, "DownloadPartCore"

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")del original file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_e
    const/4 v15, 0x1

    :goto_c
    if-eqz v15, :cond_f

    .line 336
    invoke-virtual {v13, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v15

    const-string v0, "DownloadPartCore"

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", \u5206\u7247\u4efb\u52a1\u4e0b\u8f7d\u5b8c\u6210, pParams.getPart()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")rename file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz v15, :cond_10

    .line 342
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 343
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 349
    :cond_10
    invoke-interface/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 350
    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v0

    .line 357
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 358
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/download/downloader/FileHandle;

    invoke-virtual {v2}, Lcom/netease/download/downloader/FileHandle;->getPartResultMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    .line 359
    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/download/util/Util;->getCdnIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "retcode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string v2, "DownloadPartCore"

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ORBIT] ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") Download Params=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getUrlResName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" Filepath=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" Segment="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Host=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$400(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" IP="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$300(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Range=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v4}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "] Status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v2}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")channel removed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v2}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DownloadPartCore"

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 319
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadPartCore [okhttpCallback] [onResponse] \u5206\u7247="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/netease/download/downloadpart/DownloadPartCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadPartCore;

    invoke-static {v2}, Lcom/netease/download/downloadpart/DownloadPartCore;->access$000(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getPartIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", downloadPart is interrupted("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") in processContent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DownloadPartCore"

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 167
    :cond_14
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 144
    :cond_15
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
