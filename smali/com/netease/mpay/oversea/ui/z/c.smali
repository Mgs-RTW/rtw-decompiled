.class public Lcom/netease/mpay/oversea/ui/z/c;
.super Ljava/lang/Object;
.source "ContentsManager.java"


# instance fields
.field private a:Landroidx/fragment/app/Fragment;

.field private b:Landroid/app/Activity;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/ui/z/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/netease/mpay/oversea/ui/z/e;

.field private e:Lcom/netease/mpay/oversea/ui/z/e;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/netease/mpay/oversea/ui/m;

.field private final j:Lcom/netease/mpay/oversea/p/a;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/app/Activity;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iput p3, p0, Lcom/netease/mpay/oversea/ui/z/c;->f:I

    .line 7
    iput p4, p0, Lcom/netease/mpay/oversea/ui/z/c;->g:I

    .line 8
    iput p5, p0, Lcom/netease/mpay/oversea/ui/z/c;->h:I

    .line 9
    new-instance p1, Lcom/netease/mpay/oversea/p/a;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/p/a;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->j:Lcom/netease/mpay/oversea/p/a;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 7

    .line 3
    new-instance v6, Lcom/netease/mpay/oversea/ui/z/c;

    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc_content:I

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/z/c;-><init>(Landroid/app/Activity;IIII)V

    return-object v6
.end method

.method private declared-synchronized a(Lcom/netease/mpay/oversea/ui/z/e;Lcom/netease/mpay/oversea/p/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/ui/z/e;",
            "Lcom/netease/mpay/oversea/p/b<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_a

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->d:Lcom/netease/mpay/oversea/ui/z/e;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->b(Landroid/app/Activity;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez p2, :cond_2

    .line 9
    new-instance p2, Lcom/netease/mpay/oversea/p/b;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p2, v1, v2, v3}, Lcom/netease/mpay/oversea/p/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->j:Lcom/netease/mpay/oversea/p/a;

    iget-object v2, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/netease/mpay/oversea/p/a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/p/b;)Lcom/netease/mpay/oversea/p/b;

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/netease/mpay/oversea/ui/z/b$a;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/z/b$a;-><init>()V

    .line 14
    invoke-virtual {v1, p0}, Lcom/netease/mpay/oversea/ui/z/b$a;->a(Lcom/netease/mpay/oversea/ui/z/c;)Lcom/netease/mpay/oversea/ui/z/b$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1, p2}, Lcom/netease/mpay/oversea/ui/z/b$a;->a(Lcom/netease/mpay/oversea/p/b;)Lcom/netease/mpay/oversea/ui/z/b$a;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/ui/z/b$a;->a(Lcom/netease/mpay/oversea/ui/z/e;)Lcom/netease/mpay/oversea/ui/z/b$a;

    move-result-object p2

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 17
    invoke-virtual {p2, v1}, Lcom/netease/mpay/oversea/ui/z/b$a;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/netease/mpay/oversea/ui/z/b;

    move-result-object p2

    .line 18
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->a:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_3

    if-eq v1, p2, :cond_3

    .line 19
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 20
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 22
    :cond_3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 24
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/z/b;->b()V

    goto :goto_1

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/z/e;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->l:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_5
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->k:Landroid/view/View;

    if-eqz v1, :cond_6

    const/4 v2, 0x4

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    :cond_6
    iget v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->h:I

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 35
    :cond_7
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->l:Landroid/view/View;

    if-eqz v1, :cond_8

    const/16 v3, 0x8

    .line 36
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_8
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->k:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :cond_9
    iget v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->f:I

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 45
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/z/c;->a:Landroidx/fragment/app/Fragment;

    .line 47
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->d:Lcom/netease/mpay/oversea/ui/z/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_a
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public static b(Landroid/app/Activity;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 7

    .line 1
    new-instance v6, Lcom/netease/mpay/oversea/ui/z/c;

    sget v5, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_login_content:I

    const/4 v2, 0x1

    const/4 v4, -0x1

    move-object v0, v6

    move-object v1, p0

    move v3, v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/z/c;-><init>(Landroid/app/Activity;IIII)V

    return-object v6
.end method

.method public static c(Landroid/app/Activity;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 7

    .line 1
    new-instance v6, Lcom/netease/mpay/oversea/ui/z/c;

    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc_content:I

    sget v4, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc_navigation:I

    sget v5, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__login:I

    const/4 v2, 0x2

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/z/c;-><init>(Landroid/app/Activity;IIII)V

    return-object v6
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 22
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_1
    new-instance v0, Lcom/netease/mpay/oversea/b;

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->d:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/z/e;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->j:Lcom/netease/mpay/oversea/p/a;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/p/a;->c()Lcom/netease/mpay/oversea/p/b;

    .line 65
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->j:Lcom/netease/mpay/oversea/p/a;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/p/a;->b()Lcom/netease/mpay/oversea/p/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/ui/z/c;->a(Lcom/netease/mpay/oversea/ui/z/e;Lcom/netease/mpay/oversea/p/b;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->k:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/z/c;->l:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/u/a/e;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/u/a/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/ui/z/d;

    .line 67
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/oversea/ui/z/e;

    invoke-static {v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5, v1, p2}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/u/a/e;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/ui/m;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->i:Lcom/netease/mpay/oversea/ui/m;

    return-void
.end method

.method public declared-synchronized a(Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->b(Landroid/app/Activity;)V

    .line 49
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/c;->a:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->a:Landroidx/fragment/app/Fragment;

    .line 56
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->d:Lcom/netease/mpay/oversea/ui/z/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/z/e;

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    const-string v0, "home"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/z/e;

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/netease/mpay/oversea/ui/z/e;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->d:Lcom/netease/mpay/oversea/ui/z/e;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/z/e;

    return-object p1
.end method

.method public b(Lcom/netease/mpay/oversea/ui/z/e;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/z/e;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/z/e;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/z/c;->c(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Lcom/netease/mpay/oversea/ui/z/e;Lcom/netease/mpay/oversea/p/b;)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->a:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public declared-synchronized c(Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->e:Lcom/netease/mpay/oversea/ui/z/e;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->b(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/ui/z/b$a;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/ui/z/b$a;-><init>()V

    .line 8
    invoke-virtual {v1, p0}, Lcom/netease/mpay/oversea/ui/z/b$a;->a(Lcom/netease/mpay/oversea/ui/z/c;)Lcom/netease/mpay/oversea/ui/z/b$a;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/netease/mpay/oversea/ui/z/b$a;->a(Lcom/netease/mpay/oversea/ui/z/e;)Lcom/netease/mpay/oversea/ui/z/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 10
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/ui/z/b$a;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/netease/mpay/oversea/ui/z/b;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 13
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/z/b;->b()V

    goto :goto_0

    .line 15
    :cond_2
    iget v2, p0, Lcom/netease/mpay/oversea/ui/z/c;->g:I

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/c;->e:Lcom/netease/mpay/oversea/ui/z/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/ui/z/e;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public d(Lcom/netease/mpay/oversea/ui/z/e;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/z/c;->c(Lcom/netease/mpay/oversea/ui/z/e;)V

    const/4 p1, 0x1

    return p1
.end method

.method public e()Lcom/netease/mpay/oversea/ui/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->i:Lcom/netease/mpay/oversea/ui/m;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->j:Lcom/netease/mpay/oversea/p/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/p/a;->a()Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->a:Landroidx/fragment/app/Fragment;

    .line 3
    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/z/c;->b:Landroid/app/Activity;

    return-void
.end method
