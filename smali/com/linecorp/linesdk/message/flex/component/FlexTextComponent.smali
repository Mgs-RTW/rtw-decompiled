.class public Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;
.super Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.source "FlexTextComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    }
.end annotation


# static fields
.field protected static final MAXLINES_VALUE_NONE:I = -0x1


# instance fields
.field private action:Lcom/linecorp/linesdk/message/flex/action/Action;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private color:Ljava/lang/String;
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

.field private maxLines:I

.field private size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private weight:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private wrap:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 111
    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->TEXT:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V

    return-void
.end method

.method private constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 116
    invoke-direct {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;-><init>()V

    .line 117
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$000(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->text:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$100(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->flex:I

    .line 119
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$200(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 120
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$300(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    .line 121
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$400(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    .line 122
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$500(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    .line 123
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$600(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->wrap:Ljava/lang/Boolean;

    .line 124
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$700(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->maxLines:I

    .line 125
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$800(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->weight:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    .line 126
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$900(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->color:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;->access$1000(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)Lcom/linecorp/linesdk/message/flex/action/Action;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;-><init>(Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 131
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent$Builder;-><init>(Ljava/lang/String;)V

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

    .line 137
    invoke-super {p0}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "text"

    .line 138
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "margin"

    .line 139
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->margin:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "size"

    .line 140
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->size:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "align"

    .line 141
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->align:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "gravity"

    .line 142
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->gravity:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "wrap"

    .line 143
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->wrap:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "weight"

    .line 144
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->weight:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "color"

    .line 145
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->color:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "action"

    .line 146
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->action:Lcom/linecorp/linesdk/message/flex/action/Action;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->flex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, "flex"

    .line 148
    iget v3, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->flex:I

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    :cond_1
    iget v1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->maxLines:I

    if-eq v1, v2, :cond_2

    const-string v1, "maxLines"

    .line 151
    iget v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexTextComponent;->maxLines:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method
