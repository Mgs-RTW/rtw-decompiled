.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$3$1;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;->onError(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$3$1;->this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$3$1;->this$1:Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;

    iget-object v0, v0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$3;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {v0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$000(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Lcom/netease/unisdk/ngvoice/NgVoiceCallback;

    move-result-object v0

    const-string v1, "exception"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/netease/unisdk/ngvoice/NgVoiceCallback;->onRecordFinish(ZLjava/lang/String;FLjava/lang/String;)V

    return-void
.end method
