.class public Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
.super Ljava/lang/Object;
.source "TalkApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MultiSendResponseParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$GroupParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendshipStatusParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendProfileParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendsParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MembershipStatusParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomStatusParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;,
        Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;
    }
.end annotation


# static fields
.field private static final BASE_PATH_COMMON_API:Ljava/lang/String; = "v2"

.field private static final BASE_PATH_FRIENDSHIP_API:Ljava/lang/String; = "friendship/v1"

.field static final BASE_PATH_GRAPH_API:Ljava/lang/String; = "graph/v2"

.field static final BASE_PATH_MESSAGE_API:Ljava/lang/String; = "message/v3"

.field private static final BASE_PATH_OPENCHAT_API:Ljava/lang/String; = "openchat/v1"

.field private static final FRIENDSHIP_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/LineFriendshipStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/GetGroupsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final MULTI_SEND_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_AGREEMENT_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_MEMBERSHIP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/openchat/MembershipStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_ROOM_INFO_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_ROOM_JOIN_TYPE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPEN_CHAT_ROOM_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;",
            ">;"
        }
    .end annotation
.end field

.field static final PATH_FRIENDS:Ljava/lang/String; = "friends"

.field static final PATH_GROUPS:Ljava/lang/String; = "groups"

.field static final PATH_OTS_FRIENDS:Ljava/lang/String; = "ots/friends"

.field static final PATH_OTS_GROUPS:Ljava/lang/String; = "ots/groups"

.field static final PATH_OTT_ISSUE:Ljava/lang/String; = "ott/issue"

.field static final PATH_OTT_SHARE:Ljava/lang/String; = "ott/share"

.field private static final PROFILE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_HEADER_ACCESS_TOKEN:Ljava/lang/String; = "Authorization"

.field private static final TOKEN_TYPE_BEARER:Ljava/lang/String; = "Bearer"


# instance fields
.field private final apiBaseUrl:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$ProfileParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->PROFILE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 74
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendshipStatusParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendshipStatusParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDSHIP_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 75
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendsParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$FriendsParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 76
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$GroupParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$GroupParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->GROUP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 77
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MultiSendResponseParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MultiSendResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->MULTI_SEND_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 78
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatAgreementStatusParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_AGREEMENT_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 79
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomInfoParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_INFO_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 80
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomStatusParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomStatusParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 81
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MembershipStatusParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$MembershipStatusParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_MEMBERSHIP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 82
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$OpenChatRoomJoinTypeParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_JOIN_TYPE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    const-string v1, "5.5.0"

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;-><init>(Landroid/net/Uri;Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    .line 93
    iput-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    return-void
.end method

.method private static buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;
    .locals 3
    .param p0    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 442
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Authorization"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 442
    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private createInternalErrorResponse(Ljava/lang/Exception;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    .line 367
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v1, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method private getOtt(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    :try_start_0
    new-instance v0, Lcom/linecorp/linesdk/message/OttRequest;

    invoke-direct {v0, p2}, Lcom/linecorp/linesdk/message/OttRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/linecorp/linesdk/message/OttRequest;->toJsonString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "message/v3"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ott/issue"

    aput-object v4, v2, v3

    .line 434
    invoke-static {v1, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 435
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    new-instance v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;

    const-string/jumbo v3, "token"

    invoke-direct {v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 428
    sget-object p2, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p2, v0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method private sendMessageToMultipleUsersUsingUserIds(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation

    .line 254
    :try_start_0
    invoke-static {p2, p3}, Lcom/linecorp/linesdk/message/MessageSendRequest;->createMultiUsersType(Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/message/MessageSendRequest;->toJsonString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "message/v3"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "multisend"

    aput-object v3, v1, v2

    .line 260
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 261
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->MULTI_SEND_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 259
    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 256
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->createInternalErrorResponse(Ljava/lang/Exception;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createOpenChatRoom(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/openchat/OpenChatParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "openchat/v1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "openchats"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 306
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    .line 307
    invoke-virtual {p2}, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->toJsonString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_INFO_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 304
    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriends(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/FriendSortField;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    if-eqz p4, :cond_0

    const-string p4, "ots/friends"

    goto :goto_0

    :cond_0
    const-string p4, "friends"

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "graph/v2"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 125
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "sort"

    aput-object v1, v0, v4

    invoke-virtual {p2}, Lcom/linecorp/linesdk/FriendSortField;->getServerKey()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 126
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pageToken"

    .line 127
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_1
    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 131
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 129
    invoke-virtual {p3, p4, p1, p2, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriendsApprovers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/FriendSortField;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "graph/v2"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "friends"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "approvers"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 163
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "sort"

    aput-object v2, v1, v3

    .line 164
    invoke-virtual {p2}, Lcom/linecorp/linesdk/FriendSortField;->getServerKey()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    .line 163
    invoke-static {v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 166
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pageToken"

    .line 167
    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 172
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 170
    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriendshipStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineFriendshipStatus;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "friendship/v1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "status"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 112
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDSHIP_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 110
    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGroupApprovers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "graph/v2"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "groups"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string p2, "approvers"

    const/4 v5, 0x3

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 185
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "pageToken"

    aput-object v1, v0, v3

    aput-object p3, v0, v4

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 195
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->FRIENDS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 193
    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGroups(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetGroupsResponse;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string p3, "ots/groups"

    goto :goto_0

    :cond_0
    const-string p3, "groups"

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "graph/v2"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "pageToken"

    aput-object v1, v0, v4

    aput-object p2, v0, v3

    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    .line 147
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 151
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->GROUP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 149
    invoke-virtual {v0, p3, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatAgreementStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "openchat/v1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "terms/agreement"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 293
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    .line 294
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_AGREEMENT_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 291
    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatMembershipStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/MembershipStatus;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "openchat/v1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "openchats"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string p2, "members/me/membership"

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 346
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 348
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_MEMBERSHIP_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 346
    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatRoomJoinType(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "openchat/v1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "openchats"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string/jumbo p2, "type"

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 359
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 361
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_JOIN_TYPE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 359
    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatRoomStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "openchat/v1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "openchats"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "status"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "openChatId"

    .line 331
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 335
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->OPEN_CHAT_ROOM_STATUS_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 333
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getProfile(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "v2"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "profile"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 101
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->PROFILE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 99
    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public joinOpenChatRoom(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "openchat/v1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "openchats"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string p2, "join"

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 318
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 320
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\"displayName\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" }"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    .line 318
    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessage(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    :try_start_0
    invoke-static {p2, p3}, Lcom/linecorp/linesdk/message/MessageSendRequest;->createSingleUserType(Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/message/MessageSendRequest;->toJsonString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "message/v3"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "send"

    aput-object v3, v1, v2

    .line 213
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 214
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    new-instance v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;

    const-string v2, "status"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient$StringParser;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 209
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->createInternalErrorResponse(Ljava/lang/Exception;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessageToMultipleUsers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessageToMultipleUsers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessageToMultipleUsers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation

    if-eqz p4, :cond_1

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOtt(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p2

    .line 235
    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 236
    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessageToMultipleUsersUsingOtt(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    .line 239
    :cond_0
    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p1

    .line 240
    invoke-virtual {p2}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p2

    .line 238
    invoke-static {p1, p2}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    .line 243
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessageToMultipleUsersUsingUserIds(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method protected sendMessageToMultipleUsersUsingOtt(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation

    .line 274
    :try_start_0
    invoke-static {p2, p3}, Lcom/linecorp/linesdk/message/MessageSendRequest;->createOttType(Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/message/MessageSendRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/linecorp/linesdk/message/MessageSendRequest;->toJsonString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    iget-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "message/v3"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ott/share"

    aput-object v3, v1, v2

    .line 280
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 281
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->buildRequestHeaders(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->MULTI_SEND_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 279
    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->postWithJson(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 276
    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->createInternalErrorResponse(Ljava/lang/Exception;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
