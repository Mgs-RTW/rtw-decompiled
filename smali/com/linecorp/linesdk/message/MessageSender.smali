.class public Lcom/linecorp/linesdk/message/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# instance fields
.field private final footerIconUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final footerLinkUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final label:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/linecorp/linesdk/message/MessageSender;->label:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/linecorp/linesdk/message/MessageSender;->footerIconUrl:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/linecorp/linesdk/message/MessageSender;->footerLinkUrl:Ljava/lang/String;

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

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "label"

    .line 39
    iget-object v2, p0, Lcom/linecorp/linesdk/message/MessageSender;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "iconUrl"

    .line 40
    iget-object v2, p0, Lcom/linecorp/linesdk/message/MessageSender;->footerIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object v1, p0, Lcom/linecorp/linesdk/message/MessageSender;->footerLinkUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "linkUrl"

    .line 42
    iget-object v2, p0, Lcom/linecorp/linesdk/message/MessageSender;->footerLinkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
