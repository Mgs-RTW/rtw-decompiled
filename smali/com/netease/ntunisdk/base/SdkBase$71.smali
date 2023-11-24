.class final Lcom/netease/ntunisdk/base/SdkBase$71;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->queryCmccPaytype()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 8231
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 8235
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "JF_GAMEID"

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8236
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v2, "GAME_VERSION"

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8237
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "DERIVE_CHANNEL"

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8238
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v4, "CMCC_PAYTYPE_URL"

    invoke-virtual {v3, v4}, Lcom/netease/ntunisdk/base/SdkBase;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8240
    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v4, v4, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    const-string v5, "UNISDK"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 8242
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "UniSDK Base"

    const-string v1, "CMCC_PAYTYPE_URL is null"

    .line 8243
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8244
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "CMCC_PAYTYPE"

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->b(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "UniSDK Base"

    .line 8245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cmcc_paytype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$71;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v2}, Lcom/netease/ntunisdk/base/SdkBase;->h(Lcom/netease/ntunisdk/base/SdkBase;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8249
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?gameTag=%s&gameVersion=%s&channelTag=%s"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    .line 8250
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    .line 8252
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8254
    new-instance v1, Lcom/netease/ntunisdk/base/SdkBase$71$1;

    invoke-direct {v1, p0, v4}, Lcom/netease/ntunisdk/base/SdkBase$71$1;-><init>(Lcom/netease/ntunisdk/base/SdkBase$71;Landroid/content/SharedPreferences;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wget(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    return-void
.end method
