.class Lcom/netease/cloud/nos/android/monitor/MonitorConfig$1;
.super Ljava/lang/Object;
.source "MonitorConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cloud/nos/android/monitor/MonitorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netease/cloud/nos/android/monitor/MonitorConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netease/cloud/nos/android/monitor/MonitorConfig;
    .locals 7

    .line 103
    new-instance v6, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, v6

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;-><init>(Ljava/lang/String;IIJ)V

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netease/cloud/nos/android/monitor/MonitorConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/netease/cloud/nos/android/monitor/MonitorConfig;
    .locals 0

    .line 97
    new-array p1, p1, [Lcom/netease/cloud/nos/android/monitor/MonitorConfig;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig$1;->newArray(I)[Lcom/netease/cloud/nos/android/monitor/MonitorConfig;

    move-result-object p1

    return-object p1
.end method
