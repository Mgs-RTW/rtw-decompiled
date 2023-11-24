.class public Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;
.super Ljava/lang/Object;
.source "IPCWebViewManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ng_webview#ipc"


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field iRemoteCallback:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteCallback$Stub;

.field private iRemoteService:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

.field private isHasUnisdk:Z

.field private modulesManager:Lcom/netease/ntunisdk/modules/api/ModulesManager;

.field private sdkBase:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->isHasUnisdk:Z

    .line 35
    new-instance v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$1;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->iRemoteCallback:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteCallback$Stub;

    .line 109
    new-instance v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->connection:Landroid/content/ServiceConnection;

    .line 134
    new-instance v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$3;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$3;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->isHasUnisdk:Z

    return p0
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->isHasUnisdk:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/modules/api/ModulesManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->modulesManager:Lcom/netease/ntunisdk/modules/api/ModulesManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;Lcom/netease/ntunisdk/modules/api/ModulesManager;)Lcom/netease/ntunisdk/modules/api/ModulesManager;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->modulesManager:Lcom/netease/ntunisdk/modules/api/ModulesManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/base/SdkBase;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/SdkBase;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->sdkBase:Lcom/netease/ntunisdk/base/SdkBase;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->iRemoteService:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    return-object p0
.end method

.method static synthetic access$302(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->iRemoteService:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ng_webview#ipc"

    const-string v2, "bindService"

    .line 142
    invoke-static {v1, v2, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/log/NgWebviewLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/NGRemoteService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->iRemoteService:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "ng_webview#ipc"

    const-string v0, "iRemoteService is null"

    .line 162
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/log/NgWebviewLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unbindService(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ng_webview#ipc"

    const-string v2, "unbindService"

    .line 148
    invoke-static {v1, v2, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/log/NgWebviewLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->iRemoteService:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    .line 151
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->iRemoteCallback:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteCallback$Stub;

    return-void
.end method
