.class Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Lcom/netease/unisdk/ngvoice/NgVoiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinish(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPlaybackFinish(Z)V
    .locals 3

    const-string v0, "gm_bridge VoiceManager"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackFinish, success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sWebViewDialog:Lcom/netease/unisdk/gmbridge/view/WebViewDialog;

    const-string v0, ""

    const-string v1, "stop_play_record"

    invoke-virtual {p1, v0, v1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog;->jsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRecordFinish(ZLjava/lang/String;FLjava/lang/String;)V
    .locals 6

    const-string p4, "gm_bridge VoiceManager"

    const-string v0, "onRecordFinish"

    .line 37
    invoke-static {p4, v0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p4, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$002(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Z)Z

    if-eqz p1, :cond_0

    const-string p1, "gm_bridge VoiceManager"

    .line 41
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "voiceFilePath = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-static {p1}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$100(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Landroid/content/Context;

    move-result-object p1

    new-instance p4, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;

    invoke-direct {p4, p0, p2, p3}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;Ljava/lang/String;F)V

    invoke-static {p1, p2, p4}, Lcom/netease/unisdk/gmbridge/voice/VoiceUploader;->upload(Landroid/content/Context;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$300(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 60
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$200(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$300(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;->callback(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissions(Z)V
    .locals 0

    return-void
.end method

.method public onTranslateFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUploadFinish(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
