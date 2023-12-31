.class public Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;
.super Ljava/lang/Object;
.source "ProtocolCheckCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetmonProxy"

.field public static mNetmonReportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/netease/pharos/report/NetmonReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

.field private mCount:I

.field private mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

.field private mExtra:Ljava/lang/String;

.field private mInterval:I

.field private mIp:Ljava/lang/String;

.field private mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

.field private mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

.field private mPort:I

.field private mRegion:Ljava/lang/String;

.field private mSize:I

.field private mTime:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    .line 30
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    .line 32
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    .line 34
    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mInterval:I

    return-void
.end method

.method private supportPatch()V
    .locals 2

    .line 181
    const-class v0, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "patch"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    iget v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mType:I

    iget-object v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mIp:Ljava/lang/String;

    iget v3, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mPort:I

    iget v4, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCount:I

    iget v5, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mTime:I

    iget v6, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mSize:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->check(ILjava/lang/String;IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public check(ILjava/lang/String;IIII)I
    .locals 9

    const-string v0, "NetmonProxy"

    const-string v1, "NetmonCore check"

    .line 111
    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link check1 \u53c2\u6570 type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mExtra= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mExtra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/netease/pharos/report/NetmonReport;

    invoke-direct {v0}, Lcom/netease/pharos/report/NetmonReport;-><init>()V

    int-to-long v1, p4

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/netease/pharos/report/NetmonReport;->setPacketCount(J)V

    .line 117
    sget-object v1, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mNetmonReportMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    invoke-direct {v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    .line 120
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->setRegion(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    .line 124
    iget v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mInterval:I

    if-eq v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->setInterval(I)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    if-eqz v0, :cond_2

    .line 129
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->setmListener(Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;)V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    if-eqz v0, :cond_3

    .line 133
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    if-eqz v0, :cond_4

    .line 137
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    invoke-virtual {v1, v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mExtra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->setmExtra(Ljava/lang/String;)V

    .line 144
    :cond_5
    iget-object v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->check(ILjava/lang/String;IIII)I

    move-result p1

    return p1
.end method

.method public clean()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mLinkCheck:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    invoke-virtual {v0}, Lcom/netease/pharos/protocolCheck/ProtocolCheck;->clean()V

    return-void
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getmCheckOverNotifyListener()Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    return-object v0
.end method

.method public getmCycleTaskStopListener()Lcom/netease/pharos/linkcheck/CycleTaskStopListener;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-object v0
.end method

.method public getmExtra()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getmInterval()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mInterval:I

    return v0
.end method

.method public getmListener()Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    return-object v0
.end method

.method public init(ILjava/lang/String;IIII)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mType:I

    .line 50
    iput-object p2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mIp:Ljava/lang/String;

    .line 51
    iput p3, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mPort:I

    .line 52
    iput p4, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCount:I

    .line 53
    iput p5, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mTime:I

    .line 54
    iput p6, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mSize:I

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mRegion:Ljava/lang/String;

    return-void
.end method

.method public setmCheckOverNotifyListener(Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCheckOverNotifyListener:Lcom/netease/pharos/linkcheck/CheckOverNotifyListener;

    return-void
.end method

.method public setmCycleTaskStopListener(Lcom/netease/pharos/linkcheck/CycleTaskStopListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCycleTaskStopListener:Lcom/netease/pharos/linkcheck/CycleTaskStopListener;

    return-void
.end method

.method public setmExtra(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mExtra:Ljava/lang/String;

    return-void
.end method

.method public setmInterval(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mInterval:I

    return-void
.end method

.method public setmListener(Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mListener:Lcom/netease/pharos/protocolCheck/ProtocolCheckListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mType="

    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIp="

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mIp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mPort="

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mPort:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mTime="

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mCount="

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mSize="

    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mExtra="

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mInterval="

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mRegion="

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheckCore;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
