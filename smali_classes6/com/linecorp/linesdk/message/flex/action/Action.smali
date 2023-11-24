.class public abstract Lcom/linecorp/linesdk/message/flex/action/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/action/Action$Type;
    }
.end annotation


# instance fields
.field protected label:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final type:Lcom/linecorp/linesdk/message/flex/action/Action$Type;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/message/flex/action/Action$Type;)V
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/message/flex/action/Action$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/message/flex/action/Action;-><init>(Lcom/linecorp/linesdk/message/flex/action/Action$Type;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/linecorp/linesdk/message/flex/action/Action$Type;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/action/Action$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/action/Action;->type:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    .line 52
    iput-object p2, p0, Lcom/linecorp/linesdk/message/flex/action/Action;->label:Ljava/lang/String;

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

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    .line 63
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/action/Action;->type:Lcom/linecorp/linesdk/message/flex/action/Action$Type;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/flex/action/Action$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "label"

    .line 64
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/action/Action;->label:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/linecorp/linesdk/utils/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
