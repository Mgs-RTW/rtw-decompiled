.class public Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;
.super Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;
.source "FlexBubbleContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;,
        Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;,
        Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;
    }
.end annotation


# instance fields
.field private body:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private footer:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private header:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hero:Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private styles:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 122
    sget-object v0, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;->BUBBLE:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;-><init>(Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;)V

    .line 85
    sget-object v0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->LEFT_TO_RIGHT:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    .line 128
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->header:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    .line 129
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->hero:Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

    .line 130
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->body:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    .line 131
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$400(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->footer:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    .line 132
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;->access$500(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->styles:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;-><init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;
    .locals 2

    .line 136
    new-instance v0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Builder;-><init>(Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$1;)V

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

    .line 142
    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "direction"

    .line 143
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->direction:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Direction;

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "header"

    .line 144
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->header:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "hero"

    .line 145
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->hero:Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "body"

    .line 146
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->body:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "footer"

    .line 147
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->footer:Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "styles"

    .line 148
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;->styles:Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
