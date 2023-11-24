.class public Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;
.super Lcom/linecorp/linesdk/message/template/LayoutTemplate;
.source "CarouselLayoutTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;
    }
.end annotation


# instance fields
.field private columns:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;",
            ">;"
        }
    .end annotation
.end field

.field private imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate$CarouselColumn;",
            ">;)V"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/linecorp/linesdk/message/template/Type;->CAROUSEL:Lcom/linecorp/linesdk/message/template/Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;-><init>(Lcom/linecorp/linesdk/message/template/Type;)V

    .line 20
    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->RECTANGLE:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    .line 22
    sget-object v0, Lcom/linecorp/linesdk/message/template/ImageScaleType;->COVER:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    .line 31
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;->columns:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public setImageAspectRatio(Lcom/linecorp/linesdk/message/template/ImageAspectRatio;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/template/ImageAspectRatio;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    return-void
.end method

.method public setImageScaleType(Lcom/linecorp/linesdk/message/template/ImageScaleType;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/template/ImageScaleType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

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

    .line 54
    invoke-super {p0}, Lcom/linecorp/linesdk/message/template/LayoutTemplate;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "columns"

    .line 55
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;->columns:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "columns"

    .line 56
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;->columns:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "imageAspectRatio"

    .line 57
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;->imageAspectRatio:Lcom/linecorp/linesdk/message/template/ImageAspectRatio;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/template/ImageAspectRatio;->getServerKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "imageSize"

    .line 58
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/CarouselLayoutTemplate;->imageScaleType:Lcom/linecorp/linesdk/message/template/ImageScaleType;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/template/ImageScaleType;->getServerKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
