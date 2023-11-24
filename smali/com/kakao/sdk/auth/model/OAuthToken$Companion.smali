.class public final Lcom/kakao/sdk/auth/model/OAuthToken$Companion;
.super Ljava/lang/Object;
.source "OAuthToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/sdk/auth/model/OAuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOAuthToken.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OAuthToken.kt\ncom/kakao/sdk/auth/model/OAuthToken$Companion\n*L\n1#1,68:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/model/OAuthToken$Companion;",
        "",
        "()V",
        "fromResponse",
        "Lcom/kakao/sdk/auth/model/OAuthToken;",
        "response",
        "Lcom/kakao/sdk/auth/model/AccessTokenResponse;",
        "oldToken",
        "auth_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/kakao/sdk/auth/model/OAuthToken$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromResponse$default(Lcom/kakao/sdk/auth/model/OAuthToken$Companion;Lcom/kakao/sdk/auth/model/AccessTokenResponse;Lcom/kakao/sdk/auth/model/OAuthToken;ILjava/lang/Object;)Lcom/kakao/sdk/auth/model/OAuthToken;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 49
    check-cast p2, Lcom/kakao/sdk/auth/model/OAuthToken;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kakao/sdk/auth/model/OAuthToken$Companion;->fromResponse(Lcom/kakao/sdk/auth/model/AccessTokenResponse;Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromResponse(Lcom/kakao/sdk/auth/model/AccessTokenResponse;Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;
    .locals 12

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v3, Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->getAccessTokenExpiresIn()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long/2addr v0, v4

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 54
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-virtual {p2}, Lcom/kakao/sdk/auth/model/OAuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_8

    .line 61
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->getRefreshTokenExpiresIn()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    new-instance v0, Ljava/util/Date;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    mul-long v8, v8, v6

    add-long/2addr v10, v8

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_3
    :goto_2
    move-object v5, v0

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_5

    .line 64
    invoke-virtual {p2}, Lcom/kakao/sdk/auth/model/OAuthToken;->getRefreshTokenExpiresAt()Ljava/util/Date;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_2

    .line 65
    :goto_4
    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/AccessTokenResponse;->getScope()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, " "

    aput-object v0, v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/kakao/sdk/auth/model/OAuthToken;->getScopes()Ljava/util/List;

    move-result-object p1

    :goto_5
    move-object v6, p1

    goto :goto_6

    :cond_7
    move-object v6, v1

    .line 50
    :goto_6
    new-instance p1, Lcom/kakao/sdk/auth/model/OAuthToken;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/kakao/sdk/auth/model/OAuthToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;)V

    return-object p1

    .line 56
    :cond_8
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    .line 57
    sget-object p2, Lcom/kakao/sdk/common/model/ClientErrorCause;->TokenNotFound:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v0, "Refresh token not found in the response."

    .line 56
    invoke-direct {p1, p2, v0}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method
