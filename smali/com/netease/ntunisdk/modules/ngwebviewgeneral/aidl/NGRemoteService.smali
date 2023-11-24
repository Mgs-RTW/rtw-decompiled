.class public Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/NGRemoteService;
.super Landroid/app/Service;
.source "NGRemoteService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ng_webview#ips"

.field public static callback:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteCallback;


# instance fields
.field stub:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/NGRemoteService$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/NGRemoteService$1;-><init>(Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/NGRemoteService;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/NGRemoteService;->stub:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/aidl/NGRemoteService;->stub:Lcom/netease/ntunisdk/modules/ngwebviewgeneral/IRemoteService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
