.class public Lcom/linecorp/linesdk/SendMessageResponse;
.super Ljava/lang/Object;
.source "SendMessageResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/SendMessageResponse$Status;
    }
.end annotation


# instance fields
.field private receiverId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private status:Lcom/linecorp/linesdk/SendMessageResponse$Status;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/SendMessageResponse$Status;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/SendMessageResponse$Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/linecorp/linesdk/SendMessageResponse;->receiverId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/linecorp/linesdk/SendMessageResponse;->status:Lcom/linecorp/linesdk/SendMessageResponse$Status;

    return-void
.end method

.method public static fromJsonObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/SendMessageResponse;
    .locals 3
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "status"

    .line 41
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/linecorp/linesdk/SendMessageResponse$Status;->OK:Lcom/linecorp/linesdk/SendMessageResponse$Status;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/SendMessageResponse$Status;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/linecorp/linesdk/SendMessageResponse$Status;->OK:Lcom/linecorp/linesdk/SendMessageResponse$Status;

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lcom/linecorp/linesdk/SendMessageResponse$Status;->DISCARDED:Lcom/linecorp/linesdk/SendMessageResponse$Status;

    .line 46
    :goto_0
    new-instance v1, Lcom/linecorp/linesdk/SendMessageResponse;

    const-string/jumbo v2, "to"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/linecorp/linesdk/SendMessageResponse;-><init>(Ljava/lang/String;Lcom/linecorp/linesdk/SendMessageResponse$Status;)V

    return-object v1
.end method


# virtual methods
.method public getStatus()Lcom/linecorp/linesdk/SendMessageResponse$Status;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/linecorp/linesdk/SendMessageResponse;->status:Lcom/linecorp/linesdk/SendMessageResponse$Status;

    return-object v0
.end method

.method public getTargetUserId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/linecorp/linesdk/SendMessageResponse;->receiverId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendMessageResponse{receiverId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/SendMessageResponse;->receiverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/SendMessageResponse;->status:Lcom/linecorp/linesdk/SendMessageResponse$Status;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
