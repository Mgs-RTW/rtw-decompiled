.class public Lcom/netease/environment/task/ReviewNicknameCallable;
.super Ljava/lang/Object;
.source "ReviewNicknameCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/netease/environment/task/ReviewNicknameCallable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/netease/environment/task/ReviewNicknameCallable;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContent:Ljava/lang/String;

    const/16 v1, 0x64

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->TAG:Ljava/lang/String;

    const-string v2, "fast mode"

    invoke-static {v0, v2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/environment/model/RegexGetter;->getNicknamePatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 45
    check-cast v2, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 48
    iget-object v4, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->mContent:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0xca

    const-string v1, "shield"

    const-string v2, "N_8"

    .line 50
    invoke-static {v0, v1, v3, v2}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "time out"

    const-string v2, "-1"

    const-string v3, "N_9"

    .line 53
    invoke-static {v1, v0, v2, v3}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v0, 0xc8

    const-string v1, "pass"

    const-string v2, "-1"

    const-string v3, "N_10"

    .line 56
    invoke-static {v0, v1, v2, v3}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "fast"

    .line 59
    invoke-static {v0, v1}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/netease/environment/task/ReviewNicknameCallable;->TAG:Ljava/lang/String;

    const-string v2, "exception when run in fast mode"

    invoke-static {v1, v2}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    throw v0

    :cond_4
    :goto_0
    const-string v0, "param is null or empty"

    const-string v2, "-1"

    const-string v3, "N_7"

    .line 33
    invoke-static {v1, v0, v2, v3}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
