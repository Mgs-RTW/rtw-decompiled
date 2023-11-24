.class public Lcom/linecorp/linesdk/message/VideoMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "VideoMessage.java"


# instance fields
.field private final originalContentUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final previewImageUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/linecorp/linesdk/message/VideoMessage;->originalContentUrl:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/linecorp/linesdk/message/VideoMessage;->previewImageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 33
    sget-object v0, Lcom/linecorp/linesdk/message/Type;->VIDEO:Lcom/linecorp/linesdk/message/Type;

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

    .line 39
    invoke-super {p0}, Lcom/linecorp/linesdk/message/MessageData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "originalContentUrl"

    .line 40
    iget-object v2, p0, Lcom/linecorp/linesdk/message/VideoMessage;->originalContentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "previewImageUrl"

    .line 41
    iget-object v2, p0, Lcom/linecorp/linesdk/message/VideoMessage;->previewImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
