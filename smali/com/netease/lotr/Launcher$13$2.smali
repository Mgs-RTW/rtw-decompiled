.class Lcom/netease/lotr/Launcher$13$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher$13;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/lotr/Launcher$13;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher$13;I)V
    .locals 0

    .line 1792
    iput-object p1, p0, Lcom/netease/lotr/Launcher$13$2;->this$1:Lcom/netease/lotr/Launcher$13;

    iput p2, p0, Lcom/netease/lotr/Launcher$13$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1796
    iget-object v0, p0, Lcom/netease/lotr/Launcher$13$2;->this$1:Lcom/netease/lotr/Launcher$13;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$13;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1900(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/netease/lotr/Launcher$13$2;->this$1:Lcom/netease/lotr/Launcher$13;

    iget-object v0, v0, Lcom/netease/lotr/Launcher$13;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1900(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/netease/lotr/Launcher$13$2;->val$progress:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method
