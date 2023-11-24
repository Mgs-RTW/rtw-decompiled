.class Lcom/netease/androidcrashhandler/so/SoHandleCore$1;
.super Ljava/lang/Object;
.source "SoHandleCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/so/SoHandleCore;->storageSoUuidMd5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/so/SoHandleCore;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/so/SoHandleCore;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/netease/androidcrashhandler/so/SoHandleCore$1;->this$0:Lcom/netease/androidcrashhandler/so/SoHandleCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/netease/androidcrashhandler/so/SoHandleCore$1;->this$0:Lcom/netease/androidcrashhandler/so/SoHandleCore;

    invoke-static {v0}, Lcom/netease/androidcrashhandler/so/SoHandleCore;->access$000(Lcom/netease/androidcrashhandler/so/SoHandleCore;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ntunisdk_so_uuids"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->getAssetFileContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoHandleCore [setSoUuidMd5] soUuids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-static {}, Lcom/netease/androidcrashhandler/init/InitProxy;->getInstance()Lcom/netease/androidcrashhandler/init/InitProxy;

    sget-object v1, Lcom/netease/androidcrashhandler/init/InitProxy;->sUploadFilePath:Ljava/lang/String;

    const-string v2, "ntunisdk_so_uuids"

    .line 159
    invoke-static {v0, v1, v2}, Lcom/netease/androidcrashhandler/util/CUtil;->str2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v0, "trace"

    const-string v1, "SoHandleCore [setSoUuidMd5] soUuids is null"

    .line 162
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
