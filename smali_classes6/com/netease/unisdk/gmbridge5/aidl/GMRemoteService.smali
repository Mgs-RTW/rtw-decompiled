.class public Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService;
.super Landroid/app/Service;
.source "GMRemoteService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "gm_bridge#ips"

.field public static callback:Lcom/netease/unisdk/gmbridge5/IRemoteCallback;


# instance fields
.field stub:Lcom/netease/unisdk/gmbridge5/IRemoteService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService$1;-><init>(Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService;->stub:Lcom/netease/unisdk/gmbridge5/IRemoteService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge5/aidl/GMRemoteService;->stub:Lcom/netease/unisdk/gmbridge5/IRemoteService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
