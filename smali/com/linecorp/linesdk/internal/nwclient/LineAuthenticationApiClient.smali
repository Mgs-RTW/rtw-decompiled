.class public Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;
.super Ljava/lang/Object;
.source "LineAuthenticationApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$RefreshTokenResultParser;,
        Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$VerificationResultParser;,
        Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;
    }
.end annotation


# static fields
.field private static final AVAILABLE_TOKEN_TYPE:Ljava/lang/String; = "Bearer"

.field private static final BASE_PATH_OAUTH_V21_API:Ljava/lang/String; = "oauth2/v2.1"

.field private static final JWK_SET_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/JWKSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_RESULT_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "*>;"
        }
    .end annotation
.end field

.field private static final OPEN_ID_DISCOVERY_DOCUMENT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFRESH_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/RefreshTokenResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LineAuthApiClient"

.field private static final VERIFICATION_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ISSUE_ACCESS_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser<",
            "Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;",
            ">;"
        }
    .end annotation
.end field

.field private final apiBaseUrl:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final openidDiscoveryDocumentUrl:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final signingKeyResolver:Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$VerificationResultParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$VerificationResultParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->VERIFICATION_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 58
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$RefreshTokenResultParser;

    invoke-direct {v0, v1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$RefreshTokenResultParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$1;)V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->REFRESH_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 60
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/NoResultResponseParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/NoResultResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->NO_RESULT_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 62
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/OpenIdDiscoveryDocumentParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/OpenIdDiscoveryDocumentParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->OPEN_ID_DISCOVERY_DOCUMENT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 64
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/JWKSetParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JWKSetParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->JWK_SET_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    const-string v1, "5.5.0"

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$1;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->ISSUE_ACCESS_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 66
    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->signingKeyResolver:Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

    .line 84
    iput-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    .line 85
    iput-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 86
    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$300(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->signingKeyResolver:Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

    return-object p0
.end method


# virtual methods
.method public getJWKSet()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/internal/JWKSet;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->getOpenIdDiscoveryDocument()Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    .line 261
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v0

    .line 260
    invoke-static {v1, v0}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;

    .line 265
    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;->getJwksUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->JWK_SET_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 268
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LineAuthApiClient"

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJWKSet failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getOpenIdDiscoveryDocument()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/internal/OpenIdDiscoveryDocument;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->openidDiscoveryDocumentUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 244
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->OPEN_ID_DISCOVERY_DOCUMENT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 243
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LineAuthApiClient"

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpenIdDiscoveryDocument failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public issueAccessToken(Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Ljava/lang/String;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/linecorp/linesdk/internal/pkce/PKCECode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
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
            "Lcom/linecorp/linesdk/internal/pkce/PKCECode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/internal/IssueAccessTokenResult;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "oauth2/v2.1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "token"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v2, 0xe

    .line 96
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "grant_type"

    aput-object v3, v2, v4

    const-string v3, "authorization_code"

    aput-object v3, v2, v5

    const-string v3, "code"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object p2, v2, v1

    const-string p2, "redirect_uri"

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 p2, 0x5

    aput-object p4, v2, p2

    const-string p2, "client_id"

    const/4 p4, 0x6

    aput-object p2, v2, p4

    const/4 p2, 0x7

    aput-object p1, v2, p2

    const-string p1, "code_verifier"

    const/16 p2, 0x8

    aput-object p1, v2, p2

    .line 101
    invoke-virtual {p3}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->getVerifier()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v2, p2

    const-string p1, "id_token_key_type"

    const/16 p2, 0xa

    aput-object p1, v2, p2

    sget-object p1, Lcom/linecorp/linesdk/internal/IdTokenKeyType;->JWK:Lcom/linecorp/linesdk/internal/IdTokenKeyType;

    .line 102
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/IdTokenKeyType;->name()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    aput-object p1, v2, p2

    const-string p1, "client_version"

    const/16 p2, 0xc

    aput-object p1, v2, p2

    const-string p1, "LINE SDK Android v5.5.0"

    const/16 p2, 0xd

    aput-object p1, v2, p2

    .line 96
    invoke-static {v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    iget-object p4, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->ISSUE_ACCESS_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 105
    invoke-virtual {p2, v0, p3, p1, p4}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->post(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public refreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/internal/RefreshTokenResult;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "oauth2/v2.1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "token"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x6

    .line 180
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "grant_type"

    aput-object v3, v2, v4

    const-string v3, "refresh_token"

    aput-object v3, v2, v5

    const-string v3, "refresh_token"

    aput-object v3, v2, v1

    .line 182
    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    aput-object p2, v2, v1

    const-string p2, "client_id"

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 p2, 0x5

    aput-object p1, v2, p2

    .line 180
    invoke-static {v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 185
    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->REFRESH_TOKEN_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 185
    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->post(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public revokeAccessToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "oauth2/v2.1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "revoke"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x4

    .line 213
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "access_token"

    aput-object v3, v2, v4

    .line 214
    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v5

    const-string p2, "client_id"

    aput-object p2, v2, v1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    .line 213
    invoke-static {v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 217
    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 219
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->NO_RESULT_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 217
    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->post(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public revokeRefreshToken(Ljava/lang/String;Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linecorp/linesdk/internal/InternalAccessToken;",
            ")",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "oauth2/v2.1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "revoke"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x4

    .line 228
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "refresh_token"

    aput-object v3, v2, v4

    .line 229
    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v5

    const-string p2, "client_id"

    aput-object p2, v2, v1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    .line 228
    invoke-static {v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 232
    iget-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->NO_RESULT_RESPONSE_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 232
    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->post(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public verifyAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 6
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
            "Lcom/linecorp/linesdk/internal/AccessTokenVerificationResult;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->apiBaseUrl:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "oauth2/v2.1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "verify"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->buildUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "access_token"

    aput-object v2, v1, v4

    .line 155
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    .line 154
    invoke-static {v1}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 157
    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->httpClient:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->VERIFICATION_RESULT_PARSER:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    .line 157
    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->get(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p1

    return-object p1
.end method
