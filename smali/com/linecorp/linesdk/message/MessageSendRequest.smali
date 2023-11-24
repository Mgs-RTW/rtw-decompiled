.class public Lcom/linecorp/linesdk/message/MessageSendRequest;
.super Ljava/lang/Object;
.source "MessageSendRequest.java"


# instance fields
.field private messages:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;"
        }
    .end annotation
.end field

.field private ott:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private targetUserId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private targetUserIds:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMultiUsersType(Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/message/MessageSendRequest;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/linecorp/linesdk/message/MessageSendRequest;

    invoke-direct {v0}, Lcom/linecorp/linesdk/message/MessageSendRequest;-><init>()V

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/message/MessageSendRequest;->setTargetUserIds(Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/MessageSendRequest;->setMessages(Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createOttType(Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/message/MessageSendRequest;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/linecorp/linesdk/message/MessageSendRequest;

    invoke-direct {v0}, Lcom/linecorp/linesdk/message/MessageSendRequest;-><init>()V

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/message/MessageSendRequest;->setOtt(Ljava/lang/String;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/MessageSendRequest;->setMessages(Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p0

    return-object p0
.end method

.method public static createSingleUserType(Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/message/MessageSendRequest;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/linecorp/linesdk/message/MessageSendRequest;

    invoke-direct {v0}, Lcom/linecorp/linesdk/message/MessageSendRequest;-><init>()V

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/message/MessageSendRequest;->setTargetUserId(Ljava/lang/String;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/MessageSendRequest;->setMessages(Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p0

    return-object p0
.end method

.method private setMessages(Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/message/MessageSendRequest;"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/linecorp/linesdk/message/MessageSendRequest;->messages:Ljava/util/List;

    return-object p0
.end method

.method private setOtt(Ljava/lang/String;)Lcom/linecorp/linesdk/message/MessageSendRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    iput-object p1, p0, Lcom/linecorp/linesdk/message/MessageSendRequest;->ott:Ljava/lang/String;

    return-object p0
.end method

.method private setTargetUserId(Ljava/lang/String;)Lcom/linecorp/linesdk/message/MessageSendRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 115
    iput-object p1, p0, Lcom/linecorp/linesdk/message/MessageSendRequest;->targetUserId:Ljava/lang/String;

    return-object p0
.end method

.method private setTargetUserIds(Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linecorp/linesdk/message/MessageSendRequest;"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/linecorp/linesdk/message/MessageSendRequest;->targetUserIds:Ljava/util/List;

    return-object p0
.end method

.method private toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "to"

    .line 132
    iget-object v2, p0, Lcom/linecorp/linesdk/message/MessageSendRequest;->targetUserId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "to"

    .line 133
    iget-object v2, p0, Lcom/linecorp/linesdk/message/MessageSendRequest;->targetUserIds:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v1, "token"

    .line 134
    iget-object v2, p0, Lcom/linecorp/linesdk/message/MessageSendRequest;->ott:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "messages"

    .line 135
    iget-object v2, p0, Lcom/linecorp/linesdk/message/MessageSendRequest;->messages:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageSendRequest;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
