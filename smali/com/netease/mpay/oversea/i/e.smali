.class Lcom/netease/mpay/oversea/i/e;
.super Ljava/lang/Object;
.source "BoltrendStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/i/e$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/netease/mpay/oversea/i/a;

.field private c:Lcom/netease/mpay/oversea/i/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/i/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/i/e;-><init>()V

    return-void
.end method

.method public static b()Lcom/netease/mpay/oversea/i/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/i/e$b;->a()Lcom/netease/mpay/oversea/i/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/i/c;",
            ">;"
        }
    .end annotation

    const-string v0, "Boltrend_Storage Enter getHistoryAccounts..."

    .line 7
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/i/e;->b:Lcom/netease/mpay/oversea/i/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/i/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Boltrend_Storage mAccountInfoInApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/i/e;->c:Lcom/netease/mpay/oversea/i/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/i/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Boltrend_Storage mAccountInfoInSdcard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 14
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/i/f$a;

    .line 16
    new-instance v3, Lcom/netease/mpay/oversea/i/c;

    iget-object v4, v2, Lcom/netease/mpay/oversea/i/f$a;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/netease/mpay/oversea/i/f$a;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/netease/mpay/oversea/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/i/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/i/e;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/i/e;->a:Landroid/content/Context;

    .line 5
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/i/a;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/i/a;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/i/e;->b:Lcom/netease/mpay/oversea/i/a;

    .line 6
    new-instance p1, Lcom/netease/mpay/oversea/i/b;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/i/b;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/i/e;->c:Lcom/netease/mpay/oversea/i/b;

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i/e;->b:Lcom/netease/mpay/oversea/i/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/i/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/i/e;->c:Lcom/netease/mpay/oversea/i/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/i/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i/b;->c(Landroid/content/Context;)Z

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

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/i/e;->b:Lcom/netease/mpay/oversea/i/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/i/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i/a;->d(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/i/e;->c:Lcom/netease/mpay/oversea/i/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/i/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i/b;->d(Landroid/content/Context;)V

    return-void
.end method
