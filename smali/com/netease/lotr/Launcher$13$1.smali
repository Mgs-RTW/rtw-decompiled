.class Lcom/netease/lotr/Launcher$13$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher$13;->onDownloadStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/lotr/Launcher$13;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher$13;)V
    .locals 0

    .line 1763
    iput-object p1, p0, Lcom/netease/lotr/Launcher$13$1;->this$1:Lcom/netease/lotr/Launcher$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/netease/lotr/Launcher$13$1;->this$1:Lcom/netease/lotr/Launcher$13;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$13;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1900(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/netease/lotr/Launcher$13$1;->this$1:Lcom/netease/lotr/Launcher$13;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$13;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1900(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1772
    :cond_0
    iget-object v0, p0, Lcom/netease/lotr/Launcher$13$1;->this$1:Lcom/netease/lotr/Launcher$13;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$13;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$2000(Lcom/netease/lotr/Launcher;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1773
    iget-object v0, p0, Lcom/netease/lotr/Launcher$13$1;->this$1:Lcom/netease/lotr/Launcher$13;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$13;->this$0:Lcom/netease/lotr/Launcher;

    invoke-virtual {v0}, Lcom/netease/lotr/Launcher;->requestReadStoragePermissionThenLaunch()V

    :cond_1
    return-void
.end method
