.class final Lcom/netease/ntunisdk/base/SdkBase$3;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntMoreGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;)V
    .locals 0

    .line 6215
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$3;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 6218
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$3;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6219
    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$3;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v3, v3, Lcom/netease/ntunisdk/base/SdkBase;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/SdkBase;

    const-string v3, "FEATURE_HAS_MOREGAME_BTN"

    .line 6220
    invoke-virtual {v1, v3, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 6221
    invoke-virtual {v1}, Lcom/netease/ntunisdk/base/SdkBase;->moreGame()V

    goto :goto_0

    .line 6224
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$3;->c:Lcom/netease/ntunisdk/base/SdkBase;

    const-string v1, "FEATURE_HAS_MOREGAME_BTN"

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/SdkBase;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 6225
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$3;->c:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->moreGame()V

    :cond_2
    return-void
.end method
