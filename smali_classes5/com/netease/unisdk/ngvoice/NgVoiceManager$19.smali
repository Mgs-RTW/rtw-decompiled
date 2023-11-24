.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->ntDownloadVoiceFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$voiceFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iput-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$voiceFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 577
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$900(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceHttpHelper;->downloadVoiceFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    .line 580
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 582
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 583
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 585
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    :goto_0
    const-string v1, "0"

    .line 588
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 591
    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    const-wide/32 v3, 0x500000

    invoke-static {v1, v3, v4}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$1000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;J)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 593
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$1;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 601
    :cond_0
    iget-object v3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$voiceFileName:Ljava/lang/String;

    .line 602
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    :cond_1
    invoke-static {v1, v3}, Lcom/netease/unisdk/ngvoice/utils/FileUtil;->createFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 606
    iget-object v3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v3, v0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$1100(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$1200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 609
    :cond_2
    new-instance v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;

    invoke-direct {v0, p0, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;Ljava/io/File;)V

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$1200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
