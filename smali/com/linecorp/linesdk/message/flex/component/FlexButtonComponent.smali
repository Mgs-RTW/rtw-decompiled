.class public Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexButtonComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    }
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private color:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private flex:I

.field private gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private height:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private style:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 84
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->BUTTON:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    .line 90
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->flex:I

    .line 91
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 92
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->height:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    .line 93
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$400(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->style:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;

    .line 94
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$500(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->color:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;->access$600(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;)V

    return-void
.end method

.method public static newBuilder(Lcom/linecorp/linesdk/message/flex/action/Action;)Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;
    .locals 2
    .param p0    # Lcom/linecorp/linesdk/message/flex/action/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$Builder;-><init>(Lcom/linecorp/linesdk/message/flex/action/Action;Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent$1;)V

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

    .line 105
    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "action"

    .line 106
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "margin"

    .line 107
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "height"

    .line 108
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->height:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "style"

    .line 109
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->style:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "color"

    .line 110
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->color:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "gravity"

    .line 111
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    iget v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->flex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "flex"

    .line 113
    iget v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexButtonComponent;->flex:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
