.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->startPlayback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "ng_voice Manager"

    const-string v0, "play onCompletion"

    .line 279
    invoke-static {p1, v0}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$400(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)V

    .line 281
    new-instance p1, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9$1;

    invoke-direct {p1, p0}, Lcom/netease/unisdk/ngvoice/NgVoiceManager$9$1;-><init>(Lcom/netease/unisdk/ngvoice/NgVoiceManager$9;)V

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
