.class public Lcom/netease/cloud/nos/android/monitor/MonitorConfig;
.super Ljava/lang/Object;
.source "MonitorConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netease/cloud/nos/android/monitor/MonitorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private connectionTimeout:I

.field private monitorHost:Ljava/lang/String;

.field private monitorInterval:J

.field private soTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->LOGTAG:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig$1;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig$1;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://wanproxy.127.net"

    .line 12
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 13
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->connectionTimeout:I

    const/16 v0, 0x7530

    .line 14
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->soTimeout:I

    const-wide/32 v0, 0x1d4c0

    .line 15
    iput-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorInterval:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://wanproxy.127.net"

    .line 12
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    const/16 v0, 0x2710

    .line 13
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->connectionTimeout:I

    const/16 v0, 0x7530

    .line 14
    iput v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->soTimeout:I

    const-wide/32 v0, 0x1d4c0

    .line 15
    iput-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorInterval:J

    .line 28
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->connectionTimeout:I

    .line 30
    iput p3, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->soTimeout:I

    .line 31
    iput-wide p4, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorInterval:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->connectionTimeout:I

    return v0
.end method

.method public getMonitorHost()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorInterval()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorInterval:J

    return-wide v0
.end method

.method public getSoTimeout()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->soTimeout:I

    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 52
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->connectionTimeout:I

    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ConnectionTimeout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMonitorInterval(J)V
    .locals 3

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 72
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid monitorInterval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    iput-wide p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorInterval:J

    return-void
.end method

.method public setMontiroHost(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

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

    .line 63
    iput p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->soTimeout:I

    return-void

    .line 61
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 87
    iget-object p2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorHost:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->connectionTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget p2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->soTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-wide v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->monitorInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
