.class final Lcom/linecorp/linesdk/internal/nwclient/IdTokenParser;
.super Ljava/lang/Object;
.source "IdTokenParser.java"


# static fields
.field private static final ALLOWED_CLOCK_SKEW_SECONDS:J

.field private static final TAG:Ljava/lang/String; = "IdTokenParser"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/linecorp/linesdk/internal/nwclient/IdTokenParser;->ALLOWED_CLOCK_SKEW_SECONDS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAddress(Lio/jsonwebtoken/Claims;)Lcom/linecorp/linesdk/LineIdToken$Address;
    .locals 2

    const-string v0, "address"

    .line 76
    const-class v1, Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    new-instance v0, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;-><init>()V

    const-string v1, "street_address"

    .line 83
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->streetAddress(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;

    move-result-object v0

    const-string v1, "locality"

    .line 84
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->locality(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;

    move-result-object v0

    const-string v1, "region"

    .line 85
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->region(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;

    move-result-object v0

    const-string v1, "postal_code"

    .line 86
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->postalCode(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;

    move-result-object v0

    const-string v1, "country"

    .line 87
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->country(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Address$Builder;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineIdToken$Address$Builder;->build()Lcom/linecorp/linesdk/LineIdToken$Address;

    move-result-object p0

    return-object p0
.end method

.method private static buildIdToken(Ljava/lang/String;Lio/jsonwebtoken/Claims;)Lcom/linecorp/linesdk/LineIdToken;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 50
    new-instance v0, Lcom/linecorp/linesdk/LineIdToken$Builder;

    invoke-direct {v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;-><init>()V

    .line 51
    invoke-virtual {v0, p0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->rawString(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    .line 52
    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getIssuer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->issuer(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    .line 53
    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->subject(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    .line 54
    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getAudience()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->audience(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    .line 55
    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getExpiration()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->expiresAt(Ljava/util/Date;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    .line 56
    invoke-interface {p1}, Lio/jsonwebtoken/Claims;->getIssuedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->issuedAt(Ljava/util/Date;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "auth_time"

    const-class v1, Ljava/util/Date;

    .line 57
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->authTime(Ljava/util/Date;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "nonce"

    const-class v1, Ljava/lang/String;

    .line 58
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->nonce(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "amr"

    const-class v1, Ljava/util/List;

    .line 59
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->amr(Ljava/util/List;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "name"

    const-class v1, Ljava/lang/String;

    .line 60
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->name(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "picture"

    const-class v1, Ljava/lang/String;

    .line 61
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->picture(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "phone_number"

    const-class v1, Ljava/lang/String;

    .line 62
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->phoneNumber(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "email"

    const-class v1, Ljava/lang/String;

    .line 63
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->email(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "gender"

    const-class v1, Ljava/lang/String;

    .line 64
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->gender(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "birthdate"

    const-class v1, Ljava/lang/String;

    .line 65
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->birthdate(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    .line 66
    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenParser;->buildAddress(Lio/jsonwebtoken/Claims;)Lcom/linecorp/linesdk/LineIdToken$Address;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->address(Lcom/linecorp/linesdk/LineIdToken$Address;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "given_name"

    const-class v1, Ljava/lang/String;

    .line 67
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->givenName(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "given_name_pronunciation"

    const-class v1, Ljava/lang/String;

    .line 68
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->givenNamePronunciation(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "middle_name"

    const-class v1, Ljava/lang/String;

    .line 69
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->middleName(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "family_name"

    const-class v1, Ljava/lang/String;

    .line 70
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->familyName(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    const-string v0, "family_name_pronunciation"

    const-class v1, Ljava/lang/String;

    .line 71
    invoke-interface {p1, v0, v1}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/LineIdToken$Builder;->familyNamePronunciation(Ljava/lang/String;)Lcom/linecorp/linesdk/LineIdToken$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineIdToken$Builder;->build()Lcom/linecorp/linesdk/LineIdToken;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lio/jsonwebtoken/SigningKeyResolver;)Lcom/linecorp/linesdk/LineIdToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    :try_start_0
    invoke-static {}, Lio/jsonwebtoken/Jwts;->parser()Lio/jsonwebtoken/JwtParser;

    move-result-object v0

    sget-wide v1, Lcom/linecorp/linesdk/internal/nwclient/IdTokenParser;->ALLOWED_CLOCK_SKEW_SECONDS:J

    .line 36
    invoke-interface {v0, v1, v2}, Lio/jsonwebtoken/JwtParser;->setAllowedClockSkewSeconds(J)Lio/jsonwebtoken/JwtParser;

    move-result-object v0

    .line 37
    invoke-interface {v0, p1}, Lio/jsonwebtoken/JwtParser;->setSigningKeyResolver(Lio/jsonwebtoken/SigningKeyResolver;)Lio/jsonwebtoken/JwtParser;

    move-result-object p1

    .line 38
    invoke-interface {p1, p0}, Lio/jsonwebtoken/JwtParser;->parseClaimsJws(Ljava/lang/String;)Lio/jsonwebtoken/Jws;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Lio/jsonwebtoken/Jws;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/jsonwebtoken/Claims;

    .line 41
    invoke-static {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/IdTokenParser;->buildIdToken(Ljava/lang/String;Lio/jsonwebtoken/Claims;)Lcom/linecorp/linesdk/LineIdToken;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to parse IdToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IdTokenParser"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    throw p1
.end method
