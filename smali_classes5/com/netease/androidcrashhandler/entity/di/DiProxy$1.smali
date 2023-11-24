.class Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;
.super Ljava/lang/Object;
.source "DiProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/entity/di/DiProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;->this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;->this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->access$000(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "trace"

    const-string v1, "DiProxy [start] call fresh"

    .line 120
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getInstance()Lcom/netease/androidcrashhandler/config/ConfigCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/config/ConfigCore;->getmDiFreshTime()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;->this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->access$100(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->fresh()V

    const-string v1, "trace"

    const-string v2, "DiProxy [start] call writeToLocalFile"

    .line 138
    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/netease/androidcrashhandler/entity/di/DiProxy$1;->this$0:Lcom/netease/androidcrashhandler/entity/di/DiProxy;

    invoke-static {v1}, Lcom/netease/androidcrashhandler/entity/di/DiProxy;->access$100(Lcom/netease/androidcrashhandler/entity/di/DiProxy;)Lcom/netease/androidcrashhandler/entity/di/DiInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/androidcrashhandler/entity/di/DiInfo;->writeToLocalFile()V

    :try_start_0
    const-string v1, "trace"

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiProxy [start] sleep +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 147
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
