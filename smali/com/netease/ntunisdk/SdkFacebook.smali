.class public Lcom/netease/ntunisdk/SdkFacebook;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkFacebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkFacebook$FbCallback;,
        Lcom/netease/ntunisdk/SdkFacebook$MgCallback;,
        Lcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;,
        Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;,
        Lcom/netease/ntunisdk/SdkFacebook$Permission;
    }
.end annotation


# static fields
.field private static final METHOD_GET_SET_STREAM_TITLE:Ljava/lang/String; = "setFBStreamTitle"

.field private static final METHOD_GET_USERINFO:Ljava/lang/String; = "getFacebookUserInfo"

.field private static final REQUEST_CODE_LIKE:I

.field private static final REQUEST_CODE_SHARE_INSTAGRAM_STORY:I

.field private static final REQUEST_CODE_SHARE_TO_FB_INTENT:I

.field private static final REQUEST_CODE_SHARE_TO_MESSENGER:I

.field private static final SDK_VERSION:Ljava/lang/String; = "13.1.0"

.field private static final TAG:Ljava/lang/String; = "UniSDK SdkFacebook"


# instance fields
.field private accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private availFriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private final fbCallback:Lcom/netease/ntunisdk/SdkFacebook$FbCallback;

.field private frdApiFromExtFunc:Z

.field private friInGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private friList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private live_title:Ljava/lang/String;

.field private final mgCallback:Lcom/netease/ntunisdk/SdkFacebook$MgCallback;

.field private name:Ljava/lang/String;

.field private picture:Ljava/lang/String;

.field private profileTracker:Lcom/facebook/ProfileTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UniSDK SdkFacebook"

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    rem-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_TO_MESSENGER:I

    .line 60
    sget v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_TO_MESSENGER:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_LIKE:I

    .line 61
    sget v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_LIKE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_TO_FB_INTENT:I

    .line 62
    sget v0, Lcom/netease/ntunisdk/InstagramShare;->CODE:I

    sput v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_INSTAGRAM_STORY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 92
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->frdApiFromExtFunc:Z

    const-string p1, ""

    .line 66
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->live_title:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->id:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->name:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->picture:Ljava/lang/String;

    .line 611
    new-instance p1, Lcom/netease/ntunisdk/SdkFacebook$FbCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/netease/ntunisdk/SdkFacebook$FbCallback;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/SdkFacebook$1;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->fbCallback:Lcom/netease/ntunisdk/SdkFacebook$FbCallback;

    .line 612
    new-instance p1, Lcom/netease/ntunisdk/SdkFacebook$MgCallback;

    invoke-direct {p1, p0, v0}, Lcom/netease/ntunisdk/SdkFacebook$MgCallback;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/SdkFacebook$1;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->mgCallback:Lcom/netease/ntunisdk/SdkFacebook$MgCallback;

    const-string p1, "UniSDK SdkFacebook"

    const-string v0, "SdkFacebook constructed"

    .line 93
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkFacebook;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->dealOnSuccess(Lcom/facebook/AccessToken;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkFacebook;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->share2FacebookMessenger(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/SdkFacebook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkFacebook;->availFriList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/netease/ntunisdk/SdkFacebook;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->availFriList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkFacebook;->friList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/netease/ntunisdk/SdkFacebook;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->friList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkFacebook;->friInGameList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/netease/ntunisdk/SdkFacebook;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->friInGameList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkFacebook;->live_title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkFacebook;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/ntunisdk/SdkFacebook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/SdkFacebook;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkFacebook;->picture:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/netease/ntunisdk/SdkFacebook;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->picture:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->doShareActions(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/SdkFacebook;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/SdkFacebook;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/SdkFacebook;Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->hasInstallFbApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private varargs checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V
    .locals 4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSession, bRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkFacebook"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentAccessToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v0, p3}, Lcom/netease/ntunisdk/SdkFacebook;->permissionEnough(Lcom/facebook/AccessToken;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "no more auth"

    .line 142
    invoke-static {v1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string p3, "FB_UID"

    .line 143
    invoke-virtual {p0, p3, p2}, Lcom/netease/ntunisdk/SdkFacebook;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 144
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkFacebook;->dealOnSuccess(Lcom/facebook/AccessToken;)V

    .line 146
    :cond_0
    new-instance p2, Lcom/facebook/login/LoginResult;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p2, v0, p3, v1}, Lcom/facebook/login/LoginResult;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;->call(Lcom/facebook/login/LoginResult;)V

    return-void

    .line 150
    :cond_1
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/netease/ntunisdk/SdkFacebook$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/ntunisdk/SdkFacebook$1;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 183
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 185
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p2, p3, p1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0

    .line 187
    :cond_2
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p2, p3, p1}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :goto_0
    return-void
.end method

.method private clearToken()V
    .locals 3

    .line 1268
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 1269
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FACEBOOK_TOKEN"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "FACEBOOK_STREAM_URL"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "FACEBOOK_SECURE_STREAM_URL"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1272
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    return-void
.end method

.method private dealOnSuccess(Lcom/facebook/AccessToken;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fbid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK SdkFacebook"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FB_UID"

    .line 125
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CHANNEL_UID"

    .line 126
    invoke-virtual {p0, v2, v0}, Lcom/netease/ntunisdk/SdkFacebook;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FB_SESSION"

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doShareActions(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 11

    .line 623
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "TYPE_VIDEO"

    const-string v3, "TYPE_IMAGE"

    const-string v4, "TYPE_LINK"

    if-eqz v1, :cond_3

    .line 626
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v4

    goto :goto_1

    .line 632
    :cond_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v3

    .line 637
    :cond_3
    :goto_1
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    iget-object v5, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-direct {v1, v5}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 638
    iget-object v5, p0, Lcom/netease/ntunisdk/SdkFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    iget-object v6, p0, Lcom/netease/ntunisdk/SdkFacebook;->fbCallback:Lcom/netease/ntunisdk/SdkFacebook$FbCallback;

    invoke-virtual {v1, v5, v6}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 640
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "UniSDK SdkFacebook"

    if-eqz v4, :cond_4

    const-string v0, "share link callback"

    .line 641
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 644
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 645
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    .line 646
    invoke-virtual {v1, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 648
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "] not exist"

    const-string v6, "["

    const-string v7, "://"

    const-string v8, "ftp"

    const-string v9, "http"

    const/4 v10, 0x0

    if-eqz v3, :cond_b

    const-string v0, "share image callback"

    .line 649
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 651
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "found share bitmap"

    .line 652
    invoke-static {v5, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    goto/16 :goto_3

    .line 654
    :cond_5
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "not found share bitmap, but found a image uri"

    .line 655
    invoke-static {v5, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 674
    :cond_6
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 675
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    goto :goto_3

    .line 677
    :cond_7
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 678
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    goto :goto_3

    .line 680
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0, v10}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    return-void

    :cond_9
    :goto_2
    const-string v0, "download it firstly"

    .line 658
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    new-instance v1, Lcom/netease/ntunisdk/SdkFacebook$7;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkFacebook$7;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    invoke-static {v0, p1, v1}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->download(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    return-void

    :cond_a
    const-string p1, "not found share bitmap or image uri"

    .line 688
    invoke-static {v5, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :goto_3
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object p1

    .line 691
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 692
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p1

    .line 693
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p1

    .line 694
    invoke-virtual {v1, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 696
    :cond_b
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "share video callback"

    .line 697
    invoke-static {v5, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    .line 706
    :cond_c
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 707
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    .line 709
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 710
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 718
    :goto_4
    new-instance v2, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    .line 719
    invoke-virtual {v2, v0}, Lcom/facebook/share/model/ShareVideo$Builder;->setLocalUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    .line 721
    new-instance v2, Lcom/facebook/share/model/ShareVideoContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareVideoContent$Builder;-><init>()V

    .line 722
    invoke-virtual {v2, v0}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setVideo(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 723
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 724
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object p1

    .line 725
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->build()Lcom/facebook/share/model/ShareVideoContent;

    move-result-object p1

    .line 727
    invoke-virtual {v1, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto :goto_6

    .line 712
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, v10}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    return-void

    :cond_f
    :goto_5
    const-string p1, "only local video file supported"

    .line 700
    invoke-static {v5, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0, v10}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    return-void

    :cond_10
    const-string p1, "no share type was set"

    .line 730
    invoke-static {v5, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0, v10}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :goto_6
    return-void
.end method

.method private gameReq(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 5

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "gameReq"

    .line 1281
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    new-instance v1, Lcom/facebook/share/widget/GameRequestDialog;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    .line 1283
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/netease/ntunisdk/SdkFacebook$17;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/SdkFacebook$17;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 1305
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1306
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getText()Ljava/lang/String;

    move-result-object v3

    .line 1307
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1308
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v3

    .line 1310
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "invalid text or invalid desc"

    .line 1311
    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1314
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "invalid title(please do shareInfo.setTitle()), share finished as error"

    .line 1315
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1316
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    .line 1318
    :cond_3
    new-instance p1, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    .line 1319
    invoke-virtual {p1, v2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    .line 1320
    invoke-virtual {p1, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    .line 1321
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    .line 1322
    invoke-virtual {v1, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    return-void
.end method

.method private getMyInfo(ZLcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;)V
    .locals 1

    .line 255
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/SdkFacebook$4;-><init>(Lcom/netease/ntunisdk/SdkFacebook;ZLcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;)V

    sget-object p1, Lcom/netease/ntunisdk/SdkFacebook$Permission;->BASIC:[Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    return-void
.end method

.method private getRtmp(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 3

    .line 1215
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$16;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkFacebook$16;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/base/ShareInfo;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_video"

    aput-object v2, p1, v1

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    return-void
.end method

.method private getUserInfo()V
    .locals 3

    .line 312
    invoke-static {}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync()V

    .line 313
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentAccessToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK SdkFacebook"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 316
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 318
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$5;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkFacebook$5;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    const/4 v1, 0x1

    sget-object v2, Lcom/netease/ntunisdk/SdkFacebook$Permission;->BASIC:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    return-void
.end method

.method private getUserLikes(Ljava/lang/String;)V
    .locals 4

    .line 1326
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$18;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkFacebook$18;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "user_likes"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    return-void
.end method

.method private hasInstallFbApp(Ljava/lang/String;)Z
    .locals 2

    .line 1405
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1407
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method private static openInPlayStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "android.intent.action.VIEW"

    .line 815
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 816
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 815
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 818
    :catchall_0
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 819
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 818
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private varargs permissionEnough(Lcom/facebook/AccessToken;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 108
    array-length v2, p2

    if-nez v2, :cond_1

    goto :goto_2

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object p1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permissionEnough: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniSDK SdkFacebook"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "owning: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, p2, v3

    if-eqz v4, :cond_2

    .line 116
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_2
    return v1
.end method

.method private share2Facebook(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 4

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "share2Facebook"

    .line 471
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.katana"

    .line 473
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkFacebook;->hasInstallFbApp(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "TYPE_INVITE"

    .line 474
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "TYPE_INVITE is no longer supported in FACEBOOK, use TYPE_GAME_REQUEST instead. Any AppInvite will lead to GameRequest"

    .line 476
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->gameReq(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_0
    const-string v0, "TYPE_GAME_REQUEST"

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->gameReq(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_1
    const-string v0, "TYPE_GET_RTMP"

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->getRtmp(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_2
    const-string v0, "TYPE_CLEAR_TOKEN"

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkFacebook;->clearToken()V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 490
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->doShareActions(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    .line 493
    :cond_4
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$6;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkFacebook$6;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/netease/ntunisdk/base/ShareInfo;)V

    const/4 p1, 0x1

    .line 499
    sget-object v1, Lcom/netease/ntunisdk/SdkFacebook$Permission;->BASIC:[Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private share2FacebookMessenger(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 10

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share2FacebookMessenger shareInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkFacebook"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TYPE_AUDIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "ftp"

    const-string v4, "http"

    const-string v5, "com.facebook.orca"

    const/4 v6, 0x0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v7, "TYPE_VIDEO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 753
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TYPE_GIF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "TYPE_IMAGE"

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 780
    :cond_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TYPE_LINK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 781
    invoke-direct {p0, v5}, Lcom/netease/ntunisdk/SdkFacebook;->hasInstallFbApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 783
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 784
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    .line 785
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkFacebook;->mgCallback:Lcom/netease/ntunisdk/SdkFacebook$MgCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/MessageDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 786
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V

    goto :goto_0

    :cond_2
    const-string p1, "messenger not installed"

    .line 789
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/netease/ntunisdk/SdkFacebook;->openInPlayStore(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string p1, "no share type was set"

    .line 796
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0, v6}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    return-void

    .line 754
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "image/gif"

    goto :goto_2

    :cond_5
    const-string v0, "image/jpeg"

    .line 755
    :goto_2
    new-instance v8, Lcom/netease/ntunisdk/SdkFacebook$8;

    invoke-direct {v8, p0}, Lcom/netease/ntunisdk/SdkFacebook$8;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    .line 765
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "please share a local gif file, use ShareInfo#setImage(localGifFilePath)"

    .line 766
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0, v6}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    return-void

    .line 770
    :cond_6
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 771
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    invoke-static {v0, p1, v8}, Lcom/netease/ntunisdk/SaveBitmapAsyncTask;->save(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    return-void

    .line 774
    :cond_7
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 778
    :cond_8
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_6

    .line 775
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    invoke-static {v0, p1, v8}, Lcom/netease/ntunisdk/DownloadImageAsyncTask;->download(Landroid/content/Context;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/FbMediaProcessCallback;)V

    return-void

    .line 743
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "audio/mpeg"

    goto :goto_5

    :cond_b
    const-string v0, "video/mp4"

    .line 744
    :goto_5
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_7

    .line 751
    :cond_c
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 800
    :goto_6
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, p1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 802
    invoke-static {p1, v0}, Lcom/facebook/messenger/ShareToMessengerParams;->newBuilder(Landroid/net/Uri;Ljava/lang/String;)Lcom/facebook/messenger/ShareToMessengerParamsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/messenger/ShareToMessengerParamsBuilder;->build()Lcom/facebook/messenger/ShareToMessengerParams;

    move-result-object p1

    .line 804
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_TO_MESSENGER:I

    invoke-static {v0, v1, p1}, Lcom/facebook/messenger/MessengerUtils;->shareToMessenger(Landroid/app/Activity;ILcom/facebook/messenger/ShareToMessengerParams;)V

    return-void

    .line 745
    :cond_d
    :goto_7
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "please share a local audio file, use ShareInfo#setVideoUrl(localAudioFilePath)"

    goto :goto_8

    :cond_e
    const-string p1, "please share a local video file, use ShareInfo#setVideoUrl(localVideoFilePath)"

    :goto_8
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {p0, v6}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    return-void
.end method

.method private share2FacebookThroughIntent(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 7

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "share2FacebookThroughIntent"

    .line 504
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v1

    .line 506
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.SEND"

    .line 507
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 510
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.facebook.katana"

    const-string v5, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "TYPE_LINK"

    .line 516
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 517
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object p1

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 519
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "TYPE_IMAGE"

    .line 521
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v6, "android.intent.extra.STREAM"

    if-eqz v3, :cond_2

    .line 522
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object p1

    .line 523
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "use ShareInfo.setImage(path) to set your image path to share"

    .line 524
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 527
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 528
    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "image/*"

    .line 529
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, v4, p1, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_2
    const-string v0, "TYPE_VIDEO"

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->getUriForFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 535
    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "video/*"

    .line 536
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, v4, p1, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_TO_FB_INTENT:I

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-nez p1, :cond_4

    .line 548
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const-string v0, "Share to"

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    sget v1, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_TO_FB_INTENT:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    return-void
.end method

.method private share2FbIntentCallback(I)V
    .locals 1

    .line 881
    sget v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_TO_FB_INTENT:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 882
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :cond_0
    return-void
.end method

.method private share2FbLikeCallback(II)V
    .locals 1

    .line 869
    sget v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_LIKE:I

    if-ne v0, p1, :cond_1

    const/4 p1, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 870
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :cond_1
    return-void
.end method

.method private share2FbLikeNew(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 9

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "share2FbLikeNew:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkFacebook"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getToUser()Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-wide/16 v2, 0x0

    .line 832
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 834
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid facebook id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    :goto_0
    const-string v6, "com.facebook.katana"

    .line 837
    invoke-direct {p0, v6}, Lcom/netease/ntunisdk/SdkFacebook;->hasInstallFbApp(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "android.intent.action.VIEW"

    if-eqz v2, :cond_2

    .line 840
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fb://page/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 841
    new-instance v4, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 843
    :try_start_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v5, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_LIKE:I

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 846
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v7, 0x0

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    if-nez v7, :cond_5

    .line 852
    :cond_3
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object p1

    .line 853
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "invalid link"

    .line 854
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 856
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 857
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 859
    :try_start_2
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget v1, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_LIKE:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 861
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 862
    invoke-virtual {p0, v8}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method private share2FbMessengerCallback(I)V
    .locals 1

    .line 875
    sget v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_TO_MESSENGER:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 876
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :cond_0
    return-void
.end method

.method private share2InstagramCallback(I)V
    .locals 1

    .line 887
    sget v0, Lcom/netease/ntunisdk/SdkFacebook;->REQUEST_CODE_SHARE_INSTAGRAM_STORY:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 888
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 1

    const-string p1, "UniSDK SdkFacebook"

    const-string v0, "no function for checkOrder"

    .line 382
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 2

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "exit"

    .line 412
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->profileTracker:Lcom/facebook/ProfileTracker;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v0}, Lcom/facebook/ProfileTracker;->stopTracking()V

    .line 419
    :cond_1
    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->exit()V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 4

    const-string v0, "methodId"

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniSDK SdkFacebook"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "channel"

    .line 1373
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getFacebookLike"

    .line 1374
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "getFacebookLikes"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "facebook"

    .line 1377
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "queryMyAccount"

    .line 1378
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1379
    iput-boolean v1, p0, Lcom/netease/ntunisdk/SdkFacebook;->frdApiFromExtFunc:Z

    .line 1380
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkFacebook;->queryMyAccount()V

    :cond_1
    const-string v0, "queryFriendListInGame"

    .line 1382
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1383
    iput-boolean v1, p0, Lcom/netease/ntunisdk/SdkFacebook;->frdApiFromExtFunc:Z

    .line 1384
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkFacebook;->queryFriendListInGame()V

    goto :goto_1

    :cond_2
    const-string v2, "getFacebookUserInfo"

    .line 1386
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1387
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkFacebook;->getUserInfo()V

    goto :goto_1

    :cond_3
    const-string v2, "setFBStreamTitle"

    .line 1388
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "live_title"

    .line 1389
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/SdkFacebook;->live_title:Ljava/lang/String;

    .line 1390
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1391
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "respCode"

    const/4 v0, 0x0

    .line 1392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "respMsg"

    const-string v0, ""

    .line 1393
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "title"

    .line 1394
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->live_title:Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1395
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->extendFuncCall(Ljava/lang/String;)V

    return-void

    .line 1375
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->getUserLikes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1400
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook_sdk"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkFacebook;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 365
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkFacebook;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkFacebook;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "UIN"

    .line 376
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkFacebook;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "13.1.0"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "13.1.0"

    return-object v0
.end method

.method getUriForFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 808
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fb.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 809
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UniSDK SdkFacebook"

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasPlatform(Ljava/lang/String;)Z
    .locals 2

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasPlatform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK SdkFacebook"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1420
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "messenger"

    .line 1421
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "com.facebook.orca"

    .line 1422
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->hasInstallFbApp(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "facebook"

    .line 1423
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.facebook.katana"

    .line 1424
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->hasInstallFbApp(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 2

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "init"

    .line 193
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "FEATURE_HAS_SHARE"

    .line 194
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->setPropInt(Ljava/lang/String;I)V

    const-string v1, "FEATURE_HAS_FRIEND"

    .line 195
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->setPropInt(Ljava/lang/String;I)V

    const-string v1, "FEATURE_HAS_LOGOUT"

    .line 196
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->setPropInt(Ljava/lang/String;I)V

    const-string v1, "SHARE_WITH_307"

    .line 199
    invoke-virtual {p0, v1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->setFeature(Ljava/lang/String;Z)V

    .line 203
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 208
    :cond_0
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    .line 210
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkFacebook$2;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 221
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$3;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkFacebook$3;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->profileTracker:Lcom/facebook/ProfileTracker;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 230
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    :cond_1
    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "login"

    .line 250
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkFacebook;->getMyInfo(ZLcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;)V

    return-void
.end method

.method public logout()V
    .locals 2

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "logout..."

    .line 906
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 910
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkFacebook;->resetCommonProp()V

    const/4 v0, 0x0

    .line 911
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkFacebook;->logoutDone(I)V

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public queryAvailablesInvitees()V
    .locals 5

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "queryAvailablesInvitees"

    .line 945
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$10;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkFacebook$10;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    .line 984
    new-instance v1, Lcom/netease/ntunisdk/SdkFacebook$11;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/SdkFacebook$11;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/facebook/GraphRequest$Callback;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user_friends"

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    return-void
.end method

.method public queryFriendList()V
    .locals 5

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "queryFriendList"

    .line 1000
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$12;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkFacebook$12;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    .line 1080
    new-instance v1, Lcom/netease/ntunisdk/SdkFacebook$13;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/SdkFacebook$13;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/facebook/GraphRequest$Callback;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user_friends"

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    return-void
.end method

.method public queryFriendListInGame()V
    .locals 5

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "queryFriendListInGame"

    .line 1098
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$14;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkFacebook$14;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    .line 1139
    new-instance v1, Lcom/netease/ntunisdk/SdkFacebook$15;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/SdkFacebook$15;-><init>(Lcom/netease/ntunisdk/SdkFacebook;Lcom/facebook/GraphRequest$Callback;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user_friends"

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/netease/ntunisdk/SdkFacebook;->checkSession(Lcom/netease/ntunisdk/SdkFacebook$SessionCallback;Z[Ljava/lang/String;)V

    return-void
.end method

.method public queryFriendListInGameFinished(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 1186
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->frdApiFromExtFunc:Z

    if-eqz v0, :cond_1

    .line 1188
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "queryFriendListInGameFinished"

    .line 1189
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    const-string v2, "facebook"

    .line 1190
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1192
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1193
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/AccountInfo;

    .line 1194
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "accountId"

    .line 1195
    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/AccountInfo;->getAccountId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "icon"

    .line 1196
    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/AccountInfo;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "nickname"

    .line 1197
    invoke-virtual {v2}, Lcom/netease/ntunisdk/base/AccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1199
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "results"

    .line 1202
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1203
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1209
    :cond_1
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->queryFriendListInGameFinished(Ljava/util/List;)V

    :goto_1
    const/4 p1, 0x0

    .line 1211
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->frdApiFromExtFunc:Z

    return-void
.end method

.method public queryMyAccount()V
    .locals 2

    .line 920
    new-instance v0, Lcom/netease/ntunisdk/SdkFacebook$9;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkFacebook$9;-><init>(Lcom/netease/ntunisdk/SdkFacebook;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/SdkFacebook;->getMyInfo(ZLcom/netease/ntunisdk/SdkFacebook$MyInfoCallback;)V

    return-void
.end method

.method public queryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 4

    .line 1160
    iget-boolean v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->frdApiFromExtFunc:Z

    if-eqz v0, :cond_0

    .line 1162
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "queryMyAccountFinished"

    .line 1163
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    const-string v2, "facebook"

    .line 1164
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1166
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "accountId"

    .line 1167
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/AccountInfo;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "icon"

    .line 1168
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/AccountInfo;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "nickname"

    .line 1169
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/AccountInfo;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "result"

    .line 1172
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1173
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1179
    :cond_0
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->queryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V

    :goto_0
    const/4 p1, 0x0

    .line 1181
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkFacebook;->frdApiFromExtFunc:Z

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "sdkOnActivityResult"

    .line 432
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->callbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 436
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 438
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/SdkFacebook;->share2FbLikeCallback(II)V

    .line 439
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->share2FbMessengerCallback(I)V

    .line 440
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->share2FbIntentCallback(I)V

    .line 441
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->share2InstagramCallback(I)V

    return-void
.end method

.method public sdkOnPause()V
    .locals 0

    return-void
.end method

.method public sdkOnResume()V
    .locals 0

    return-void
.end method

.method public setFloatBtnVisible(Z)V
    .locals 0

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 3

    const-string v0, "UniSDK SdkFacebook"

    const-string v1, "share"

    .line 446
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "shareInfo is null"

    .line 450
    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 451
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->shareFinished(Z)V

    return-void

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v0

    const/16 v1, 0x73

    if-ne v1, v0, :cond_1

    .line 457
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->share2FacebookMessenger(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x74

    if-ne v1, v0, :cond_2

    .line 460
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->share2FbLikeNew(Lcom/netease/ntunisdk/base/ShareInfo;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x133

    if-ne v1, v0, :cond_3

    .line 462
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkFacebook;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1, p0}, Lcom/netease/ntunisdk/InstagramShare;->share(Landroid/app/Activity;Lcom/netease/ntunisdk/base/ShareInfo;Lcom/netease/ntunisdk/SdkFacebook;)V

    goto :goto_0

    .line 465
    :cond_3
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkFacebook;->share2Facebook(Lcom/netease/ntunisdk/base/ShareInfo;)V

    :goto_0
    return-void
.end method

.method public shareFinished(Z)V
    .locals 3

    .line 616
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "facebook"

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkFacebook;->hasPlatform(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "UNISDK_IS_FB_APP_INSTALLED"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 617
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->shareFinished(Z)V

    return-void
.end method

.method protected specialShareChannel(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;
    .locals 2

    .line 236
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v0

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 244
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->specialShareChannel(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkFacebook;->getChannel()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
