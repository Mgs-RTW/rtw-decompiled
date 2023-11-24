.class public abstract Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;
.super Ljava/lang/Object;
.source "FlexMessageContainer.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;
    }
.end annotation


# instance fields
.field protected final type:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;->type:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;

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

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    .line 33
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer;->type:Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/flex/container/FlexMessageContainer$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
