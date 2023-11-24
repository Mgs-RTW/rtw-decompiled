.class Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;
.super Ljava/lang/Object;
.source "NgVoiceManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/ngvoice/NgVoiceManager;->requestFocus()Z
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

    .line 232
    iput-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "ng_voice Manager"

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/ngvoice/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 238
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 243
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$200(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 247
    iget-object p1, p0, Lcom/netease/unisdk/ngvoice/NgVoiceManager$7;->this$0:Lcom/netease/unisdk/ngvoice/NgVoiceManager;

    invoke-static {p1}, Lcom/netease/unisdk/ngvoice/NgVoiceManager;->access$300(Lcom/netease/unisdk/ngvoice/NgVoiceManager;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    :goto_0
    return-void
.end method
