.class public Lcom/netease/mpay/oversea/i/d;
.super Ljava/lang/Object;
.source "BoltrendManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/i/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/i/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/i/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/i/d;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/i/d;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static a()Lcom/netease/mpay/oversea/i/d;
    .locals 1

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/i/d$b;->a()Lcom/netease/mpay/oversea/i/d;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 5

    const-string v0, "Boltrend_Manager Enter transferBoltrend..."

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Boltrend_Manager BCSession DISABLED, ignored."

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/i/d;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/i/f;->a(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "Boltrend_Manager Not from boltrend, ignored."

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/i/e;->b()Lcom/netease/mpay/oversea/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Boltrend_Manager Boltrend already transferred."

    .line 10
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/i/e;->b()Lcom/netease/mpay/oversea/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i/e;->a()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Boltrend_Manager Boltrend accounts empty."

    .line 15
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    .line 19
    new-instance v2, Lcom/netease/mpay/oversea/n/k/a;

    iget-object v3, p0, Lcom/netease/mpay/oversea/i/d;->a:Landroid/app/Activity;

    new-instance v4, Lcom/netease/mpay/oversea/i/d$a;

    invoke-direct {v4, p0, v1}, Lcom/netease/mpay/oversea/i/d$a;-><init>(Lcom/netease/mpay/oversea/i/d;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/netease/mpay/oversea/n/k/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/netease/mpay/oversea/h/h;)V

    .line 34
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "Boltrend_Manager Enter init..."

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/i/d;->a:Landroid/app/Activity;

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/i/e;->b()Lcom/netease/mpay/oversea/i/e;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/i/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/i/d;->c()V

    return-void
.end method
