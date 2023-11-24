.class public Lcom/linecorp/linesdk/message/ImageMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "ImageMessage.java"


# instance fields
.field private animated:Ljava/lang/Boolean;

.field private extension:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fileSize:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final originalContentUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final previewImageUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private sentBy:Lcom/linecorp/linesdk/message/MessageSender;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/ImageMessage;->animated:Ljava/lang/Boolean;

    .line 37
    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->originalContentUrl:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/linecorp/linesdk/message/ImageMessage;->previewImageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 61
    sget-object v0, Lcom/linecorp/linesdk/message/Type;->IMAGE:Lcom/linecorp/linesdk/message/Type;

    return-object v0
.end method

.method public setAnimated(Ljava/lang/Boolean;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->animated:Ljava/lang/Boolean;

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->extension:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(Ljava/lang/Long;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->fileSize:Ljava/lang/Long;

    return-void
.end method

.method public setSentBy(Lcom/linecorp/linesdk/message/MessageSender;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/MessageSender;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    iput-object p1, p0, Lcom/linecorp/linesdk/message/ImageMessage;->sentBy:Lcom/linecorp/linesdk/message/MessageSender;

    return-void
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

    .line 67
    invoke-super {p0}, Lcom/linecorp/linesdk/message/MessageData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "originalContentUrl"

    .line 68
    iget-object v2, p0, Lcom/linecorp/linesdk/message/ImageMessage;->originalContentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "previewImageUrl"

    .line 69
    iget-object v2, p0, Lcom/linecorp/linesdk/message/ImageMessage;->previewImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "animated"

    .line 70
    iget-object v2, p0, Lcom/linecorp/linesdk/message/ImageMessage;->animated:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extension"

    .line 71
    iget-object v2, p0, Lcom/linecorp/linesdk/message/ImageMessage;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fileSize"

    .line 72
    iget-object v2, p0, Lcom/linecorp/linesdk/message/ImageMessage;->fileSize:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sentBy"

    .line 73
    iget-object v2, p0, Lcom/linecorp/linesdk/message/ImageMessage;->sentBy:Lcom/linecorp/linesdk/message/MessageSender;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
