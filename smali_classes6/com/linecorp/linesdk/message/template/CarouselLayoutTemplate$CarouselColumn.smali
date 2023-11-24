.class public Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;
.super Ljava/lang/Object;
.source "CarouselLayoutTemplate.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarouselColumn"
.end annotation


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

.field private imageBackgroundColor:Ljava/lang/String;
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
    .locals 0
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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->text:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public setDefaultAction(Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    return-void
.end method

.method public setImageBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->imageBackgroundColor:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->thumbnailImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->title:Ljava/lang/String;

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

    .line 127
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "text"

    .line 128
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "actions"

    .line 129
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->actions:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v1, "thumbnailImageUrl"

    .line 130
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->thumbnailImageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "imageBackgroundColor"

    .line 131
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->imageBackgroundColor:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "title"

    .line 132
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "defaultAction"

    .line 133
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;->defaultAction:Lcom/linecorp/linesdk/message/template/ClickActionForTemplateMessage;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
