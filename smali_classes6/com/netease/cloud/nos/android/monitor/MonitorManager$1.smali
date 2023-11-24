.class Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;
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


# instance fields
.field final synthetic this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;


# direct methods
.method constructor <init>(Lcom/netease/cloud/nos/android/monitor/MonitorManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-static {p2}, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/netease/cloud/nos/android/monitor/ISendStat;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$0(Lcom/netease/cloud/nos/android/monitor/MonitorManager;Lcom/netease/cloud/nos/android/monitor/ISendStat;)V

    .line 34
    invoke-static {}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$1()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Stat onServiceConnected, instSendStat="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$2(Lcom/netease/cloud/nos/android/monitor/MonitorManager;)Lcom/netease/cloud/nos/android/monitor/ISendStat;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendConfig()V

    .line 38
    iget-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStatItem()V

    .line 39
    iget-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instEndService()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$0(Lcom/netease/cloud/nos/android/monitor/MonitorManager;Lcom/netease/cloud/nos/android/monitor/ISendStat;)V

    return-void
.end method
