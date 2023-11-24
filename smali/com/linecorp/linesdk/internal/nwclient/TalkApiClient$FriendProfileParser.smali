.class Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendProfileParser;
.super Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;
.source "TalkApiClient.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FriendProfileParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser<",
        "Lcom/linecorp/linesdk/LineFriendProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 481
    invoke-direct {p0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineFriendProfile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 481
    invoke-static {p0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendProfileParser;->parseLineFriendProfile(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineFriendProfile;

    move-result-object p0

    return-object p0
.end method

.method private static parseLineFriendProfile(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineFriendProfile;
    .locals 9
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 483
    invoke-static {p0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;->access$600(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineProfile;

    move-result-object v0

    const-string v1, "displayNameOverridden"

    const/4 v2, 0x0

    .line 484
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 485
    new-instance p0, Lcom/linecorp/linesdk/LineFriendProfile;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineProfile;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 487
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineProfile;->getPictureUrl()Landroid/net/Uri;

    move-result-object v6

    .line 488
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineProfile;->getStatusMessage()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/linecorp/linesdk/LineFriendProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineFriendProfile;
    .locals 0
    .param p1    # Lorg/json/JSONObject;
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

    .line 495
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendProfileParser;->parseLineFriendProfile(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineFriendProfile;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic parseJsonToObject(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lorg/json/JSONObject;
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

    .line 480
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendProfileParser;->parseJsonToObject(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineFriendProfile;

    move-result-object p1

    return-object p1
.end method
