.class public Lcom/netease/mpay/oversea/thirdapi/g0;
.super Lcom/netease/mpay/oversea/thirdapi/d;
.source "WeChatApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/g0$c;,
        Lcom/netease/mpay/oversea/thirdapi/g0$d;,
        Lcom/netease/mpay/oversea/thirdapi/g0$e;
    }
.end annotation


# instance fields
.field d:Z

.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/g0;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/g0;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/thirdapi/g0;->e:Landroid/app/Activity;

    return-object p0
.end method

.method private declared-synchronized c(Landroid/app/Activity;)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/g0$d;->b()Lcom/netease/mpay/oversea/thirdapi/g0$d;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/f;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/g0$b;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/thirdapi/g0$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/g0;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/g0$d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/thirdapi/g0$e;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
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

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 10
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    const-string v1, "code"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    new-instance p2, Lcom/netease/mpay/oversea/h/l/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->l:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account_type"

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/g0;->e:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/g0;->e:Landroid/app/Activity;

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/g0;->c(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/g0;->d:Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wechat:onWindowFocusChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/g0;->d:Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/g0$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/thirdapi/g0$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/g0;)V

    invoke-static {p1}, Lcom/netease/mpay/oversea/h/d;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/f;->s(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public g()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->l:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method
