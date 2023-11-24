.class Lcom/netease/ntunisdk/DownloadImageAsyncTask$1;
.super Ljava/lang/Object;
.source "DownloadImageAsyncTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/DownloadImageAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/DownloadImageAsyncTask;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/DownloadImageAsyncTask;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageAsyncTask;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->access$002(Lcom/netease/ntunisdk/DownloadImageAsyncTask;Z)Z

    .line 60
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageAsyncTask;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->cancel(Z)Z

    .line 61
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageAsyncTask;

    invoke-static {p1}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->access$100(Lcom/netease/ntunisdk/DownloadImageAsyncTask;)Lcom/netease/ntunisdk/FbMediaProcessCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageAsyncTask;

    invoke-static {p1}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->access$100(Lcom/netease/ntunisdk/DownloadImageAsyncTask;)Lcom/netease/ntunisdk/FbMediaProcessCallback;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netease/ntunisdk/DownloadImageAsyncTask$1;->this$0:Lcom/netease/ntunisdk/DownloadImageAsyncTask;

    iget-object v1, v1, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->shareInfo:Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/FbMediaProcessCallback;->done(ZLcom/netease/ntunisdk/base/ShareInfo;)V

    :cond_0
    return-void
.end method
