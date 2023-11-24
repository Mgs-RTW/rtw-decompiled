.class public abstract Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;
.super Landroid/os/Binder;
.source "ISendStat.java"

# interfaces
.implements Lcom/netease/cloud/nos/android/monitor/ISendStat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cloud/nos/android/monitor/ISendStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.netease.cloud.nos.android.monitor.ISendStat"

.field static final TRANSACTION_sendConfig:I = 0x2

.field static final TRANSACTION_sendStat:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.netease.cloud.nos.android.monitor.ISendStat"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/netease/cloud/nos/android/monitor/ISendStat;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.netease.cloud.nos.android.monitor.ISendStat"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/netease/cloud/nos/android/monitor/ISendStat;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.netease.cloud.nos.android.monitor.ISendStat"

    .line 62
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    sget-object p1, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;->sendConfig(Lcom/netease/cloud/nos/android/monitor/MonitorConfig;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    const-string p1, "com.netease.cloud.nos.android.monitor.ISendStat"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    sget-object p1, Lcom/netease/cloud/nos/android/monitor/StatisticItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .line 55
    :cond_1
    invoke-virtual {p0, v0}, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;->sendStat(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z

    move-result p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_2
    const-string p1, "com.netease.cloud.nos.android.monitor.ISendStat"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
