.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;

.field final synthetic val$saveFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;Ljava/io/File;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;->this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;

    iput-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;->val$saveFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 612
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;->this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;

    iget-object v0, v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;->this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;

    iget-object v1, v1, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$19$2;->val$saveFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onDownloadFinish(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
