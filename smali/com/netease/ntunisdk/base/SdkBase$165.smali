.class final Lcom/netease/ntunisdk/base/SdkBase$165;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->showViewFinished(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;)V
    .locals 0

    .line 6013
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "UniSDK Base"

    .line 6016
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showViewListener, current thread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRewarded()"

    .line 6017
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6018
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->y(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShowViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnShowViewListener;->onRewarded()V

    :cond_0
    const-string v0, "onOpened()"

    .line 6019
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6020
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->y(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShowViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnShowViewListener;->onOpened()V

    :cond_1
    const-string v0, "onFailed()"

    .line 6021
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6022
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->y(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShowViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnShowViewListener;->onFailed()V

    :cond_2
    const-string v0, "onClosed()"

    .line 6023
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6024
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$165;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkBase;->y(Lcom/netease/ntunisdk/base/SdkBase;)Lcom/netease/ntunisdk/base/OnShowViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/OnShowViewListener;->onClosed()V

    :cond_3
    return-void
.end method
