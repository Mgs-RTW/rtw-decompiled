.class Lcom/netease/pharos/util/LogFileProxy$1;
.super Ljava/lang/Object;
.source "LogFileProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/util/LogFileProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/util/LogFileProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/util/LogFileProxy;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "LogFileProxy [Thread] finally IOException ="

    const-string v1, "pharos"

    .line 130
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v2}, Lcom/netease/pharos/util/LogFileProxy;->access$000(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v2}, Lcom/netease/pharos/util/LogFileProxy;->access$000(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "finish"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LogFileProxy [write]"

    .line 132
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 136
    :try_start_1
    iget-object v3, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v3}, Lcom/netease/pharos/util/LogFileProxy;->access$100(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v7}, Lcom/netease/pharos/util/LogFileProxy;->access$100(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogFileProxy;->access$202(Lcom/netease/pharos/util/LogFileProxy;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v3}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogFileProxy [write] info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v3}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v2}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v2, :cond_0

    .line 151
    :try_start_3
    iget-object v2, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v2}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catch_0
    move-exception v2

    .line 154
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 146
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogFileProxy [Thread] IOException ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    :try_start_6
    iget-object v2, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v2}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v2, :cond_0

    .line 151
    :try_start_7
    iget-object v2, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v2}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_2
    move-exception v2

    .line 154
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 149
    :goto_2
    iget-object v3, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v3}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v3, :cond_3

    .line 151
    :try_start_9
    iget-object v3, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v3}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/BufferedWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_3
    move-exception v3

    .line 154
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_3
    :goto_3
    throw v2
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    move-exception v0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogFileProxy [Thread] InterruptedException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
