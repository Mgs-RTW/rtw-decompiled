.class public Lcom/linecorp/linesdk/message/template/UriAction;
.super Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;
.source "UriAction.java"


# instance fields
.field private label:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private uri:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
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

    .line 19
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;-><init>()V

    const-string/jumbo v0, "uri"

    .line 20
    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/UriAction;->type:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/UriAction;->uri:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/UriAction;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    invoke-super {p0}, Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "uri"

    .line 29
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/UriAction;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "label"

    .line 30
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/UriAction;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
