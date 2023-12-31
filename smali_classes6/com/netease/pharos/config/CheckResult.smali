.class public Lcom/netease/pharos/config/CheckResult;
.super Ljava/lang/Object;
.source "CheckResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CheckResult"


# instance fields
.field private mAvgRtt:Ljava/lang/String;

.field private mExtra:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoss:Ljava/lang/String;

.field private mPacketBytesCount:I

.field private mPacketCount:I

.field private mPacketLossCount:I

.field private mPort:I

.field private mProtocol:I

.field private mRegion:Ljava/lang/String;

.field private mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mIpList:Ljava/util/ArrayList;

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .line 332
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addTime(J)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAvgSpeed()J
    .locals 7

    .line 214
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v0

    .line 216
    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    cmp-long v2, v3, v0

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-eqz v2, :cond_0

    .line 217
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long v3, v0, v2

    :cond_0
    return-wide v3
.end method

.method public getAvgTime()J
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    int-to-long v1, v1

    .line 204
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v1, v0

    int-to-long v0, v1

    return-wide v0

    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getLoss()D
    .locals 4

    .line 226
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0
.end method

.method public getMaxTime()J
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 188
    :goto_0
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 189
    iget-object v3, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMinTime()J
    .locals 10

    .line 158
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 164
    :goto_0
    iget-object v5, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    if-ge v0, v5, :cond_2

    .line 166
    iget-object v5, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    iget-object v5, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    cmp-long v0, v6, v3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-wide v1, v3

    :cond_4
    :goto_2
    return-wide v1
.end method

.method public getPacketBytesCount()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    return v0
.end method

.method public getPacketLossCount()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mPacketLossCount:I

    return v0
.end method

.method public getPingInfo()Ljava/lang/String;
    .locals 7

    .line 292
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getProtocol()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " ping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketBytesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " data bytes\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 295
    :goto_0
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getTimeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, " "

    const-string v4, "\n"

    if-ge v1, v2, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getProtocol()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketBytesCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " bytes from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " seq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getTimeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "--- "

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getProtocol()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " ping statistics ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " packets transmitted, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " packeds received, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v3

    int-to-double v5, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, " packed loss"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "round-trip min/avg/max/stddev = "

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getMinTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getMaxTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getStddev()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mProtocol:I

    return v0
.end method

.method public getSquareSum()J
    .locals 8

    .line 277
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 285
    iget-object v4, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long v4, v4, v6

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v1

    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getStddev()D
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    return-object v0
.end method

.method public getVariance()D
    .locals 9

    .line 255
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 260
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getSquareSum()J

    move-result-wide v1

    .line 261
    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v3

    int-to-long v5, v0

    mul-long v7, v5, v3

    mul-long v7, v7, v3

    sub-long/2addr v1, v7

    .line 263
    div-long/2addr v1, v5

    long-to-double v0, v1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public getmAvgRtt()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mAvgRtt:Ljava/lang/String;

    return-object v0
.end method

.method public getmExtra()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getmIpList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mIpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmLoss()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mLoss:Ljava/lang/String;

    return-object v0
.end method

.method public getmPacketCount()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mPacketCount:I

    return v0
.end method

.method public getmPort()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/netease/pharos/config/CheckResult;->mPort:I

    return v0
.end method

.method public getmRegion()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/netease/pharos/config/CheckResult;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mIp:Ljava/lang/String;

    return-void
.end method

.method public setPacketBytesCount(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    return-void
.end method

.method public setPacketCount(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mPacketCount:I

    return-void
.end method

.method public setPacketLossCount(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mPacketLossCount:I

    return-void
.end method

.method public setProtocol(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mProtocol:I

    return-void
.end method

.method public setmAvgRtt(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mAvgRtt:Ljava/lang/String;

    return-void
.end method

.method public setmExtra(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mExtra:Ljava/lang/String;

    return-void
.end method

.method public setmIpList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mIpList:Ljava/util/ArrayList;

    return-void
.end method

.method public setmLoss(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mLoss:Ljava/lang/String;

    return-void
.end method

.method public setmPort(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/netease/pharos/config/CheckResult;->mPort:I

    return-void
.end method

.method public setmRegion(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/netease/pharos/config/CheckResult;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 308
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRegion="

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mProtocol="

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mProtocol:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp="

    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mPort="

    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mPacketBytesCount="

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mPacketBytesCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mPacketCount="

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mPacketCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mPacketLossCount="

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/config/CheckResult;->mPacketLossCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mCalculateLoss="

    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getPacketLossCount()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getmPacketCount()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mBestRtt="

    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getMinTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "getAvgTime="

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mAvgSpeed="

    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netease/pharos/config/CheckResult;->getAvgSpeed()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIpList="

    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mIpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLoss="

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mLoss:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mAvgRtt="

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mAvgRtt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mExtra="

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/config/CheckResult;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
