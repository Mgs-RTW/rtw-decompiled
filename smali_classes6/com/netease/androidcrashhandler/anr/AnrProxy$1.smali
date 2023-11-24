.class Lcom/netease/androidcrashhandler/anr/AnrProxy$1;
.super Ljava/lang/Object;
.source "AnrProxy.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/anr/AnrProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/anr/AnrProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/anr/AnrProxy;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/AnrProxy$1;->this$0:Lcom/netease/androidcrashhandler/anr/AnrProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppNotResponding(Lcom/netease/androidcrashhandler/anr/ANRError;)V
    .locals 5

    const-string v0, "trace"

    const-string v1, "AnrProxy [start] \u53d1\u751f\u4e86anr"

    .line 42
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    sget-object v3, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    const-string v4, "crashhunter.anr"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 46
    invoke-virtual {p1, v0}, Lcom/netease/androidcrashhandler/anr/ANRError;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v0, "trace"

    const-string v1, "AnrProxy [start] anr\u65e5\u5fd7\u5199\u5165\u5230 crashhunter.anr"

    .line 47
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "trace"

    const-string v1, "AnrProxy [start] anr\u4e8b\u4ef6\u56de\u8c03\u7ed9\u63a5\u5165\u65b9"

    .line 49
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/AnrProxy$1;->this$0:Lcom/netease/androidcrashhandler/anr/AnrProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/anr/AnrProxy;->access$000(Lcom/netease/androidcrashhandler/anr/AnrProxy;)Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/androidcrashhandler/javacrash/JavaCrashCallBack;->crashCallBack(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "trace"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnrProxy [start] FileNotFoundException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
