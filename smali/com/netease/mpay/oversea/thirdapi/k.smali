.class public Lcom/netease/mpay/oversea/thirdapi/k;
.super Lcom/netease/mpay/oversea/thirdapi/d;
.source "DmmApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/d;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    const/4 v1, -0x2

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    const/4 v0, -0x3

    const-string v1, "Token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    :goto_0
    return-void
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

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    const-string v1, "dmm_token"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/h/j/a;->a(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p3}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->getErrorMsg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/k;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p3}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->getLoginToken(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/k;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->getInstance()Lcom/dmm/android/sdk/olgid/DmmOlgId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->logout()V

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 0

    .line 7
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/thirdapi/DMMLoginActivity;->login(Landroid/app/Activity;Z)V

    return-void
.end method

.method public g()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->p:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method
