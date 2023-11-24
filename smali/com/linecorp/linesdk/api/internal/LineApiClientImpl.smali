.class public Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;
.super Ljava/lang/Object;
.source "LineApiClientImpl.java"

# interfaces
.implements Lcom/linecorp/linesdk/api/LineApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;
    }
.end annotation


# static fields
.field private static final ERROR_RESPONSE_NO_TOKEN:Lcom/linecorp/linesdk/LineApiResponse;


# instance fields
.field private final accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final channelId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token is null"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->ERROR_RESPONSE_NO_TOKEN:Lcom/linecorp/linesdk/LineApiResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;Lcom/linecorp/linesdk/internal/AccessTokenCache;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/linecorp/linesdk/internal/AccessTokenCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->channelId:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    .line 60
    iput-object p3, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    .line 61
    iput-object p4, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    return-void
.end method

.method private callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken<",
            "TT;>;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "TT;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    sget-object p1, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->ERROR_RESPONSE_NO_TOKEN:Lcom/linecorp/linesdk/LineApiResponse;

    return-object p1

    .line 70
    :cond_0
    invoke-interface {p1, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;->call(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$EAP4DYVGkazaZjUOnsGwNG1jLxo(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->logout(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$UUH2bB5yuW83nrHSCdZpOb_xnrM(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->verifyToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$createOpenChatRoom$7(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->createOpenChatRoom(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getFriends$0(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;ZLcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getFriends(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getFriendsApprovers$1(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getFriendsApprovers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getGroupApprovers$3(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getGroupApprovers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getGroups$2(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;ZLcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getGroups(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getOpenChatAgreementStatus$6(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOpenChatAgreementStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getOpenChatMembershipStatus$10(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOpenChatMembershipStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getOpenChatRoomJoinType$11(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOpenChatRoomJoinType(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getOpenChatRoomStatus$9(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p2, p1}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->getOpenChatRoomStatus(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$joinOpenChatRoom$8(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->joinOpenChatRoom(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$sendMessage$4(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/util/List;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p3, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessage(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$sendMessageToMultipleUsers$5(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/util/List;Ljava/util/List;ZLcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0, p4, p1, p2, p3}, Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;->sendMessageToMultipleUsers(Lcom/linecorp/linesdk/internal/InternalAccessToken;Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method private logout(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
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
            "*>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->revokeRefreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->clear()V

    :cond_0
    return-object p1
.end method

.method private verifyToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 12
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
            "Lcom/linecorp/linesdk/LineCredential;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    .line 130
    invoke-virtual {v0, p1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->verifyAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object p1

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v0

    .line 132
    invoke-static {p1, v0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 137
    iget-object v10, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    new-instance v11, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    .line 139
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->getExpiresInMillis()J

    move-result-wide v3

    .line 142
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v7

    move-object v1, v11

    move-wide v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 137
    invoke-virtual {v10, v11}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->saveAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V

    .line 143
    new-instance v7, Lcom/linecorp/linesdk/LineCredential;

    new-instance v10, Lcom/linecorp/linesdk/LineAccessToken;

    .line 146
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->getExpiresInMillis()J

    move-result-wide v3

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    .line 149
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;->getScopes()Ljava/util/List;

    move-result-object p1

    invoke-direct {v7, v10, p1}, Lcom/linecorp/linesdk/LineCredential;-><init>(Lcom/linecorp/linesdk/LineAccessToken;Ljava/util/List;)V

    .line 143
    invoke-static {v7}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createOpenChatRoom(Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/openchat/OpenChatParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$X0bNwnNxg-s0rE4pshlOhBnqfnU;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$X0bNwnNxg-s0rE4pshlOhBnqfnU;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAccessToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "The cached access token does not exist."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    .line 161
    :cond_0
    new-instance v7, Lcom/linecorp/linesdk/LineAccessToken;

    .line 162
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getExpiresInMillis()J

    move-result-wide v3

    .line 164
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    .line 161
    invoke-static {v7}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/FriendSortField;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, p2, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->getFriends(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriends(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/FriendSortField;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$BhsLTDe06-RLssySllevlVCtWqQ;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$BhsLTDe06-RLssySllevlVCtWqQ;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriendsApprovers(Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/FriendSortField;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$-YHUEsvnCrP6LSC1zNkw2WZvizI;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$-YHUEsvnCrP6LSC1zNkw2WZvizI;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/FriendSortField;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFriendshipStatus()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineFriendshipStatus;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/linecorp/linesdk/api/internal/-$$Lambda$BODnNtULEx2ujDfkZjfr7O1KzRQ;

    invoke-direct {v1, v0}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$BODnNtULEx2ujDfkZjfr7O1KzRQ;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;)V

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public getGroupApprovers(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetFriendsResponse;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tcufc-ff4ZAbqhy9qS4cWh4--d0;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tcufc-ff4ZAbqhy9qS4cWh4--d0;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGroups(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetGroupsResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, p1, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->getGroups(Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGroups(Ljava/lang/String;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/GetGroupsResponse;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$cpkC8oTyyxoJ3sUJ1p7JEpwyLnY;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$cpkC8oTyyxoJ3sUJ1p7JEpwyLnY;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatAgreementStatus()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$ua5qhMWSroH3xcemSPGwDwKMoGI;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$ua5qhMWSroH3xcemSPGwDwKMoGI;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public getOpenChatMembershipStatus(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/MembershipStatus;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$uvmj98pTcBkSPmpQp2Qz0kksA0Q;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$uvmj98pTcBkSPmpQp2Qz0kksA0Q;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatRoomJoinType(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Q9MfcPFYZWoh5g40Q-ZGgEjJjSY;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Q9MfcPFYZWoh5g40Q-ZGgEjJjSY;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getOpenChatRoomStatus(Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$LgXBSwBlsrF1ynFip9arqjS2NJA;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$LgXBSwBlsrF1ynFip9arqjS2NJA;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public getProfile()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->talkApiClient:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/linecorp/linesdk/api/internal/-$$Lambda$0WsmcWoxqpPz6Zxdwz0Q_w5b3wE;

    invoke-direct {v1, v0}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$0WsmcWoxqpPz6Zxdwz0Q_w5b3wE;-><init>(Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;)V

    invoke-direct {p0, v1}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public joinOpenChatRoom(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$j1_dQQQnXsX1PW9hWiyJ3g5R-mM;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$j1_dQQQnXsX1PW9hWiyJ3g5R-mM;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public logout()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$EAP4DYVGkazaZjUOnsGwNG1jLxo;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$EAP4DYVGkazaZjUOnsGwNG1jLxo;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public refreshAccessToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->oauthApiClient:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iget-object v2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->channelId:Ljava/lang/String;

    .line 99
    invoke-virtual {v1, v2, v0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->refreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    .line 106
    :cond_1
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/internal/RefreshTokenResult;

    .line 107
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :goto_1
    new-instance v0, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    .line 110
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/RefreshTokenResult;->getExpiresInMillis()J

    move-result-wide v4

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->accessTokenCache:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->saveAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V

    .line 115
    new-instance v1, Lcom/linecorp/linesdk/LineAccessToken;

    .line 116
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getExpiresInMillis()J

    move-result-wide v4

    .line 118
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    .line 115
    invoke-static {v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    .line 94
    :cond_3
    :goto_2
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token or refresh token is not found."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage(Ljava/lang/String;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/message/MessageData;",
            ">;)",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$hXQFBUz1d9GJLUHjRfyD7bmkNdM;

    invoke-direct {v0, p0, p1, p2}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$hXQFBUz1d9GJLUHjRfyD7bmkNdM;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessageToMultipleUsers(Ljava/util/List;Ljava/util/List;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 251
    invoke-virtual {p0, p1, p2, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->sendMessageToMultipleUsers(Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public sendMessageToMultipleUsers(Ljava/util/List;Ljava/util/List;Z)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/linecorp/linesdk/api/internal/TokenAutoRefresh;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 261
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$Tr7eDBPnp8EaTduJehzrCa3Ec-o;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Ljava/util/List;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public verifyToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineCredential;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$UUH2bB5yuW83nrHSCdZpOb_xnrM;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/-$$Lambda$LineApiClientImpl$UUH2bB5yuW83nrHSCdZpOb_xnrM;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->callWithAccessToken(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method
