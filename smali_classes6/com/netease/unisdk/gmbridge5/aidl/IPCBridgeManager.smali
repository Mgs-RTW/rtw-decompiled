.class public Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;
.super Ljava/lang/Object;
.source "IPCBridgeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge#ipc"


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field iRemoteCallback:Lcom/netease/unisdk/gmbridge5/IRemoteCallback$Stub;

.field private iRemoteService:Lcom/netease/unisdk/gmbridge5/IRemoteService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager$1;-><init>(Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->iRemoteCallback:Lcom/netease/unisdk/gmbridge5/IRemoteCallback$Stub;

    .line 51
    new-instance v0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager$2;-><init>(Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->connection:Landroid/content/ServiceConnection;

    .line 76
    new-instance v0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager$3;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager$3;-><init>(Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;)Lcom/netease/unisdk/gmbridge5/IRemoteService;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->iRemoteService:Lcom/netease/unisdk/gmbridge5/IRemoteService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;Lcom/netease/unisdk/gmbridge5/IRemoteService;)Lcom/netease/unisdk/gmbridge5/IRemoteService;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->iRemoteService:Lcom/netease/unisdk/gmbridge5/IRemoteService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .locals 3

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->iRemoteService:Lcom/netease/unisdk/gmbridge5/IRemoteService;

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    invoke-interface {v0, p1}, Lcom/netease/unisdk/gmbridge5/IRemoteService;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->iRemoteService:Lcom/netease/unisdk/gmbridge5/IRemoteService;

    .line 91
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/aidl/IPCBridgeManager;->iRemoteCallback:Lcom/netease/unisdk/gmbridge5/IRemoteCallback$Stub;

    return-void
.end method
