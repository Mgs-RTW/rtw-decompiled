.class public Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexIconComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;
    }
.end annotation


# instance fields
.field private aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 50
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->ICON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->url:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 57
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 58
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$Builder;-><init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent$1;)V

    return-object v0
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

    .line 68
    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 69
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "margin"

    .line 70
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "size"

    .line 71
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "aspectRatio"

    .line 72
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexIconComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
