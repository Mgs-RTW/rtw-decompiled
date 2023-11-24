.class Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;
.super Ljava/lang/Object;
.source "IPCWebViewManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "ng_webview#ipc"

    const-string v2, "onServiceConnected"

    .line 112
    invoke-static {v1, v2, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/log/NgWebviewLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    invoke-static {p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->access$302(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    .line 116
    :try_start_0
    iget-object p2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    invoke-static {p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    move-result-object p2

    invoke-interface {p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->access$400(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 117
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    iget-object p2, p2, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->iRemoteCallback:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteCallback$Stub;

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;->register(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "ng_webview#ipc"

    const-string v2, "onServiceDisconnected"

    .line 125
    invoke-static {v1, v2, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/log/NgWebviewLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->access$300(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    invoke-static {v1}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->access$400(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->access$302(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;)Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService;

    .line 130
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager$2;->this$0:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;

    iput-object v0, p1, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/IPCWebViewManager;->iRemoteCallback:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteCallback$Stub;

    return-void
.end method
