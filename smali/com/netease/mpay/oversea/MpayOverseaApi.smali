.class public Lcom/netease/mpay/oversea/MpayOverseaApi;
.super Ljava/lang/Object;
.source "MpayOverseaApi.java"


# static fields
.field public static final PAGE_BIND:Ljava/lang/String; = "bind"

.field public static final PAGE_RESTORE_ACCOUNT:Ljava/lang/String; = "restore_account"

.field public static final PAGE_SECURITY_EMAIL:Ljava/lang/String; = "security_email"

.field public static final PAGE_SWITCH_ACCOUNT:Ljava/lang/String; = "switch"

.field public static final PAGE_USER_CENTER:Ljava/lang/String; = "user_center"

.field static final synthetic d:Z


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/netease/mpay/oversea/MpayOverseaApi;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/GameConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MpayOverseaApi"

    const-string v1, "enter"

    .line 2
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-boolean v0, Lcom/netease/mpay/oversea/MpayOverseaApi;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->updateActivity(Landroid/app/Activity;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->b:Landroid/content/Context;

    .line 6
    iget-object v0, p3, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->a(Landroid/app/Activity;)V

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/m/b;->a(Landroid/app/Activity;)V

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, p3}, Lcom/netease/mpay/oversea/r/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/GameConfig;)V

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/t/f/g/f;->a()Lcom/netease/mpay/oversea/t/f/g/f;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/netease/mpay/oversea/t/f/g/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    iget-object p1, p3, Lcom/netease/mpay/oversea/GameConfig;->jfGameId:Ljava/lang/String;

    iget-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/netease/mpay/oversea/f;->a(Ljava/lang/String;Landroid/app/Activity;Landroid/content/res/Resources;)V

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/i/d;->a()Lcom/netease/mpay/oversea/i/d;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/i/d;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "cancel"

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private a(ILcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "channelLogin"

    const-string v1, "enter"

    .line 5
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_0

    const/16 p1, 0x3e8

    const-string p2, "you have already called channelLogin()."

    .line 9
    invoke-interface {p3, p1, p2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/r/f;->f(Lcom/netease/mpay/oversea/t/c/g;)V

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/trackers/b;->f()V

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginStart(Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v9

    if-ne v2, v9, :cond_1

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_channel_not_support:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3eb

    invoke-interface {p3, p2, p1, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v2, Lcom/netease/mpay/oversea/MpayOverseaApi$a;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/netease/mpay/oversea/MpayOverseaApi$a;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;ILcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/MpayLoginCallback;Lcom/netease/mpay/oversea/t/c/g;)V

    invoke-direct {v1, p2, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "LoginCallback is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 24
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    const/16 v1, 0x66

    const-string v2, "you have called openRestoreAccount()."

    .line 25
    invoke-interface {p1, v0, v2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 28
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/trackers/b;->f()V

    .line 29
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->z:Lcom/netease/mpay/oversea/n/h;

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$f;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$f;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/a;->j(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "LoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/n/h;)V
    .locals 4

    .line 31
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->d()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$i;

    invoke-direct {v3, p0, p1, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi$i;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/netease/mpay/oversea/m/b;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/m/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/MpayOverseaApi;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "openSecurityEmail"

    const-string v1, "enter"

    .line 2
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    const/16 v1, 0x66

    const-string v2, "you have called openSecurityEmail()."

    .line 5
    invoke-interface {p1, v0, v2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->y:Lcom/netease/mpay/oversea/n/h;

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$e;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$e;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/a;->k(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__no_account:I

    .line 24
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2722

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/MpayOverseaApi$d;

    invoke-direct {v2, p0, p1, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi$d;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;Lcom/netease/mpay/oversea/h/c;)V

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_1
    return-void

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "LoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/MpayOverseaApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a()V

    return-void
.end method

.method public static initLineGame(Landroid/app/Activity;)Z
    .locals 2

    const-string v0, "initLineGame"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/thirdapi/u;->c(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addTraceCallback(Lcom/netease/mpay/oversea/trackers/Monitor$Callback;)Lcom/netease/mpay/oversea/MpayOverseaApi;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/trackers/Monitor;->addTraceCallback(Lcom/netease/mpay/oversea/trackers/Monitor$Callback;)Lcom/netease/mpay/oversea/trackers/Monitor;

    return-object p0
.end method

.method public autoLogin(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "autoLogin"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    const/16 v1, 0x66

    const-string v2, "you have already called autoLogin()."

    .line 5
    invoke-interface {p1, v0, v2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->f(Lcom/netease/mpay/oversea/t/c/g;)V

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/trackers/b;->f()V

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginStart(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$x;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$x;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    invoke-direct {v2, v1, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "LoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bind(ILcom/netease/mpay/oversea/MpayBindCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "bind"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x3ed

    const-string v0, "you have already called bind()."

    .line 5
    invoke-interface {p2, p1, v0}, Lcom/netease/mpay/oversea/MpayBindCallback;->onFailure(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 p1, 0x3ee

    .line 11
    invoke-interface {p2, p1, v1}, Lcom/netease/mpay/oversea/MpayBindCallback;->onFailure(ILjava/lang/String;)V

    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/MpayOverseaApi$j;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi$j;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayBindCallback;)V

    .line 32
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/r/f;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 33
    iget-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-static {p2, v1, v2, p1, v0}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Ljava/lang/String;ILcom/netease/mpay/oversea/MpayBindCallback;)V

    goto :goto_0

    .line 35
    :cond_2
    iget-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/MpayOverseaApi$m;

    invoke-direct {v1, p0, p1, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi$m;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;ILcom/netease/mpay/oversea/MpayBindCallback;)V

    invoke-static {p2, v1}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/o$f;)V

    :goto_0
    return-void

    .line 36
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Activity is null or Activity is finishing"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "MpayBindCallback is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public channelLogin(ILcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(ILcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    return-void
.end method

.method public enableDebugMode(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableDebugMode"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->b(Z)V

    return-void
.end method

.method public enablePermissionRetry(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enablePermissionRetry"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->d(Z)V

    return-void
.end method

.method public enableRequestSdcardPermission(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableRequestSdcardPermission"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->c(Z)V

    return-void
.end method

.method public enableSaveImageData(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableSaveImageData"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->e(Z)V

    return-void
.end method

.method public generateMigrateCode(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "generateMigrateCode"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    const-string v2, "you have already called generateMigrateCode()."

    .line 5
    invoke-interface {p1, v0, v2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    .line 9
    new-instance v2, Lcom/netease/mpay/oversea/t/b;

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 10
    iget-object v3, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->m:Lcom/netease/mpay/oversea/n/h;

    new-instance v5, Lcom/netease/mpay/oversea/MpayOverseaApi$w;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$w;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    .line 40
    invoke-static {p1, v4, v0, v2}, Lcom/netease/mpay/oversea/n/i/a/h$b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Lcom/netease/mpay/oversea/a;->e(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x3ee

    const-string v2, ""

    .line 42
    invoke-interface {p1, v0, v2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    :goto_1
    return-void

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "LoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentUser()Lcom/netease/mpay/oversea/User;
    .locals 14

    const-string v0, "getCurrentUser"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/netease/mpay/oversea/t/b;

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    iget-boolean v3, v2, Lcom/netease/mpay/oversea/t/c/f;->k:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v1, Lcom/netease/mpay/oversea/User;

    iget-object v5, v2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/netease/mpay/oversea/t/c/f;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    iget-object v3, v2, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/c/g;->b()I

    move-result v8

    iget-object v9, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v10, v2, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;

    iget v11, v2, Lcom/netease/mpay/oversea/t/c/f;->n:I

    iget-object v12, v2, Lcom/netease/mpay/oversea/t/c/f;->r:Ljava/lang/String;

    iget-object v0, v2, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    .line 13
    invoke-static {v0}, Lcom/netease/mpay/oversea/t/c/g;->a(Ljava/util/ArrayList;)[I

    move-result-object v13

    move-object v4, v1

    invoke-direct/range {v4 .. v13}, Lcom/netease/mpay/oversea/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getLastLoginType()I
    .locals 3

    const-string v0, "getLastLoginType"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->b()I

    move-result v0

    return v0
.end method

.method public getLineGameAccount()Ljava/lang/String;
    .locals 2

    const-string v0, "getLineGameAccount"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/d;->a()Lcom/netease/mpay/oversea/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThirdPartyCredentials(ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getThirdPartyCredentials"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z

    move-result p1

    return p1
.end method

.method public getThirdPartyCredentialsInfo(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getThirdPartyCredentialsInfo"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initMCountTracker()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "initMCountTracker ignore"

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "initMCountTracker"

    const-string v1, "enter"

    .line 5
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->o()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->b:Landroid/content/Context;

    sget-object v4, Lcom/netease/mpay/oversea/trackers/TrackerConsts;->TRACKER_APP_KEY:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    move-object v6, v1

    iget-object v7, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    const-string v5, "oversea"

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    const-string v3, "a3.2.0"

    invoke-virtual {v1, v3, v2, v0}, Lcom/netease/mpay/oversea/trackers/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isNeedInit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isThirdPartyAuthValid(ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isThirdPartyAuthValid"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z

    move-result p1

    return p1
.end method

.method public login(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "login"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    const/16 v1, 0x66

    const-string v2, "you have already called login()."

    .line 8
    invoke-interface {p1, v0, v2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->f(Lcom/netease/mpay/oversea/t/c/g;)V

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/trackers/b;->f()V

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginStart(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$t;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$t;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    invoke-direct {v2, v1, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/a;->g(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "LoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loginNewGuest(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->j:Lcom/netease/mpay/oversea/n/h;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(ILcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    return-void
.end method

.method public loginThirdApi(ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginThirdApi"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/netease/mpay/oversea/ui/d;->b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z

    move-result p1

    return p1
.end method

.method public logout()V
    .locals 4

    const-string v0, "logout"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 4
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/l/d;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/l/d;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/MpayOverseaApi$b;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/MpayOverseaApi$b;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;)V

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$c;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/MpayOverseaApi$c;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/l/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/r/d$a;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public migrateCodeLogin(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "migrateCodeLogin"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    const/16 v1, 0x66

    const-string v2, "you have already called migrateCodeLogin()."

    .line 5
    invoke-interface {p1, v0, v2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->f(Lcom/netease/mpay/oversea/t/c/g;)V

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/trackers/b;->f()V

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->n:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceLoginStart(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$v;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$v;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    invoke-direct {v2, v1, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/a;->f(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "LoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openBindCenter(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "openBindCenter"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    const/16 v1, 0x66

    const-string v2, "you have called openBindCenter()."

    .line 5
    invoke-interface {p1, v0, v2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$h;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$h;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/a;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__bind_error_required_login:I

    .line 24
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/MpayOverseaApi$g;

    invoke-direct {v2, p0, p1, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi$g;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;Lcom/netease/mpay/oversea/h/c;)V

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_1
    return-void

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "LoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openCPT(Lcom/netease/mpay/oversea/OnCPTCallback;)V
    .locals 5

    const-string v0, "openCPT"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    const-string v1, "openLVU"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->d()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/c;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->D:Lcom/netease/mpay/oversea/n/h;

    new-instance v4, Lcom/netease/mpay/oversea/MpayOverseaApi$s;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$s;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/OnCPTCallback;)V

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/a;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 10
    sget v0, Lcom/netease/mpay/oversea/ErrorCode;->ERR_REQUIRE_LOGIN:I

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/OnCPTCallback;->onFailed(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public openCustomTab(Ljava/lang/String;Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openUserCenter"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x3e8

    const/16 v0, 0x66

    const-string v1, "you have called presentAccountSwitch()."

    .line 5
    invoke-interface {p2, p1, v1, v0}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->q:Lcom/netease/mpay/oversea/n/h;

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$p;

    invoke-direct {v3, p0, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi$p;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "LoginCallback is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openFeedback(Lcom/netease/mpay/oversea/FeedbackCallback;)V
    .locals 3

    const-string v0, "openFeedback"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    invoke-direct {v1, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;-><init>(Lcom/netease/mpay/oversea/FeedbackCallback;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1}, Lcom/netease/mpay/oversea/FeedbackCallback;->onFailure()V

    :cond_3
    :goto_1
    return-void
.end method

.method public openLVU(Lcom/netease/mpay/oversea/OnLVUCallback;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "openLVU"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->d()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    const/16 v1, 0x12c

    invoke-static {v1}, Lcom/netease/mpay/oversea/o/c;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->D:Lcom/netease/mpay/oversea/n/h;

    new-instance v4, Lcom/netease/mpay/oversea/MpayOverseaApi$r;

    invoke-direct {v4, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$r;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/OnLVUCallback;)V

    invoke-direct {v2, v3, v4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/a;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 10
    sget v0, Lcom/netease/mpay/oversea/ErrorCode;->ERR_REQUIRE_LOGIN:I

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/OnLVUCallback;->onFailed(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public openUserCenter(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "home"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openCustomTab(Ljava/lang/String;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    return-void
.end method

.method public pay(Lcom/netease/mpay/oversea/PaymentRequest;Lcom/netease/mpay/oversea/PaymentCallback;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    const-string v1, "pay"

    const-string v2, "enter"

    .line 1
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x7d3

    .line 5
    invoke-interface {v5, v0}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void

    :cond_0
    if-eqz v0, :cond_5

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/netease/mpay/oversea/PaymentRequest;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 12
    :cond_1
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, v6, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v3, v6, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 14
    invoke-virtual {v11}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, v6, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v3, v6, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v1

    .line 18
    new-instance v21, Lcom/netease/mpay/oversea/q/a;

    iget-object v8, v6, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v9, v6, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    move-object v10, v1

    iget v12, v0, Lcom/netease/mpay/oversea/PaymentRequest;->a:I

    iget-object v13, v0, Lcom/netease/mpay/oversea/PaymentRequest;->b:Ljava/lang/String;

    iget-object v14, v0, Lcom/netease/mpay/oversea/PaymentRequest;->c:Ljava/lang/String;

    iget-object v15, v0, Lcom/netease/mpay/oversea/PaymentRequest;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/netease/mpay/oversea/PaymentRequest;->e:Ljava/lang/String;

    iget v4, v0, Lcom/netease/mpay/oversea/PaymentRequest;->f:I

    iget v3, v0, Lcom/netease/mpay/oversea/PaymentRequest;->g:F

    iget-object v2, v0, Lcom/netease/mpay/oversea/PaymentRequest;->h:Lorg/json/JSONObject;

    new-instance v20, Lcom/netease/mpay/oversea/MpayOverseaApi$u;

    sget-object v16, Lcom/netease/mpay/oversea/n/h;->l:Lcom/netease/mpay/oversea/n/h;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object v2, v8

    move/from16 v18, v3

    move-object v3, v9

    move/from16 v17, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/MpayOverseaApi$u;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/PaymentCallback;)V

    move-object v0, v7

    move-object/from16 v7, v21

    move-object/from16 v16, v0

    invoke-direct/range {v7 .. v20}, Lcom/netease/mpay/oversea/q/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/f;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLorg/json/JSONObject;Lcom/netease/mpay/oversea/h/h;)V

    .line 59
    invoke-virtual/range {v21 .. v21}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v0, 0x7d4

    .line 60
    invoke-interface {v5, v0}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    const/16 v0, 0x7d1

    .line 61
    invoke-interface {v5, v0}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void

    .line 62
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "PaymentCallback is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public presentAccountSwitch(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "presentAccountSwitch"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    const/16 v1, 0x66

    const-string v2, "you have already called presentAccountSwitch()."

    .line 5
    invoke-interface {p1, v0, v2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$o;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$o;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/a;->l(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "LoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public presentUserCenterFromViewController(Ljava/lang/String;Lcom/netease/mpay/oversea/MpayLoginCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "presentUserCenterFromViewController"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "bind"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "security_email"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "restore_account"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "user_center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openCustomTab(Ljava/lang/String;Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openBindCenter(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    .line 28
    :cond_6
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->b(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    .line 31
    :cond_7
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    .line 34
    :cond_8
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->openUserCenter(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    goto :goto_1

    .line 35
    :cond_9
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->presentAccountSwitch(Lcom/netease/mpay/oversea/MpayLoginCallback;)V

    :goto_1
    return-void

    .line 36
    :cond_a
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "LoginCallback is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x350448cc -> :sswitch_4
        -0x2513ecb7 -> :sswitch_3
        -0x212e6a84 -> :sswitch_2
        -0x15f54a23 -> :sswitch_1
        0x2e243d -> :sswitch_0
    .end sparse-switch
.end method

.method public refresh(Lcom/netease/mpay/oversea/RefreshCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "refresh"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onFailure()V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/f;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/n/j/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/n/j/b;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/netease/mpay/oversea/MpayOverseaApi$y;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$y;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/RefreshCallback;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/n/j/b;->a(Lcom/netease/mpay/oversea/RefreshCallback;)V

    return-void

    .line 17
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/netease/mpay/oversea/RefreshCallback;->onFailure()V

    return-void

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Activity is null or Activity is finishing"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "LoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAcceptLinkAccount(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/m/b;->a(Z)V

    return-void
.end method

.method public setGameRegionISOCode(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Lcom/netease/mpay/oversea/GameLanguage;)V
    .locals 2

    const-string v0, "setLanguage"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->a(Lcom/netease/mpay/oversea/GameLanguage;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/e;->a(I)V

    return-void
.end method

.method public setSkinPath(Ljava/lang/String;)V
    .locals 2

    const-string v0, "setSkinPath"

    .line 1
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setSoundVolume(F)V
    .locals 2

    const-string v0, "setSoundVolume"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/d;->a(F)V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/f;->i()V

    return-void
.end method

.method public shouldAutoLogin(Lcom/netease/mpay/oversea/CheckAutoLoginCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "shouldAutoLogin"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 11
    new-instance v0, Lcom/netease/mpay/oversea/l/d;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/l/d;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/MpayOverseaApi$k;

    invoke-direct {v2, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$k;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/CheckAutoLoginCallback;)V

    new-instance v3, Lcom/netease/mpay/oversea/MpayOverseaApi$l;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$l;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/CheckAutoLoginCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/l/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/r/d$a;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    const/4 v0, 0x0

    .line 38
    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/CheckAutoLoginCallback;->shouldAutoLogin(Z)V

    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Activity is null or Activity is finishing"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "CheckAutoLoginCallback is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showAASDialog(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    const/4 p1, 0x1

    return p1
.end method

.method public showWelcomeToast(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public syncRoleInfo(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "syncRoleInfo"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/netease/mpay/oversea/RoleInfoKeys;->getRoleInfo(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    .line 11
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter syncRoleInfo \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    const-string v1, "role_id"

    .line 13
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 15
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/t/e/d;->b([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/t/e/d;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v2, Lcom/netease/mpay/oversea/n/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 20
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    const-string v1, "NONE"

    :cond_2
    :try_start_2
    sput-object v1, Lcom/netease/mpay/oversea/n/c;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 33
    invoke-virtual {v5}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 37
    :cond_3
    iget-object v1, v5, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 39
    :cond_4
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object p1

    iget-object v1, v5, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "host_name"

    .line 41
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "nickname"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/netease/mpay/oversea/t/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p2, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/t/d/a;->a(Lcom/netease/mpay/oversea/t/d/b;)V

    .line 46
    :cond_5
    new-instance p1, Lcom/netease/mpay/oversea/g/e;

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    new-instance v8, Lcom/netease/mpay/oversea/MpayOverseaApi$q;

    invoke-direct {v8, p0, v0}, Lcom/netease/mpay/oversea/MpayOverseaApi$q;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Ljava/lang/String;)V

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/netease/mpay/oversea/g/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/f;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/g/e$b;)V

    .line 73
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void

    :cond_6
    :goto_1
    const-string p1, "Enter syncRoleInfo, user has logout"

    .line 74
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    :catchall_0
    return-void

    :catch_1
    move-exception p1

    .line 75
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception p1

    .line 76
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public unBind(ILcom/netease/mpay/oversea/UnBindCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "unBind"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xbbd

    const-string v0, "you have already called unbind()."

    .line 5
    invoke-interface {p2, p1, v0}, Lcom/netease/mpay/oversea/UnBindCallback;->onFailure(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x3ee

    const/4 v0, 0x0

    .line 11
    invoke-interface {p2, p1, v0}, Lcom/netease/mpay/oversea/UnBindCallback;->onFailure(ILjava/lang/String;)V

    return-void

    .line 14
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/UnBindCallback;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/MpayOverseaApi$n;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/oversea/MpayOverseaApi$n;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi;ILcom/netease/mpay/oversea/UnBindCallback;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/o$f;)V

    :goto_0
    return-void

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Activity is null or Activity is finishing"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "UnBindCallback is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    return-void
.end method

.method public updateConfig(Lcom/netease/mpay/oversea/GameConfig;)V
    .locals 2

    const-string v0, "updateConfig"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, Lcom/netease/mpay/oversea/GameConfig;->gameId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/r/d;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/GameConfig;)V

    :cond_0
    return-void
.end method

.method public updateMinorStatus(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/f;->a(I)V

    return-void
.end method

.method public uploadEmail(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/MpayFeedbackResult;
    .locals 2

    const-string v0, "uploadEmail"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/trackers/b;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/netease/mpay/oversea/g/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/MpayFeedbackResult;

    move-result-object p1

    return-object p1
.end method
