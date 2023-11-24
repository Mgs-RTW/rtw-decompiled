.class public Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivityEx;
.super Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity;
.source "NgWebviewActivityEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/netease/ntunisdk/modules/ngwebviewgeneral/ui/activity/NgWebviewActivity;->onDestroy()V

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
