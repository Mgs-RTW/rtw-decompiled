.class public Lcom/netease/cloud/nos/android/core/AcceleratorConf;
.super Ljava/lang/Object;
.source "AcceleratorConf.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private charset:Ljava/lang/String;

.field private chunkRetryCount:I

.field private chunkSize:I

.field private connectionTimeout:I

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private isPipelineEnabled:Z

.field private lbsConnectionTimeout:I

.field private lbsHost:Ljava/lang/String;

.field private lbsIP:Ljava/lang/String;

.field private lbsSoTimeout:I

.field private md5FileMaxSize:I

.field private monitorHost:Ljava/lang/String;

.field private monitorInterval:J

.field private monitorThreadEnable:Z

.field private pipelineFailoverPeriod:J

.field private queryRetryCount:I

.field private refreshInterval:J

.field private soTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://wanproxy.127.net/lbs;http://wanproxy-hz.127.net/lbs;http://wanproxy-bj.127.net/lbs;http://wanproxy-oversea.127.net/lbs"

    .line 15
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsHost:Ljava/lang/String;

    const-string v0, "http://223.252.196.38/lbs"

    .line 16
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsIP:Ljava/lang/String;

    const-string v0, "http://wanproxy.127.net"

    .line 17
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorHost:Ljava/lang/String;

    const-string v0, "utf-8"

    .line 18
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->charset:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 20
    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->connectionTimeout:I

    const/16 v1, 0x7530

    .line 21
    iput v1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->soTimeout:I

    .line 22
    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsConnectionTimeout:I

    .line 23
    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsSoTimeout:I

    const v0, 0x8000

    .line 24
    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkSize:I

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkRetryCount:I

    .line 26
    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->queryRetryCount:I

    const-wide/32 v0, 0x6ddd00

    .line 27
    iput-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->refreshInterval:J

    const-wide/32 v0, 0x1d4c0

    .line 28
    iput-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorInterval:J

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isPipelineEnabled:Z

    const-wide/32 v0, 0x493e0

    .line 30
    iput-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->pipelineFailoverPeriod:J

    const/high16 v0, 0x100000

    .line 31
    iput v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->md5FileMaxSize:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->httpClient:Lorg/apache/http/client/HttpClient;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorThreadEnable:Z

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getChunkRetryCount()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkRetryCount:I

    return v0
.end method

.method public getChunkSize()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkSize:I

    return v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->connectionTimeout:I

    return v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getLbsConnectionTimeout()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsConnectionTimeout:I

    return v0
.end method

.method public getLbsHost()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsHost:Ljava/lang/String;

    return-object v0
.end method

.method public getLbsIP()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsIP:Ljava/lang/String;

    return-object v0
.end method

.method public getLbsSoTimeout()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsSoTimeout:I

    return v0
.end method

.method public getMd5FileMaxSize()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->md5FileMaxSize:I

    return v0
.end method

.method public getMonitorHost()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorInterval()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorInterval:J

    return-wide v0
.end method

.method public getPipelineFailoverPeriod()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->pipelineFailoverPeriod:J

    return-wide v0
.end method

.method public getQueryRetryCount()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->queryRetryCount:I

    return v0
.end method

.method public getRefreshInterval()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->refreshInterval:J

    return-wide v0
.end method

.method public getSoTimeout()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->soTimeout:I

    return v0
.end method

.method public isMonitorThreadEnabled()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorThreadEnable:Z

    return v0
.end method

.method public isPipelineEnabled()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isPipelineEnabled:Z

    return v0
.end method

.method public setChunkRetryCount(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 136
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkRetryCount:I

    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid chunkRetryCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChunkSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidChunkSizeException;
        }
    .end annotation

    const/high16 v0, 0x400000

    if-gt p1, v0, :cond_0

    const/16 v0, 0x1000

    if-lt p1, v0, :cond_0

    .line 123
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->chunkSize:I

    return-void

    .line 121
    :cond_0
    new-instance p1, Lcom/netease/cloud/nos/android/exception/InvalidChunkSizeException;

    invoke-direct {p1}, Lcom/netease/cloud/nos/android/exception/InvalidChunkSizeException;-><init>()V

    throw p1
.end method

.method public setConnectionTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 76
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->connectionTimeout:I

    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ConnectionTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->httpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public setLbsConnectionTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 100
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsConnectionTimeout:I

    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid lbsConnectionTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLbsHost(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsHost:Ljava/lang/String;

    return-void
.end method

.method public setLbsIP(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    .line 48
    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->isValidLbsIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsIP:Ljava/lang/String;

    return-void

    .line 49
    :cond_0
    new-instance p1, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    const-string v0, "Invalid LbsIP"

    invoke-direct {p1, v0}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLbsSoTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 111
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->lbsSoTimeout:I

    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid lbsSoTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMd5FileMaxSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 208
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->md5FileMaxSize:I

    return-void

    .line 205
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid md5FileMaxSize:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMonitorInterval(J)V
    .locals 3

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 171
    sget-object v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid monitorInterval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_0
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorInterval:J

    return-void
.end method

.method public setMonitorThread(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorThreadEnable:Z

    return-void
.end method

.method public setMontiroHost(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->monitorHost:Ljava/lang/String;

    return-void
.end method

.method public setPipelineEnabled(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->isPipelineEnabled:Z

    return-void
.end method

.method public setPipelineFailoverPeriod(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 188
    sget-object v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid pipelineFailoverPeriod:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_0
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->pipelineFailoverPeriod:J

    return-void
.end method

.method public setQueryRetryCount(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 149
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->queryRetryCount:I

    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid queryRetryCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRefreshInterval(J)V
    .locals 3

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 158
    sget-object v0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid refreshInterval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_0
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->refreshInterval:J

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 87
    iput p1, p0, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->soTimeout:I

    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid soTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
