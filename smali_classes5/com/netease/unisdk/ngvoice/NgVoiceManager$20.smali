.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->downloadError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    iput-object p2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 628
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$20;->val$path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onDownloadFinish(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
