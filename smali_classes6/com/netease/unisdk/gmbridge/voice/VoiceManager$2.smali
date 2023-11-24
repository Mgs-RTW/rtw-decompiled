.class Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;
.super Ljava/lang/Object;
.source "VoiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/unisdk/gmbridge/voice/VoiceManager;->playback(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->this$0:Lcom/netease/unisdk/gmbridge/voice/VoiceManager;

    iput-object p2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "gm_bridge VoiceManager"

    const-string v1, "download voice"

    .line 145
    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 147
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 148
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;->val$file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x400

    .line 151
    new-array v2, v2, [B

    .line 153
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 154
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 157
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 158
    new-instance v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$1;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "gm_bridge VoiceManager"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download voice error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2$2;-><init>(Lcom/netease/unisdk/gmbridge/voice/VoiceManager$2;)V

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/task/TaskExecutor;->runTaskOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
