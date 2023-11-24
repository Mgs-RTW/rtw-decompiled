.class public Lcom/linecorp/linesdk/internal/AccessTokenCache;
.super Ljava/lang/Object;
.source "AccessTokenCache.java"


# static fields
.field private static final DATA_KEY_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field private static final DATA_KEY_EXPIRES_IN_MILLIS:Ljava/lang/String; = "expiresIn"

.field private static final DATA_KEY_ISSUED_CLIENT_TIME_MILLIS:Ljava/lang/String; = "issuedClientTime"

.field private static final DATA_KEY_REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"

.field private static final NO_DATA:J = -0x1L

.field private static final SHARED_PREFERENCE_KEY_PREFIX:Ljava/lang/String; = "com.linecorp.linesdk.accesstoken."


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final encryptor:Lcom/linecorp/android/security/encryption/StringCipher;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final sharedPreferenceKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/linecorp/linesdk/internal/EncryptorHolder;->getEncryptor()Lcom/linecorp/android/security/encryption/StringCipher;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/android/security/encryption/StringCipher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/android/security/encryption/StringCipher;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/linecorp/android/security/encryption/StringCipher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.linecorp.linesdk.accesstoken."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->sharedPreferenceKey:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    return-void
.end method

.method private decryptToLong(Ljava/lang/String;)J
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    iget-object v3, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/linecorp/android/security/encryption/StringCipher;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    return-wide v0
.end method

.method private decryptToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/android/security/encryption/StringCipher;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encryptLong(J)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/android/security/encryption/StringCipher;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptor:Lcom/linecorp/android/security/encryption/StringCipher;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/linecorp/android/security/encryption/StringCipher;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->sharedPreferenceKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getAccessToken()Lcom/linecorp/linesdk/internal/InternalAccessToken;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->sharedPreferenceKey:Ljava/lang/String;

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "accessToken"

    .line 78
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-direct {p0, v2}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->decryptToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "expiresIn"

    .line 80
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-direct {p0, v2}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->decryptToLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v2, "issuedClientTime"

    .line 82
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-direct {p0, v2}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->decryptToLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Lcom/linecorp/android/security/encryption/EncryptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v9, v5, v2

    if-eqz v9, :cond_1

    cmp-long v9, v7, v2

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "refreshToken"

    .line 93
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->decryptToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 94
    invoke-static {v0, v1}, Lcom/linecorp/linesdk/utils/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v1

    .line 84
    :catch_0
    invoke-virtual {p0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->clear()V

    return-object v1
.end method

.method public saveAccessToken(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V
    .locals 4
    .param p1    # Lcom/linecorp/linesdk/internal/InternalAccessToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->sharedPreferenceKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessToken"

    .line 59
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "expiresIn"

    .line 61
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getExpiresInMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptLong(J)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "issuedClientTime"

    .line 63
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getIssuedClientTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptLong(J)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refreshToken"

    .line 65
    invoke-virtual {p1}, Lcom/linecorp/linesdk/internal/InternalAccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
