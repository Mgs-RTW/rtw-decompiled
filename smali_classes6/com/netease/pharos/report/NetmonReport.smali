.class public Lcom/netease/pharos/report/NetmonReport;
.super Ljava/lang/Object;
.source "NetmonReport.java"


# instance fields
.field private mCliIp:Ljava/lang/String;

.field private mCliMtr:Ljava/lang/String;

.field private mKcptestTime:J

.field private mLinktestId:Ljava/lang/String;

.field private mLinktestProtocol:Ljava/lang/String;

.field private mNetCarrier:Ljava/lang/String;

.field private mNetworkCondition:Ljava/lang/String;

.field private mPacketCount:J

.field public mPacketLossCount:J

.field private mSvrIp:Ljava/lang/String;

.field private mSvrMtr:Ljava/lang/String;

.field private mTcptestTime:J

.field private mTimeZone:Ljava/lang/String;

.field private mUdptestTime:J

.field private mWifiSignal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 190
    iput-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .line 224
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addPacketLossCount()V
    .locals 4

    monitor-enter p0

    .line 202
    :try_start_0
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCliIp()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mCliIp:Ljava/lang/String;

    return-object v0
.end method

.method public getCliMtr()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mCliMtr:Ljava/lang/String;

    return-object v0
.end method

.method public getKcptestTime()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mKcptestTime:J

    return-wide v0
.end method

.method public getLinktestId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestId:Ljava/lang/String;

    return-object v0
.end method

.method public getLinktestProtocol()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getNetCarrier()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mNetCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCondition()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mNetworkCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketCount()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketCount:J

    return-wide v0
.end method

.method public getPacketLossCount()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    return-wide v0
.end method

.method public getSvrIp()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrIp:Ljava/lang/String;

    return-object v0
.end method

.method public getSvrMtr()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrMtr:Ljava/lang/String;

    return-object v0
.end method

.method public getTcptestTime()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mTcptestTime:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/netease/pharos/report/NetmonReport;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUdptestTime()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/netease/pharos/report/NetmonReport;->mUdptestTime:J

    return-wide v0
.end method

.method public getWifiSignal()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/netease/pharos/report/NetmonReport;->mWifiSignal:I

    return v0
.end method

.method public setCliIp(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mCliIp:Ljava/lang/String;

    return-void
.end method

.method public setCliMtr(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mCliMtr:Ljava/lang/String;

    return-void
.end method

.method public setKcptestTime(J)V
    .locals 0

    .line 159
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mKcptestTime:J

    return-void
.end method

.method public setLinktestId(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestId:Ljava/lang/String;

    return-void
.end method

.method public setLinktestProtocol(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mLinktestProtocol:Ljava/lang/String;

    return-void
.end method

.method public setNetCarrier(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mNetCarrier:Ljava/lang/String;

    return-void
.end method

.method public setNetworkCondition(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mNetworkCondition:Ljava/lang/String;

    return-void
.end method

.method public setPacketCount(J)V
    .locals 0

    .line 214
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketCount:J

    return-void
.end method

.method public setPacketLossCount(J)V
    .locals 0

    .line 206
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mPacketLossCount:J

    return-void
.end method

.method public setSvrIp(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrIp:Ljava/lang/String;

    return-void
.end method

.method public setSvrMtr(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mSvrMtr:Ljava/lang/String;

    return-void
.end method

.method public setTcptestTime(J)V
    .locals 0

    .line 151
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mTcptestTime:J

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/netease/pharos/report/NetmonReport;->mTimeZone:Ljava/lang/String;

    return-void
.end method

.method public setUdptestTime(J)V
    .locals 0

    .line 167
    iput-wide p1, p0, Lcom/netease/pharos/report/NetmonReport;->mUdptestTime:J

    return-void
.end method

.method public setWifiSignal(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/netease/pharos/report/NetmonReport;->mWifiSignal:I

    return-void
.end method
