.class public Lcom/linecorp/linesdk/message/flex/container/FlexCarouselContainer;
.super Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;
.source "FlexCarouselContainer.java"


# instance fields
.field private contents:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;->CAROUSEL:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;-><init>(Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/container/FlexCarouselContainer;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexCarouselContainer;->contents:Ljava/util/List;

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

    .line 47
    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "contents"

    .line 48
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexCarouselContainer;->contents:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
