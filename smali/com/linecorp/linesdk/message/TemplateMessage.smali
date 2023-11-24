.class public Lcom/linecorp/linesdk/message/TemplateMessage;
.super Lcom/linecorp/linesdk/message/MessageData;
.source "TemplateMessage.java"


# instance fields
.field private altText:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private template:Lcom/linecorp/linesdk/message/template/LayoutTemplate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/template/LayoutTemplate;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/message/template/LayoutTemplate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/MessageData;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/linecorp/linesdk/message/TemplateMessage;->altText:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/linecorp/linesdk/message/TemplateMessage;->template:Lcom/linecorp/linesdk/message/template/LayoutTemplate;

    return-void
.end method


# virtual methods
.method public getType()Lcom/linecorp/linesdk/message/Type;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 24
    sget-object v0, Lcom/linecorp/linesdk/message/Type;->TEMPLATE:Lcom/linecorp/linesdk/message/Type;

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

    .line 41
    invoke-super {p0}, Lcom/linecorp/linesdk/message/MessageData;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "altText"

    .line 42
    iget-object v2, p0, Lcom/linecorp/linesdk/message/TemplateMessage;->altText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "template"

    .line 43
    iget-object v2, p0, Lcom/linecorp/linesdk/message/TemplateMessage;->template:Lcom/linecorp/linesdk/message/template/LayoutTemplate;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
