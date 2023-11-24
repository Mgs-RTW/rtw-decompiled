.class public Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# instance fields
.field private mBatteryChangeListener:Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;


# direct methods
.method public constructor <init>(Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;->mBatteryChangeListener:Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "android.intent.action.BATTERY_CHANGED"

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 26
    new-instance p1, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;

    invoke-direct {p1}, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;-><init>()V

    const-string v0, "level"

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scal"

    const/16 v3, 0x64

    .line 28
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;->batteryLevel:Ljava/lang/String;

    const-string v0, "status"

    const/4 v2, -0x1

    .line 31
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    const-string p2, "charging"

    goto :goto_0

    :cond_3
    const-string p2, "not charging"

    .line 34
    :goto_0
    iput-object p2, p1, Lcom/netease/unisdk/gmbridge/device/BatteryInfo;->batteryStatus:Ljava/lang/String;

    .line 36
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/receiver/BatteryReceiver;->mBatteryChangeListener:Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;

    invoke-interface {p2, p1}, Lcom/netease/unisdk/gmbridge/receiver/IBatteryChangeListener;->onBatteryChanged(Lcom/netease/unisdk/gmbridge/device/BatteryInfo;)V

    :cond_4
    return-void
.end method
