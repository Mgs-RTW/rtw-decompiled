.class public Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;
.super Ljava/lang/Object;
.source "FlexBubbleContainer.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Style"
.end annotation


# instance fields
.field private body:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

.field private footer:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

.field private header:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

.field private hero:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "header"

    .line 73
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;->header:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "hero"

    .line 74
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;->hero:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "body"

    .line 75
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;->body:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "footer"

    .line 76
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexBubbleContainer$Style;->footer:Lcom/linecorp/linesdk/message/flex/style/FlexBlockStyle;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
