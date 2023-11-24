.class public Lcom/netease/ntunisdk/SdkGoogleX;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkGoogleX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;,
        Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "google"

.field private static final RC_ACHIEVEMENT:I

.field private static final RC_CHECK_ACCOUNT:I

.field private static final RC_LEADERBOARD:I

.field private static final RC_SHOW_PROFILE:I

.field private static final RC_SHOW_SHARING_FRIENDS_CONSENT:I

.field private static final SDK_VERSION:Ljava/lang/String; = "2.0"

.field private static final TAG:Ljava/lang/String; = "SdkGoogleX"


# instance fields
.field private mCachedType:I

.field private final mCheckAccountCallbackList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private mHasFriends:Z

.field private mSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field private preExeTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, -0x6c6343b

    .line 58
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_CHECK_ACCOUNT:I

    add-int/lit8 v0, v0, 0x1

    .line 59
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_LEADERBOARD:I

    add-int/lit8 v0, v0, 0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_ACHIEVEMENT:I

    add-int/lit8 v0, v0, 0x1

    .line 61
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_SHOW_SHARING_FRIENDS_CONSENT:I

    add-int/lit8 v0, v0, 0x1

    .line 62
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/2addr v0, v1

    sput v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_SHOW_PROFILE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 75
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    .line 69
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mHasFriends:Z

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mCachedType:I

    :try_start_0
    const-string v0, "com.google.android.gms.games.PlayersClient"

    .line 77
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loadFriends"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p1

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    iput-boolean v3, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mHasFriends:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkGoogleX;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/SdkGoogleX;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mHasFriends:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/netease/ntunisdk/SdkGoogleX;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mCachedType:I

    return p1
.end method

.method static synthetic access$1300()I
    .locals 1

    .line 52
    sget v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_SHOW_SHARING_FRIENDS_CONSENT:I

    return v0
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/util/List;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendListCallback(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 52
    sget v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_SHOW_PROFILE:I

    return v0
.end method

.method static synthetic access$1800(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 52
    sget v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_LEADERBOARD:I

    return v0
.end method

.method static synthetic access$2000(Lcom/netease/ntunisdk/SdkGoogleX;)Ljava/util/LinkedList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/netease/ntunisdk/SdkGoogleX;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getGoogleSignInClientInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200()I
    .locals 1

    .line 52
    sget v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_CHECK_ACCOUNT:I

    return v0
.end method

.method static synthetic access$2300(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/netease/ntunisdk/SdkGoogleX;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->requestEmailFromGoogleAccountCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 52
    sget v0, Lcom/netease/ntunisdk/SdkGoogleX;->RC_ACHIEVEMENT:I

    return v0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    return-object p0
.end method

.method private checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V
    .locals 2

    const-string v0, "SdkGoogleX"

    const-string v1, "checkAccount"

    .line 634
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 636
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getSignInOptionsInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getScopeArray()[Lcom/google/android/gms/common/api/Scope;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->hasPermissions(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;[Lcom/google/android/gms/common/api/Scope;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 640
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;->onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    return-void

    .line 644
    :cond_1
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getGoogleSignInClientInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/SdkGoogleX$11;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$11;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    .line 646
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private executeAndClearCheckAccountCallbacks(Landroid/content/Intent;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 107
    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;

    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;->onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mCheckAccountCallbackList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    :cond_3
    return-void
.end method

.method private getGoogleSignInClientInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getSignInOptionsInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mGoogleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    return-object v0
.end method

.method private getSignInOptionsInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 8

    .line 606
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-nez v0, :cond_1

    const-string v0, "google_web_app_client_id"

    .line 607
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "google_web_app_client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SdkGoogleX"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 612
    new-instance v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 613
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/common/api/Scope;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/gms/common/api/Scope;

    const-string v7, "profile"

    invoke-direct {v6, v7}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 615
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v2

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v1

    .line 618
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 621
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mSignInOptions:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-object v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 162
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UIN"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SESSION"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USER_ID"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USR_NAME"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UEMAIL"

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 168
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->setLoginStat(I)V

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->loginDone(I)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->resetCommonProp()V

    const/16 p1, 0xa

    .line 173
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->loginDone(I)V

    :goto_0
    return-void
.end method

.method private queryFriendList(IZ)V
    .locals 2

    const-string v0, "SdkGoogleX"

    const-string v1, "queryFriendList"

    .line 428
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-boolean v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mHasFriends:Z

    if-nez v1, :cond_0

    const-string v1, "no friends api"

    .line 430
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/SdkGoogleX$8;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;IZ)V

    .line 496
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method

.method private queryFriendListCallback(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 512
    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "methodId"

    const-string v1, "queryFriendList"

    .line 513
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/AccountInfo;

    .line 516
    invoke-static {v1}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "results"

    .line 518
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 508
    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryAvailablesInviteesFinished(Ljava/util/List;)V

    goto :goto_1

    .line 505
    :cond_3
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendListInGameFinished(Ljava/util/List;)V

    goto :goto_1

    .line 502
    :cond_4
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendListFinished(Ljava/util/List;)V

    :catch_0
    :goto_1
    return-void
.end method

.method private requestEmailFromGoogleAccount()V
    .locals 2

    const-string v0, "SdkGoogleX"

    const-string v1, "requestEmailFromGoogleAccount"

    .line 671
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$12;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkGoogleX$12;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    .line 678
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method

.method private requestEmailFromGoogleAccountCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestEmailFromGoogleAccountCallback, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkGoogleX"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "requestEmailFromGoogleAccount"

    .line 686
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v1, "email"

    .line 688
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "error"

    const-string v1, "invalid sign-in account"

    .line 691
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 696
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private showProfile(Ljava/lang/String;)V
    .locals 1

    .line 552
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$10;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$10;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method

.method private signOut()V
    .locals 1

    .line 701
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$13;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkGoogleX$13;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    .line 717
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->signOutGoogleAccount(Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;)V

    return-void
.end method

.method private signOutGoogleAccount(Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;)V
    .locals 2

    .line 721
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getGoogleSignInClientInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/SdkGoogleX$14;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$14;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;)V

    .line 723
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "checkOrder"

    .line 197
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->sdkInstMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    .line 209
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "sdkInstMap\u4e3a\u7a7a\u6216size()\u5c0f\u4e8e1"

    .line 199
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 200
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 201
    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public displayAchievement()V
    .locals 6

    const-string v0, "SdkGoogleX"

    const-string v1, "displayAchievement"

    .line 355
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4b0

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    const-string v1, "cool down."

    .line 357
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 361
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    .line 362
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$6;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkGoogleX$6;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    .line 386
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method

.method public displayLeaderboard(Ljava/lang/String;)V
    .locals 6

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayLeaderboard, leaderboardId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkGoogleX"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4b0

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    const-string p1, "cool down."

    .line 294
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 297
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    .line 299
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$4;

    invoke-direct {v0, p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$4;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method

.method public exit()V
    .locals 0

    .line 258
    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->exit()V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 3

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkGoogleX"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 573
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "requestEmailFromGoogleAccount"

    .line 574
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->requestEmailFromGoogleAccount()V

    goto :goto_0

    :cond_0
    const-string v2, "signOutGoogleAccount"

    .line 577
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->signOut()V

    goto :goto_0

    :cond_1
    const-string v2, "queryFriendList"

    .line 580
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x3

    const/4 v0, 0x1

    .line 581
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V

    goto :goto_0

    :cond_2
    const-string v2, "showProfile"

    .line 583
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "playerId"

    .line 584
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 586
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->showProfile(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "playerId invalid."

    .line 588
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 593
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "google"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 180
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIN"

    .line 189
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0"

    return-object v0
.end method

.method public getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 7

    const-string v0, "SdkGoogleX"

    const-string v1, "init"

    .line 122
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FEATURE_HAS_LOGOUT"

    const/4 v2, 0x1

    .line 123
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "FEATURE_HAS_GOOGLEGAMESERVICE"

    .line 124
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "FEATURE_HAS_RANK"

    .line 125
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "FEATURE_HAS_ACHIEVEMENT"

    .line 126
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    .line 127
    iget-boolean v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mHasFriends:Z

    const-string v3, "FEATURE_HAS_FRIEND"

    invoke-virtual {p0, v3, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    .line 129
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getSignInOptionsInstance()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    const-string v1, "google_sc_app_id"

    .line 131
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "google_sc_app_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 135
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v5, v3

    :goto_0
    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const-string v1, "google_app_id must be a long integer, please do modify Unipack settings"

    .line 139
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    const-string v1, "ERROR: google_app_id must be a long integer"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    const/4 v0, 0x0

    .line 143
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "SdkGoogleX"

    const-string v1, "login"

    .line 148
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkGoogleX$1;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method

.method public logout()V
    .locals 2

    const-string v0, "SdkGoogleX"

    const-string v1, "logout"

    .line 215
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkGoogleX$2;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    .line 223
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->signOutGoogleAccount(Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;)V

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public queryAvailablesInvitees()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 424
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V

    return-void
.end method

.method public queryFriendList()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 414
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V

    return-void
.end method

.method public queryFriendListInGame()V
    .locals 1

    const/4 v0, 0x1

    .line 419
    invoke-direct {p0, v0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V

    return-void
.end method

.method public queryMyAccount()V
    .locals 2

    const-string v0, "SdkGoogleX"

    const-string v1, "queryMyAccount"

    .line 530
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$9;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkGoogleX$9;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    .line 548
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "sdkOnActivityResult"

    .line 92
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget p2, Lcom/netease/ntunisdk/SdkGoogleX;->RC_CHECK_ACCOUNT:I

    if-ne p2, p1, :cond_0

    .line 97
    invoke-direct {p0, p3}, Lcom/netease/ntunisdk/SdkGoogleX;->executeAndClearCheckAccountCallbacks(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    :cond_0
    sget p2, Lcom/netease/ntunisdk/SdkGoogleX;->RC_SHOW_SHARING_FRIENDS_CONSENT:I

    if-ne p2, p1, :cond_1

    .line 100
    iget p1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mCachedType:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method

.method public updateAchievement(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "updateAchievement"

    .line 328
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "achievenmentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/netease/ntunisdk/SdkGoogleX$5;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;ILjava/lang/String;)V

    .line 347
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method

.method public updateEvent(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "updateEvent"

    .line 397
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incrementAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/ntunisdk/SdkGoogleX$7;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/lang/String;I)V

    .line 409
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method

.method public updateRank(Ljava/lang/String;D)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "updateRank"

    .line 266
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkGoogleX$3;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/lang/String;D)V

    .line 284
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V

    return-void
.end method
