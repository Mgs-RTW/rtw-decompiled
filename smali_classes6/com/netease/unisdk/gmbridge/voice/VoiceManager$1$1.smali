.class Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Lcom/netease/unisdk/gmbridge/voice/IVoiceUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->onRecordFinish(ZLjava/lang/String;FLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

.field final synthetic val$duration:F

.field final synthetic val$voiceFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;Ljava/lang/String;F)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->val$voiceFilePath:Ljava/lang/String;

    iput p3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->val$duration:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 46
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->val$voiceFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gm_bridge VoiceManager"

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 54
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

    iget-object v1, v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    iget v6, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->val$duration:F

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$200(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1$1;->this$1:Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;

    iget-object p2, p2, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$1;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->access$300(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;)Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/netease/unisdk/gmbridge/view/WebViewDialog$IWebViewCallbackListener;->callback(Ljava/lang/String;)V

    return-void
.end method
