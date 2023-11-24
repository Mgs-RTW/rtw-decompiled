.class public Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;
.super Ljava/lang/Object;
.source "FlexBlockStyle.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# instance fields
.field private backgroundColor:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private separator:Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private separatorColor:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->backgroundColor:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->separator:Z

    .line 41
    iput-object p3, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->separatorColor:Ljava/lang/String;

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
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "backgroundColor"

    .line 48
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->backgroundColor:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "separator"

    .line 49
    iget-boolean v2, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->separator:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "separatorColor"

    .line 50
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;->separatorColor:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
