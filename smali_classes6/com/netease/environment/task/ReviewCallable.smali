.class public Lcom/netease/environment/task/ReviewCallable;
.super Ljava/lang/Object;
.source "ReviewCallable.java"

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

.field private mChannel:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/netease/environment/task/ReviewCallable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/environment/task/ReviewCallable;->TAG:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/netease/environment/task/ReviewCallable;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/netease/environment/task/ReviewCallable;->mContent:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/netease/environment/task/ReviewCallable;->mLevel:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/netease/environment/task/ReviewCallable;->mChannel:Ljava/lang/String;

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

    .line 33
    invoke-virtual {p0}, Lcom/netease/environment/task/ReviewCallable;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/netease/environment/task/ReviewCallable;->mContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/environment/model/ContentFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/netease/environment/task/ReviewCallable;->mContent:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/netease/environment/task/ReviewCallable;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/environment/task/ReviewCallable;->mLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/environment/task/ReviewCallable;->mChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/netease/environment/task/ReviewCallable;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/netease/environment/action/ShieldAction;->ShieldWordsFast(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xca

    .line 68
    invoke-virtual {p0, v2, v3}, Lcom/netease/environment/task/ReviewCallable;->checkBreak(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/netease/environment/task/ReviewCallable;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/environment/model/RegexGetter;->getReplacePatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 75
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 77
    iget-object v2, p0, Lcom/netease/environment/task/ReviewCallable;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/environment/task/ReviewCallable;->mContent:Ljava/lang/String;

    invoke-static {v2, v4, v0}, Lcom/netease/environment/action/ReplaceAction;->ReplaceWordsFast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p0, v2, v3}, Lcom/netease/environment/task/ReviewCallable;->checkBreak(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/netease/environment/task/ReviewCallable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/environment/model/RegexGetter;->getInterceptPatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/16 v3, 0xce

    if-eqz v0, :cond_5

    .line 86
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 88
    iget-object v0, p0, Lcom/netease/environment/task/ReviewCallable;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/environment/action/InterceptAction;->InterceptWordsFast(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xc9

    .line 90
    invoke-virtual {p0, v0, v4}, Lcom/netease/environment/task/ReviewCallable;->checkCode(Ljava/lang/String;I)Z

    move-result v5

    .line 92
    invoke-virtual {p0, v2, v3}, Lcom/netease/environment/task/ReviewCallable;->checkCode(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 96
    invoke-virtual {p0, v2}, Lcom/netease/environment/task/ReviewCallable;->replaceMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v3, :cond_4

    return-object v2

    .line 102
    :cond_4
    invoke-virtual {p0, v0, v4}, Lcom/netease/environment/task/ReviewCallable;->checkBreak(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v0

    .line 107
    :cond_5
    invoke-virtual {p0, v2, v3}, Lcom/netease/environment/task/ReviewCallable;->checkBreak(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v2

    :cond_6
    move-object v0, v2

    .line 113
    :cond_7
    iget-object v2, p0, Lcom/netease/environment/task/ReviewCallable;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/netease/environment/model/RegexGetter;->getRemindPatternMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 114
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/netease/environment/task/ReviewCallable;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/environment/action/RemindAction;->RemindWordsFast(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_0
    return-object v0

    :cond_a
    :goto_1
    const/16 v0, 0x64

    const-string v1, "param is null or empty"

    const-string v2, "-1"

    const-string v3, "V_7"

    .line 54
    invoke-static {v0, v1, v2, v3}, Lcom/netease/environment/utils/JsonUtils;->getResultJsonString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkBreak(Ljava/lang/String;I)Z
    .locals 4

    .line 131
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 132
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 133
    iget-object v1, p0, Lcom/netease/environment/task/ReviewCallable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check break code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    const-string p1, "message"

    .line 137
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "time out"

    .line 138
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v1

    .line 142
    :catch_0
    iget-object p1, p0, Lcom/netease/environment/task/ReviewCallable;->TAG:Ljava/lang/String;

    const-string p2, "fail to parse the result returned by check break"

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public checkCode(Ljava/lang/String;I)Z
    .locals 1

    .line 155
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 156
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 162
    :catch_0
    iget-object p1, p0, Lcom/netease/environment/task/ReviewCallable;->TAG:Ljava/lang/String;

    const-string p2, "fail to parse the result returned by check code"

    invoke-static {p1, p2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public replaceMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 169
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    .line 170
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    .line 171
    invoke-static {}, Lcom/netease/environment/config/SdkData;->getReplaceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    iget-object v2, p0, Lcom/netease/environment/task/ReviewCallable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replace message from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/netease/environment/task/ReviewCallable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace message to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/environment/config/SdkData;->getReplaceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 176
    :catch_0
    iget-object v0, p0, Lcom/netease/environment/task/ReviewCallable;->TAG:Ljava/lang/String;

    const-string v1, "fail to parse the result returned by replace message"

    invoke-static {v0, v1}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
