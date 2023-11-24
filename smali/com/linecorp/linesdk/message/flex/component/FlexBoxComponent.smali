.class public Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexBoxComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;
    }
.end annotation


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contents:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;",
            ">;"
        }
    .end annotation
.end field

.field private flex:I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private layout:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private spacing:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 84
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->BOX:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->layout:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;

    .line 90
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->contents:Ljava/util/List;

    .line 91
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->flex:I

    .line 92
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->spacing:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 93
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->access$400(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 94
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;->access$500(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;)V

    return-void
.end method

.method public static newBuilder(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;Ljava/util/List;)Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;
    .locals 2
    .param p0    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;",
            ">;)",
            "Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$Builder;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;Ljava/util/List;Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent$1;)V

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

    const-string v1, "layout"

    .line 106
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->layout:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "contents"

    .line 107
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->contents:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->putArray(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "spacing"

    .line 108
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->spacing:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "margin"

    .line 109
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "action"

    .line 110
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    iget v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->flex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "flex"

    .line 112
    iget v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexBoxComponent;->flex:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
