.class public Lcom/netease/pharos/config/CheckConfig;
.super Ljava/lang/Object;
.source "CheckConfig.java"


# instance fields
.field private mExclude_game:Ljava/lang/String;

.field private mInclude_game:Ljava/lang/String;

.field private mInterval:I

.field private mLinktest_protocal:Ljava/lang/String;

.field private mLinktest_region:Ljava/lang/String;

.field private mLinktest_size:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mNetwork:Ljava/lang/String;

.field private mPingtest_region:Ljava/lang/String;

.field private mTraceThreshold:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .line 156
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExclude_game()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mExclude_game:Ljava/lang/String;

    return-object v0
.end method

.method public getInclude_game()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mInclude_game:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/netease/pharos/config/CheckConfig;->mInterval:I

    return v0
.end method

.method public getLinktest_protocal()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_protocal:Ljava/lang/String;

    return-object v0
.end method

.method public getLinktest_region()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_region:Ljava/lang/String;

    return-object v0
.end method

.method public getLinktest_size()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_size:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mNetwork:Ljava/lang/String;

    return-object v0
.end method

.method public getPingtest_region()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/netease/pharos/config/CheckConfig;->mPingtest_region:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceThreshold()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/netease/pharos/config/CheckConfig;->mTraceThreshold:J

    return-wide v0
.end method

.method public setExclude_game(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mExclude_game:Ljava/lang/String;

    return-void
.end method

.method public setInclude_game(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mInclude_game:Ljava/lang/String;

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/netease/pharos/config/CheckConfig;->mInterval:I

    return-void
.end method

.method public setLinktest_protocal(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_protocal:Ljava/lang/String;

    return-void
.end method

.method public setLinktest_region(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_region:Ljava/lang/String;

    return-void
.end method

.method public setLinktest_size(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mLinktest_size:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mNetwork:Ljava/lang/String;

    return-void
.end method

.method public setPingtest_region(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/netease/pharos/config/CheckConfig;->mPingtest_region:Ljava/lang/String;

    return-void
.end method

.method public setTraceThreshold(J)V
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/netease/pharos/config/CheckConfig;->mTraceThreshold:J

    return-void
.end method
