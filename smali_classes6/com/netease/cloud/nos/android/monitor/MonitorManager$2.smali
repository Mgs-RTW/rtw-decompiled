.class Lcom/netease/cloud/nos/android/monitor/MonitorManager$2;
.super Ljava/lang/Object;
.source "MonitorManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cloud/nos/android/monitor/MonitorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 128
    invoke-static {p2}, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/netease/cloud/nos/android/monitor/ISendStat;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$3(Lcom/netease/cloud/nos/android/monitor/ISendStat;)V

    .line 129
    invoke-static {}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$1()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Stat onServiceConnected, iSendStat="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$4()Lcom/netease/cloud/nos/android/monitor/ISendStat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 123
    invoke-static {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$3(Lcom/netease/cloud/nos/android/monitor/ISendStat;)V

    return-void
.end method
