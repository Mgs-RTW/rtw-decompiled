.class public Lcom/netease/cloud/nos/android/receiver/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 12
    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->netStateChange(Landroid/content/Context;)V

    return-void
.end method
