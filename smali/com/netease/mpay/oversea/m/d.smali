.class public Lcom/netease/mpay/oversea/m/d;
.super Lcom/netease/mpay/oversea/m/c;
.source "LinkGoogleGamesApi.java"


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/m/c;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/m/d;->e:Z

    .line 6
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/m/d;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method private a(Lcom/google/android/gms/games/GamesSignInClient;)V
    .locals 2

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/m/d$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/m/d$a;-><init>(Lcom/netease/mpay/oversea/m/d;Lcom/google/android/gms/games/GamesSignInClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/m/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/m/d;->d:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/m/d;)Lcom/netease/mpay/oversea/thirdapi/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/m/d;->d:Landroid/app/Activity;

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/f;->o(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/m/d;->f:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/m/d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/m/d;->e:Z

    .line 12
    :cond_0
    :goto_0
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

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    const-string v1, "auth_code"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    new-instance p2, Lcom/netease/mpay/oversea/h/l/a;

    const-string v0, "api_type"

    const-string v1, "games_v2"

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance p2, Lcom/netease/mpay/oversea/h/l/a;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/m/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alias_type"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/m/b;->a()Lcom/netease/mpay/oversea/m/e;

    move-result-object p2

    .line 25
    :try_start_0
    iget-object p2, p2, Lcom/netease/mpay/oversea/m/e;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p2, 0x0

    .line 29
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    const-string v1, "user_id"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/m/d$b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/m/d$b;-><init>(Lcom/netease/mpay/oversea/m/d;Lcom/google/android/gms/games/GamesSignInClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/netease/mpay/oversea/m/a<",
            "Lcom/netease/mpay/oversea/m/e;",
            ">;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/netease/mpay/oversea/m/d$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/mpay/oversea/m/d$c;-><init>(Lcom/netease/mpay/oversea/m/d;Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V

    invoke-virtual {p0, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/m/d;->a(Lcom/google/android/gms/games/GamesSignInClient;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->L:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/m/d;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/m/d;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "PGS"

    return-object v0
.end method
