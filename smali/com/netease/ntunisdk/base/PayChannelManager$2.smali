.class final Lcom/netease/ntunisdk/base/PayChannelManager$2;
.super Ljava/lang/Object;
.source "PayChannelManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/HTTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/PayChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/ntunisdk/base/PayChannelManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/PayChannelManager;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string p2, "UniSDK PCM"

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPayChannelFromJF Result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 93
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 94
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    const-string p1, "ff_channel"

    .line 96
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "allysdk"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/PayChannelManager;->a(Lcom/netease/ntunisdk/base/PayChannelManager;Z)Z

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/base/PayChannelManager;->a(Lcom/netease/ntunisdk/base/PayChannelManager;Z)Z

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/PayChannelManager;->b(Lcom/netease/ntunisdk/base/PayChannelManager;)Z

    goto :goto_0

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/PayChannelManager;->b(Lcom/netease/ntunisdk/base/PayChannelManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/PayChannelManager$2;->b:Lcom/netease/ntunisdk/base/PayChannelManager;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/PayChannelManager;->b(Lcom/netease/ntunisdk/base/PayChannelManager;)Z

    :goto_0
    return p2
.end method
