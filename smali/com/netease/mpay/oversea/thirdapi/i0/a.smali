.class public Lcom/netease/mpay/oversea/thirdapi/i0/a;
.super Lcom/netease/mpay/oversea/h/j/a;
.source "BrowserActivityProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/i0/a$b;
    }
.end annotation


# static fields
.field static h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/thirdapi/i0/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Landroid/app/Activity;

.field b:Z

.field c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

.field private g:Lcom/netease/mpay/oversea/t/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/h/j/a;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->b:Z

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c:Z

    .line 23
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/i0/c;->a:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/netease/mpay/oversea/thirdapi/i0/a;
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/i0/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e:Ljava/lang/String;

    return-object p1
.end method

.method protected static a(Landroid/app/Activity;Ljava/lang/Class;Landroid/content/Intent;I)V
    .locals 1

    .line 7
    const-class v0, Lcom/netease/mpay/oversea/MpayActivityStub;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "class_name"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/thirdapi/i0/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->c:Lcom/netease/mpay/oversea/thirdapi/i0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_2
    new-instance v0, Lcom/netease/mpay/oversea/b;

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->d:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :try_start_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 16
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->d:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 18
    :catch_0
    :try_start_4
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->e:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_error_no_browser:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/thirdapi/i0/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/i0/c;->e:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e:Ljava/lang/String;

    const-string v2, "login_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "msg"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/thirdapi/i0/b;

    .line 20
    invoke-interface {v1, p1}, Lcom/netease/mpay/oversea/thirdapi/i0/b;->a(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 28
    :catch_0
    :try_start_3
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/a;->h:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :cond_2
    :try_start_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 28
    monitor-exit p0

    return-void

    .line 30
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 31
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "game_id"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->d:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "code"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e:Ljava/lang/String;

    const-string v1, "status"

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 25
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->a:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    .line 45
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    goto :goto_0

    .line 26
    :cond_1
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->e:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    goto :goto_0

    .line 27
    :cond_2
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->d:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    goto :goto_0

    .line 28
    :cond_3
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->c:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    goto :goto_0

    .line 29
    :cond_4
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->b:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    goto :goto_0

    .line 30
    :cond_5
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->a:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->d:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->a:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    :goto_0
    return-void
.end method

.method private declared-synchronized e()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/i0/c;->e:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e:Ljava/lang/String;

    const-string v2, "login_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/thirdapi/i0/b;

    .line 12
    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/netease/mpay/oversea/thirdapi/i0/b;->b(Ljava/lang/String;)V

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 20
    :catch_0
    :try_start_3
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    monitor-exit p0

    return-void

    .line 22
    :goto_1
    :try_start_5
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 23
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->b:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->b:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->k()V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->d:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e()V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->a:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->e:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    if-ne v0, v1, :cond_4

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->d:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/i0/c;->a:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/i0/c;->c:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/n/k/d;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->g:Lcom/netease/mpay/oversea/t/c/g;

    new-instance v4, Lcom/netease/mpay/oversea/thirdapi/i0/a$a;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/thirdapi/i0/a$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/i0/a;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/n/k/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/h/h;)V

    .line 19
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__loading_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 15
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, -0x1

    const-string v3, "type"

    .line 18
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v2, v1, :cond_3

    const-string v1, "game_id"

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->d:Ljava/lang/String;

    .line 22
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v2

    const-string v3, "login_type"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 23
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->g:Lcom/netease/mpay/oversea/t/c/g;

    .line 24
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->g:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/i0/c;->b:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c(Ljava/lang/String;)V

    return-void

    .line 34
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e()V

    goto :goto_1

    .line 37
    :cond_4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->d(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 39
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->b:Z

    .line 40
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f()V

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->j()V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->a:Landroid/app/Activity;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c:Z

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->d:Ljava/lang/String;

    const-string v1, "game_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->e:Ljava/lang/String;

    const-string v1, "code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f:Lcom/netease/mpay/oversea/thirdapi/i0/c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/i0/a;->c:Z

    .line 52
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i0/a;->f()V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method
