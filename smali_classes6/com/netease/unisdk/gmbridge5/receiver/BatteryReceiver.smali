.class public Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# instance fields
.field private mBatteryChangeListener:Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;


# direct methods
.method public constructor <init>(Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;->mBatteryChangeListener:Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 26
    new-instance p1, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;

    invoke-direct {p1}, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;-><init>()V

    const/4 v0, 0x0

    const-string v1, "level"

    .line 27
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x64

    const-string v3, "scal"

    .line 28
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;->batteryLevel:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "status"

    .line 31
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    const-string p2, "charging"

    goto :goto_0

    :cond_3
    const-string p2, "not charging"

    .line 34
    :goto_0
    iput-object p2, p1, Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;->batteryStatus:Ljava/lang/String;

    .line 36
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge5/receiver/BatteryReceiver;->mBatteryChangeListener:Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;

    invoke-interface {p2, p1}, Lcom/netease/unisdk/gmbridge5/receiver/IBatteryChangeListener;->onBatteryChanged(Lcom/netease/unisdk/gmbridge5/device/BatteryInfo;)V

    :cond_4
    return-void
.end method
