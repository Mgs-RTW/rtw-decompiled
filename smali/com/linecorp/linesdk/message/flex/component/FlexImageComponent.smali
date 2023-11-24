.class public Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexImageComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    }
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aspectMode:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private backgroundColor:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private flex:I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 101
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->IMAGE:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    .line 53
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;->CENTER:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    .line 65
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;->TOP:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->url:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->flex:I

    .line 108
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 109
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    .line 110
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$400(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    .line 111
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$500(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 112
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$600(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    .line 113
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$700(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->aspectMode:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    .line 114
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$800(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->backgroundColor:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;->access$900(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$Builder;-><init>(Ljava/lang/String;Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent$1;)V

    return-object v0
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 125
    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 126
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->flex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "flex"

    .line 128
    iget v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->flex:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "margin"

    .line 130
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "align"

    .line 131
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "gravity"

    .line 132
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "size"

    .line 133
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "aspectRatio"

    .line 134
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->aspectRatio:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;->getValue()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v0, v1, v3}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "aspectMode"

    .line 135
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->aspectMode:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "backgroundColor"

    .line 136
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->backgroundColor:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "action"

    .line 137
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexImageComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
