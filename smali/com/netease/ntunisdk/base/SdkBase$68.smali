.class final Lcom/netease/ntunisdk/base/SdkBase$68;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntSetFloatBtnVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Z)V
    .locals 0

    .line 2291
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-boolean p2, p0, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2294
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2295
    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, v2, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    .line 2296
    iget-boolean v2, p0, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Z

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->setFloatBtnVisible(Z)V

    goto :goto_0

    .line 2298
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$68;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-boolean v1, p0, Lcom/netease/ntunisdk/base/SdkBase$68;->a:Z

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/base/SdkBase;->setFloatBtnVisible(Z)V

    return-void
.end method
