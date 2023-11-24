.class public abstract Lcom/linecorp/linesdk/message/template/LayoutTemplate;
.super Ljava/lang/Object;
.source "LayoutTemplate.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# instance fields
.field private final type:Lcom/linecorp/linesdk/message/template/Type;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/message/template/Type;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/template/Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/linecorp/linesdk/message/template/LayoutTemplate;->type:Lcom/linecorp/linesdk/message/template/Type;

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

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    .line 26
    iget-object v2, p0, Lcom/linecorp/linesdk/message/template/LayoutTemplate;->type:Lcom/linecorp/linesdk/message/template/Type;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/template/Type;->getServerKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
