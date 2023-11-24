.class public Lcom/netease/mpay/oversea/thirdapi/o;
.super Lcom/netease/mpay/oversea/thirdapi/d;
.source "GoogleGameApi.java"


# instance fields
.field private d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

.field private e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field private f:Z

.field private g:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/d;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/o;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/o;Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/o;->g:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getGamesClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/GamesClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 105
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/h;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    const/4 v0, -0x3

    const-string v1, "Token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/o;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/o;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/thirdapi/o;->d(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/f;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 9
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/b0;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->g:Landroid/app/Activity;

    .line 4
    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/o;->c(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 5
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 94
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    const-string v1, "auth_code"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    new-instance p2, Lcom/netease/mpay/oversea/h/l/a;

    const-string v0, "api_type"

    const-string v1, "games"

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 7

    const-class v0, Lcom/netease/mpay/oversea/thirdapi/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, -0x1

    const/16 v6, 0x1f

    if-ne p1, v6, :cond_5

    .line 16
    monitor-enter v0

    if-eq p2, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    :try_start_0
    iput-boolean v2, p0, Lcom/netease/mpay/oversea/thirdapi/o;->f:Z

    .line 18
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/o;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/thirdapi/h;->onCancel()V

    goto :goto_1

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->g:Landroid/app/Activity;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 29
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->g:Landroid/app/Activity;

    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    if-eqz p1, :cond_4

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v5

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    invoke-interface {p1, v5, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    .line 41
    :goto_1
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    if-ne p1, v4, :cond_b

    .line 43
    monitor-enter v0

    if-eq p2, v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 44
    :goto_2
    :try_start_1
    iput-boolean v2, p0, Lcom/netease/mpay/oversea/thirdapi/o;->f:Z

    .line 45
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    if-eqz p1, :cond_8

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 47
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 48
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/o;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_3

    .line 50
    :cond_7
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/thirdapi/h;->onCancel()V

    goto :goto_3

    .line 53
    :cond_8
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    if-eqz p1, :cond_9

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v5

    .line 55
    :cond_9
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->f:Z

    if-eqz p1, :cond_a

    .line 56
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/thirdapi/h;->onCancel()V

    goto :goto_3

    .line 58
    :cond_a
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    invoke-interface {p1, v5, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    .line 61
    :goto_3
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_b
    const/16 p2, 0x22

    if-eq p1, p2, :cond_c

    const/16 p2, 0x21

    if-ne p1, p2, :cond_d

    :cond_c
    const/4 p1, -0x4

    const-string p2, "Google Service Need Update or enable"

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/o;->a(ILjava/lang/String;)V

    :cond_d
    :goto_4
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_0

    .line 98
    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/o;->c(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->silentSignIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/o$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/o$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/o;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "signOut: start"

    .line 65
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez v0, :cond_0

    .line 68
    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/o;->c(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getLastSignedInAccount(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    .line 73
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/o$a;

    invoke-direct {v2, p0, v0, p2}, Lcom/netease/mpay/oversea/thirdapi/o$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/o;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p2

    .line 7
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/thirdapi/o;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    return-void

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    if-nez p2, :cond_1

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/o;->c(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/o;->e:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x1f

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method
