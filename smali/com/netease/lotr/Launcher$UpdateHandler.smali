.class Lcom/netease/lotr/Launcher$UpdateHandler;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lotr/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lotr/Launcher;


# direct methods
.method public constructor <init>(Lcom/netease/lotr/Launcher;Landroid/os/Looper;)V
    .locals 0

    .line 1247
    iput-object p1, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    .line 1248
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1253
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1254
    iget-object p1, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$1100(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$1200(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher$CopyFile;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1256
    iget-object p1, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    const-string v1, "neox_launcher_copy_data"

    invoke-static {v0, v1}, Lcom/netease/lotr/Launcher;->access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1257
    iget-object v0, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1200(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher$CopyFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lotr/Launcher$CopyFile;->getCopyingFile()Ljava/lang/String;

    move-result-object v0

    .line 1258
    iget-object v1, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$1200(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher$CopyFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/lotr/Launcher$CopyFile;->getCopiedSize()J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 1261
    iget-object p1, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    const-string v3, "neox_launcher_copying"

    invoke-static {v0, v3}, Lcom/netease/lotr/Launcher;->access$000(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x64

    .line 1264
    iget-object v3, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v3}, Lcom/netease/lotr/Launcher;->access$1300(Lcom/netease/lotr/Launcher;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    .line 1266
    iget-object v0, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$1300(Lcom/netease/lotr/Launcher;)J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 1268
    :cond_1
    iget-object v1, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$1100(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1269
    iget-object p1, p0, Lcom/netease/lotr/Launcher$UpdateHandler;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$1100(Lcom/netease/lotr/Launcher;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_2
    return-void
.end method
