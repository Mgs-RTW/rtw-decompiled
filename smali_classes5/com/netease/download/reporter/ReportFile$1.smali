.class Lcom/netease/download/reporter/ReportFile$1;
.super Ljava/lang/Object;
.source "ReportFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportFile;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportFile;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportFile;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ReportFile"

    const-string v1, "ReportFile [init] Thread start"

    .line 123
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v0}, Lcom/netease/download/reporter/ReportFile;->access$000(Lcom/netease/download/reporter/ReportFile;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "finish_over"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 132
    :try_start_1
    iget-object v1, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v5}, Lcom/netease/download/reporter/ReportFile;->access$200(Lcom/netease/download/reporter/ReportFile;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-static {v1, v2}, Lcom/netease/download/reporter/ReportFile;->access$102(Lcom/netease/download/reporter/ReportFile;Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;

    .line 134
    iget-object v1, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v1}, Lcom/netease/download/reporter/ReportFile;->access$100(Lcom/netease/download/reporter/ReportFile;)Ljava/io/BufferedWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ReportFile"

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportFile [init] \u65e5\u5fd7\u6587\u4ef6\u843d\u5730 Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ReportFile"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportFile [init] \u65e5\u5fd7\u6587\u4ef6\u843d\u5730 IOException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "ReportFile"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportFile [init] \u65e5\u5fd7\u6587\u4ef6\u843d\u5730 FileNotFoundException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v0}, Lcom/netease/download/reporter/ReportFile;->access$100(Lcom/netease/download/reporter/ReportFile;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 148
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v0}, Lcom/netease/download/reporter/ReportFile;->access$100(Lcom/netease/download/reporter/ReportFile;)Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    goto/16 :goto_0

    :cond_0
    const-string v0, "ReportFile"

    const-string v1, "ReportFile [init] \u65e5\u5fd7\u6587\u4ef6\u843d\u5730 break"

    .line 151
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "ReportFile"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v2, "ReportFile [init] \u65e5\u5fd7\u6587\u4ef6\u843d\u5730\u5b8c\u6210, file size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v2}, Lcom/netease/download/reporter/ReportFile;->access$200(Lcom/netease/download/reporter/ReportFile;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    iget-object v0, v0, Lcom/netease/download/reporter/ReportFile;->mFileCallBack:Lcom/netease/download/reporter/ReportFile$FileCallBack;

    iget-object v1, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v1}, Lcom/netease/download/reporter/ReportFile;->access$200(Lcom/netease/download/reporter/ReportFile;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/download/reporter/ReportFile$FileCallBack;->finish(Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_3
    const-string v1, "ReportFile"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportFile [init] Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "ReportFile"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_4
    const-string v1, "ReportFile"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportFile [init] IOException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v0, "ReportFile"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_5
    move-exception v0

    :try_start_5
    const-string v1, "ReportFile"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportFile [init] InterruptedException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v0, "ReportFile"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :goto_3
    return-void

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportFile [init] \u65e5\u5fd7\u6587\u4ef6\u843d\u5730\u5b8c\u6210, file size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v2}, Lcom/netease/download/reporter/ReportFile;->access$200(Lcom/netease/download/reporter/ReportFile;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReportFile"

    invoke-static {v2, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    iget-object v1, v1, Lcom/netease/download/reporter/ReportFile;->mFileCallBack:Lcom/netease/download/reporter/ReportFile$FileCallBack;

    iget-object v2, p0, Lcom/netease/download/reporter/ReportFile$1;->this$0:Lcom/netease/download/reporter/ReportFile;

    invoke-static {v2}, Lcom/netease/download/reporter/ReportFile;->access$200(Lcom/netease/download/reporter/ReportFile;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netease/download/reporter/ReportFile$FileCallBack;->finish(Ljava/lang/String;)V

    throw v0
.end method
