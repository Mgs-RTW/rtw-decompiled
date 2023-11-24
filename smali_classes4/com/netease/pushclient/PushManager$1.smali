.class final Lcom/netease/pushclient/PushManager$1;
.super Lcom/netease/push/utils/ApplicationLifeListener;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pushclient/PushManager;->applicationLifeListen(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/netease/push/utils/ApplicationLifeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterBackground()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/netease/pushclient/PushManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnterBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/netease/pushclient/PushManager;->onFront:Z

    return-void
.end method

.method public onEnterFront()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/netease/pushclient/PushManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEnterFront"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 39
    sput-boolean v0, Lcom/netease/pushclient/PushManager;->onFront:Z

    return-void
.end method

.method public onExit()V
    .locals 2

    .line 50
    invoke-static {}, Lcom/netease/pushclient/PushManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
