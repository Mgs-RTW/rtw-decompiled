.class public Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;
.super Lcom/linecorp/linesdk/message/template/LayoutTemplate;
.source "ButtonsLayoutTemplate.java"


# instance fields
.field private actions:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private imageBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private messageSender:Lcom/linecorp/linesdk/message/MessageSender;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private thumbnailImageUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;",
            ">;)V"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/linecorp/linesdk/message/template/Type;->BUTTONS:Lcom/linecorp/linesdk/message/template/Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;-><init>(Lcom/linecorp/linesdk/message/template/Type;)V

    .line 24
    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->RECTANGLE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    .line 26
    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageScaleType;->COVER:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageBackgroundColor:I

    .line 51
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->text:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->actions:Ljava/util/List;

    return-void
.end method

.method private getColorString(I)Ljava/lang/String;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "#%06X"

    const/4 v1, 0x1

    .line 132
    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public setDefaultAction(Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 100
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    return-void
.end method

.method public setImageAspectRatio(Lcom/linecorp/linesdk/message/template/ImageAspectRatio;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/template/ImageAspectRatio;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    return-void
.end method

.method public setImageBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 84
    iput p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageBackgroundColor:I

    return-void
.end method

.method public setImageScaleType(Lcom/linecorp/linesdk/message/template/ImageScaleType;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/template/ImageScaleType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    return-void
.end method

.method public setMessageSender(Lcom/linecorp/linesdk/message/MessageSender;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/MessageSender;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->messageSender:Lcom/linecorp/linesdk/message/MessageSender;

    return-void
.end method

.method public setThumbnailImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->thumbnailImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->title:Ljava/lang/String;

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

    .line 114
    invoke-super {p0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "text"

    .line 115
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "thumbnailImageUrl"

    .line 116
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->thumbnailImageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "imageAspectRatio"

    .line 117
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->getServerKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "imageSize"

    .line 118
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/template/ImageScaleType;->getServerKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "imageBackgroundColor"

    .line 119
    iget v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->imageBackgroundColor:I

    invoke-direct {p0, v2}, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->getColorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "title"

    .line 120
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "defaultAction"

    .line 121
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "sentBy"

    .line 122
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->messageSender:Lcom/linecorp/linesdk/message/MessageSender;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "actions"

    .line 123
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/ButtonsLayoutTemplate;->actions:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
