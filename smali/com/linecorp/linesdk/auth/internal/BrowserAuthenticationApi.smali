.class Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;
.super Ljava/lang/Object;
.source "BrowserAuthenticationApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;,
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;,
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;
    }
.end annotation


# static fields
.field private static final AUTO_LOGIN_FOR_LINE_SDK_ENABLED_VERSION:Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

.field private static final LENGTH_OAUTH_STATE:I = 0x10

.field private static final LENGTH_OPENID_NONCE:I = 0x10


# instance fields
.field private final authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    const/4 v1, 0x6

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;-><init>(III)V

    sput-object v0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->AUTO_LOGIN_FOR_LINE_SDK_ENABLED_VERSION:Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    return-void
.end method

.method constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;)V
    .locals 0
    .param p1    # Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    return-void
.end method

.method private static convertToIntents(Landroid/net/Uri;Ljava/util/Collection;Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 271
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 273
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 275
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 277
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method createLoginUrl(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p1    # Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/internal/pkce/PKCECode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/16 v0, 0x10

    .line 153
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "response_type"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "code"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "client_id"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 155
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "state"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    aput-object p4, v0, v1

    const-string p4, "code_challenge"

    const/4 v1, 0x6

    aput-object p4, v0, v1

    .line 157
    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->getChallenge()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x7

    aput-object p2, v0, p4

    const-string p2, "code_challenge_method"

    const/16 p4, 0x8

    aput-object p2, v0, p4

    sget-object p2, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->S256:Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    .line 158
    invoke-virtual {p2}, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->getValue()Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0x9

    aput-object p2, v0, p4

    const-string p2, "redirect_uri"

    const/16 p4, 0xa

    aput-object p2, v0, p4

    const/16 p2, 0xb

    aput-object p6, v0, p2

    const-string p2, "sdk_ver"

    const/16 p4, 0xc

    aput-object p2, v0, p4

    const-string p2, "5.5.0"

    const/16 p4, 0xd

    aput-object p2, v0, p4

    const-string p2, "scope"

    const/16 p4, 0xe

    aput-object p2, v0, p4

    .line 161
    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getScopes()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/linecorp/linesdk/Scope;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0xf

    aput-object p2, v0, p4

    .line 153
    invoke-static {v0}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 163
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "nonce"

    .line 164
    invoke-interface {p2, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getBotPrompt()Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    move-result-object p4

    if-eqz p4, :cond_1

    const-string p4, "bot_prompt"

    .line 167
    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getBotPrompt()Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    move-result-object p5

    invoke-virtual {p5}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;->name()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p2, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p4, "/oauth2/v2.1/authorize/consent"

    .line 170
    invoke-static {p4, p2}, Lcom/linecorp/linesdk/utils/UriUtils;->appendQueryParams(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p2

    .line 171
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 173
    new-array p4, v6, [Ljava/lang/String;

    const-string p5, "returnUri"

    aput-object p5, p4, v2

    aput-object p2, p4, v3

    const-string p2, "loginChannelId"

    aput-object p2, p4, v4

    .line 175
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v5

    .line 173
    invoke-static {p4}, Lcom/linecorp/linesdk/utils/UriUtils;->buildParams([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 177
    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getUILocale()Ljava/util/Locale;

    move-result-object p4

    if-eqz p4, :cond_2

    const-string/jumbo p4, "ui_locales"

    .line 178
    invoke-virtual {p3}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getUILocale()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_2
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getWebLoginPageUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/linecorp/linesdk/utils/UriUtils;->appendQueryParams(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method createRedirectUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent://result#Intent;package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";scheme=lineauth;end"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getAuthenticationIntentHolder(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->isChromeCustomTabSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const v2, 0x106000b

    .line 215
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 217
    iget-object v2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 218
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    move-object v0, v1

    .line 224
    :goto_0
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->getLineAppVersion(Landroid/content/Context;)Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 226
    new-instance p1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-direct {p1, v2, v0, v4}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p1

    :cond_1
    const/4 v5, 0x1

    if-nez p3, :cond_2

    .line 230
    sget-object p3, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->AUTO_LOGIN_FOR_LINE_SDK_ENABLED_VERSION:Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    .line 231
    invoke-virtual {v3, p3}, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->isEqualOrGreaterThan(Lcom/linecorp/linesdk/auth/internal/LineAppVersion;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_3

    .line 233
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p2, "jp.naver.line.android"

    .line 235
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    new-instance p2, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-direct {p2, p1, v0, v5}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p2

    .line 240
    :cond_3
    new-instance p3, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v6, "http://"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p3, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 244
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->convertToIntents(Landroid/net/Uri;Ljava/util/Collection;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    .line 246
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_5

    if-ne p3, v5, :cond_4

    .line 252
    new-instance p2, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    .line 253
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-direct {p2, p1, v0, v4}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p2

    .line 256
    :cond_4
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-static {p2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "android.intent.extra.INITIAL_INTENTS"

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 257
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    new-instance p1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-direct {p1, p2, v0, v4}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return-object p1

    .line 248
    :cond_5
    new-instance p1, Landroid/content/ActivityNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity for LINE log-in is not found. uri="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getAuthenticationResultFrom(Landroid/content/Intent;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 284
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Illegal redirection from external application."

    .line 286
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsInternalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    return-object p1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->getOAuthState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    .line 290
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "code"

    .line 295
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "friendship_status_changed"

    .line 296
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 298
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 299
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 302
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 303
    invoke-static {v0, v2}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsSuccess(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "error"

    .line 305
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_description"

    .line 306
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-static {v0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsAuthenticationAgentError(Ljava/lang/String;Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_4
    :goto_1
    const-string p1, "Illegal parameter value of \'state\'."

    .line 292
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->createAsInternalError(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;

    move-result-object p1

    return-object p1
.end method

.method getRequest(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/linecorp/linesdk/internal/pkce/PKCECode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 108
    invoke-static {v0}, Lcom/linecorp/linesdk/utils/StringUtils;->createRandomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v1, v5}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setOAuthState(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getScopes()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/linecorp/linesdk/Scope;->OPENID_CONNECT:Lcom/linecorp/linesdk/Scope;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p4}, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->getNonce()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {v0}, Lcom/linecorp/linesdk/utils/StringUtils;->createRandomAlphaNumeric(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 122
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->authenticationStatus:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    invoke-virtual {v0, v6}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->setOpenIdNonce(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->createRedirectUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v0

    .line 126
    invoke-virtual/range {v1 .. v7}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->createLoginUrl(Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 129
    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->isLineAppAuthenticationDisabled()Z

    move-result p2

    .line 128
    invoke-virtual {p0, p1, p3, p2}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->getAuthenticationIntentHolder(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    move-result-object p1

    .line 131
    new-instance p2, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;

    .line 132
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->getIntent()Landroid/content/Intent;

    move-result-object p3

    .line 133
    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->getStartActivityOptions()Landroid/os/Bundle;

    move-result-object p4

    .line 135
    invoke-static {p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->access$000(Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;)Z

    move-result p1

    invoke-direct {p2, p3, p4, v0, p1}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-object p2
.end method

.method isChromeCustomTabSupported()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
