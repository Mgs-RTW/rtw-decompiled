.class Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;
.super Ljava/lang/Object;
.source "StorageToFileProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 145
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$000(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$000(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "finish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v1, :cond_4

    .line 149
    :try_start_1
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$100(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v5}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$100(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$202(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$200(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$200(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$200(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v0, :cond_0

    .line 163
    :try_start_3
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$200(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "trace"

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StorageToFileProxy [Thread] finally IOException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "trace"

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StorageToFileProxy [Thread] IOException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    :try_start_6
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$200(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v0, :cond_0

    .line 163
    :try_start_7
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$200(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_8
    const-string v1, "trace"

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StorageToFileProxy [Thread] finally IOException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 161
    :goto_2
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$200(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v1, :cond_3

    .line 163
    :try_start_9
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;->this$0:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->access$200(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_a
    const-string v2, "trace"

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StorageToFileProxy [Thread] finally IOException ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v0

    const-string v1, "trace"

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StorageToFileProxy [Thread] InterruptedException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
