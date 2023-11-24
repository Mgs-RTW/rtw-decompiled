.class public Lcom/linecorp/linesdk/message/TextMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "TextMessage.java"


# instance fields
.field private final sendBy:Lcom/linecorp/linesdk/message/MessageSender;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/linecorp/linesdk/message/TextMessage;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/linecorp/linesdk/message/TextMessage;->sendBy:Lcom/linecorp/linesdk/message/MessageSender;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/MessageSender;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/message/MessageSender;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/linecorp/linesdk/message/TextMessage;->text:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/linecorp/linesdk/message/TextMessage;->sendBy:Lcom/linecorp/linesdk/message/MessageSender;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    sget-object v0, Lcom/linecorp/linesdk/message/Type;->TEXT:Lcom/linecorp/linesdk/message/Type;

    return-object v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 49
    invoke-super {p0}, Lcom/linecorp/linesdk/message/MessageData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "text"

    .line 50
    iget-object v2, p0, Lcom/linecorp/linesdk/message/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object v1, p0, Lcom/linecorp/linesdk/message/TextMessage;->sendBy:Lcom/linecorp/linesdk/message/MessageSender;

    if-eqz v1, :cond_0

    const-string v1, "sentBy"

    .line 52
    iget-object v2, p0, Lcom/linecorp/linesdk/message/TextMessage;->sendBy:Lcom/linecorp/linesdk/message/MessageSender;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/MessageSender;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
