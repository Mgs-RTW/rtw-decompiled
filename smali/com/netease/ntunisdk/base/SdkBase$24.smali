.class final Lcom/netease/ntunisdk/base/SdkBase$24;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/OrderInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/OrderInfo;

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:J

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;JLcom/netease/ntunisdk/base/OrderInfo;Z)V
    .locals 0

    .line 1605
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-wide p2, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->c:J

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iput-boolean p5, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "UniSDK Base"

    .line 1608
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cur thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",ui thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-wide v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->uiThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "ntCheckOrder"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->e(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/PayChannelManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->b:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->e(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/PayChannelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/PayChannelManager;->payDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UniSDK Base"

    const-string v1, "get_ff_channel error"

    .line 1617
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    const/16 v1, 0xa8

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 1619
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    .line 1623
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->myCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-boolean v2, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->d:Z

    invoke-static {v0, v1, v2}, Lcom/netease/ntunisdk/base/function/k;->a(Landroid/content/Context;Lcom/netease/ntunisdk/base/OrderInfo;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1625
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->b:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "REQUIRE_AI_DETECT"

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1627
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-boolean v2, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->continueOrderSetting(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    return-void

    .line 1631
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->a:Lcom/netease/ntunisdk/base/OrderInfo;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/base/SdkBase$24;->d:Z

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/function/a;->a(Lcom/netease/ntunisdk/base/OrderInfo;Z)V

    :cond_3
    return-void
.end method
