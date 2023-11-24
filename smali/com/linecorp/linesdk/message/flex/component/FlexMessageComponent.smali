.class public abstract Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;
.super Ljava/lang/Object;
.source "FlexMessageComponent.java"

# interfaces
.implements Lcom/linecorp/linesdk/message/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Style;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Weight;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectMode;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$AspectRatio;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Size;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Gravity;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Alignment;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Layout;,
        Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;
    }
.end annotation


# static fields
.field protected static final FLEX_VALUE_NONE:I = -0x1


# instance fields
.field protected final type:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;->type:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

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

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    .line 221
    iget-object v2, p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent;->type:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
