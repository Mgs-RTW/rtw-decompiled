.class Lcom/netease/lotr/Launcher$PatchHandler;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lotr/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PatchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/lotr/Launcher;Landroid/os/Looper;)V
    .locals 0

    .line 1476
    iput-object p1, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    .line 1477
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1482
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1483
    iget-object p1, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1485
    iget-object p1, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    const-string v1, "neox_launcher_updating"

    invoke-static {v0, v1}, Lcom/netease/lotr/Launcher;->access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1487
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetTotalSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1488
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativePatchGetDownloadedSize()I

    move-result v0

    const/16 v1, 0x4e20

    if-le p1, v1, :cond_0

    .line 1490
    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v1

    const-string v2, "%4d/%4dMB"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1491
    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v1

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1492
    iget-object p1, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object p1

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 1494
    :cond_0
    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v1

    const-string v2, "%4d/%4dKB"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1495
    iget-object v1, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1496
    iget-object p1, p0, Lcom/netease/lotr/Launcher$PatchHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$1500(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
