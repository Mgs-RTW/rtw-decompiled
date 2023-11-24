.class public abstract Lcom/netease/mpay/oversea/h/i;
.super Ljava/lang/Object;
.source "ServerApiTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/h/i$c;,
        Lcom/netease/mpay/oversea/h/i$d;,
        Lcom/netease/mpay/oversea/h/i$f;,
        Lcom/netease/mpay/oversea/h/i$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Landroid/app/Activity;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/netease/mpay/oversea/h/h;

.field protected f:Lcom/netease/mpay/oversea/h/f;

.field protected g:Z

.field protected h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/netease/mpay/oversea/h/i$f;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/h/h<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/h/i;->e:Lcom/netease/mpay/oversea/h/h;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i;->f:Lcom/netease/mpay/oversea/h/f;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/h/i;->g:Z

    .line 7
    iput-object p3, p0, Lcom/netease/mpay/oversea/h/i;->i:Ljava/lang/String;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/h/i;->h:Z

    .line 9
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/h/i;->c()V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/h/i$f;)V
    .locals 1

    const-string v0, "reset: logout:device"

    .line 60
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 61
    iget-object v0, p1, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b;->e()V

    .line 62
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->k()V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/h/i$e;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/netease/mpay/oversea/h/i$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/h/i;->b(Lcom/netease/mpay/oversea/h/i$f;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/h/i;->c(Lcom/netease/mpay/oversea/h/i$f;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/i$f;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/h/i$f;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->d()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reset: logout:LOGOUT_USER"

    .line 8
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 9
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->k()V

    :cond_0
    return-void
.end method

.method private c(Lcom/netease/mpay/oversea/h/i$f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->d()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/t/f/d;->a(Lcom/netease/mpay/oversea/t/c/f;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/h/i$f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/h/i$f;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/c;->b:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/r/c;->a:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    iget-object v2, v2, Lcom/netease/mpay/oversea/h/i$f;->b:Ljava/util/ArrayList;

    new-instance v3, Lcom/netease/mpay/oversea/h/l/a;

    const-string v4, "iso_code"

    invoke-direct {v3, v4, v0}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/h/i$f;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/netease/mpay/oversea/h/l/a;

    const-string v3, "birthday"

    invoke-direct {v2, v3, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/oversea/h/c;)Lcom/netease/mpay/oversea/h/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/h/i;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method protected a(Lcom/netease/mpay/oversea/h/f;)Lcom/netease/mpay/oversea/h/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i;->f:Lcom/netease/mpay/oversea/h/f;

    return-object p0
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/h/i;->b(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->f:Lcom/netease/mpay/oversea/h/f;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/i$f;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/h/e<",
            "TData;>;",
            "Lcom/netease/mpay/oversea/h/h<",
            "TData;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/netease/mpay/oversea/h/e;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/e;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/netease/mpay/oversea/h/h;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/oversea/h/e;->d:Lcom/netease/mpay/oversea/h/c;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/c;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/h/i;->h:Z

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    const/16 v2, 0x12c

    invoke-static {v2}, Lcom/netease/mpay/oversea/o/c;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->C:Lcom/netease/mpay/oversea/n/h;

    new-instance v5, Lcom/netease/mpay/oversea/h/i$a;

    invoke-direct {v5, p0, p2, p1}, Lcom/netease/mpay/oversea/h/i$a;-><init>(Lcom/netease/mpay/oversea/h/i;Lcom/netease/mpay/oversea/h/h;Lcom/netease/mpay/oversea/h/e;)V

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/h/i$f;->f:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    invoke-virtual {v3, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    .line 24
    invoke-static {v1, v2, p1}, Lcom/netease/mpay/oversea/a;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 41
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/c;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/h/i;->c(I)V

    goto :goto_2

    .line 43
    :cond_4
    iget v0, p1, Lcom/netease/mpay/oversea/h/e;->c:I

    iget-object v1, p1, Lcom/netease/mpay/oversea/h/e;->d:Lcom/netease/mpay/oversea/h/c;

    invoke-virtual {p0, v0, v1, p2}, Lcom/netease/mpay/oversea/h/i;->a(ILcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/h;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 44
    iget v0, p1, Lcom/netease/mpay/oversea/h/e;->c:I

    iget-object p1, p1, Lcom/netease/mpay/oversea/h/e;->d:Lcom/netease/mpay/oversea/h/c;

    invoke-interface {p2, v0, p1}, Lcom/netease/mpay/oversea/h/h;->a(ILcom/netease/mpay/oversea/h/c;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected a(ILcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netease/mpay/oversea/h/c;",
            "Lcom/netease/mpay/oversea/h/h<",
            "TData;>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected b(I)Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 12
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/h/i;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/h/i$d;

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/oversea/h/i$d;-><init>(Lcom/netease/mpay/oversea/h/i;Lcom/netease/mpay/oversea/h/i$a;)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/h/d;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/h/i$c;

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/oversea/h/i$c;-><init>(Lcom/netease/mpay/oversea/h/i;Lcom/netease/mpay/oversea/h/i$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/h/d;->b([Ljava/lang/Object;)Lcom/netease/mpay/oversea/h/d;

    :goto_0
    return-void
.end method

.method protected c()V
    .locals 4

    .line 5
    const-class v0, Lcom/netease/mpay/oversea/h/g;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    const/4 v2, 0x4

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 23
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_network_err_no_perr_certificate:I

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_network_err_no_perr_certificate_date_error:I

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 35
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 39
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->j:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_fetch_config_network_error:I

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected c(I)V
    .locals 0

    return-void
.end method

.method protected abstract d(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/h/i$f;",
            ")TData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected declared-synchronized e()Lcom/netease/mpay/oversea/h/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netease/mpay/oversea/h/e<",
            "TData;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/h/i;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/h/i;->d(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/h/e;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/h/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/h/e;->a(Ljava/lang/Object;)Lcom/netease/mpay/oversea/h/e;

    move-result-object v0
    :try_end_1
    .catch Lcom/netease/mpay/oversea/h/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/b;->a()Lcom/netease/mpay/oversea/h/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/c;)Lcom/netease/mpay/oversea/h/c;

    move-result-object v1

    .line 7
    instance-of v2, v0, Lcom/netease/mpay/oversea/n/e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget v5, v0, Lcom/netease/mpay/oversea/h/b;->a:I

    .line 8
    invoke-static {v5}, Lcom/netease/mpay/oversea/n/e;->h(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 9
    iget v2, v0, Lcom/netease/mpay/oversea/h/b;->a:I

    .line 10
    invoke-static {v2}, Lcom/netease/mpay/oversea/n/e;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 11
    :goto_1
    iget-boolean v6, p0, Lcom/netease/mpay/oversea/h/i;->a:Z

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 12
    :goto_2
    iget-boolean v7, p0, Lcom/netease/mpay/oversea/h/i;->b:Z

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v5, :cond_4

    .line 13
    iget-object v8, v1, Lcom/netease/mpay/oversea/h/c;->g:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_5

    .line 15
    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    sget-object v3, Lcom/netease/mpay/oversea/h/i$e;->d:Lcom/netease/mpay/oversea/h/i$e;

    invoke-direct {p0, v2, v3}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/h/i$e;)V

    goto :goto_6

    :cond_5
    if-nez v6, :cond_9

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    .line 19
    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    sget-object v3, Lcom/netease/mpay/oversea/h/i$e;->a:Lcom/netease/mpay/oversea/h/i$e;

    invoke-direct {p0, v2, v3}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/h/i$e;)V

    goto :goto_6

    :cond_7
    if-eqz v2, :cond_8

    .line 21
    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    sget-object v3, Lcom/netease/mpay/oversea/h/i$e;->c:Lcom/netease/mpay/oversea/h/i$e;

    invoke-direct {p0, v2, v3}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/h/i$e;)V

    goto :goto_6

    .line 22
    :cond_8
    iget v2, v0, Lcom/netease/mpay/oversea/h/b;->a:I

    invoke-static {v2}, Lcom/netease/mpay/oversea/n/e;->c(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 23
    new-instance v2, Lcom/netease/mpay/oversea/t/b;

    iget-object v3, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 25
    iput-boolean v4, v2, Lcom/netease/mpay/oversea/t/c/f;->j:Z

    .line 26
    new-instance v3, Lcom/netease/mpay/oversea/t/b;

    iget-object v4, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    goto :goto_6

    :cond_9
    :goto_5
    const/16 v2, 0x2711

    .line 27
    iput v2, v1, Lcom/netease/mpay/oversea/h/c;->a:I

    .line 39
    :cond_a
    :goto_6
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/c;->f()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 40
    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/netease/mpay/oversea/h/m/c$a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 41
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/r/d;->b(Landroid/content/Context;)V

    .line 44
    :cond_b
    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->k:Lcom/netease/mpay/oversea/h/i$f;

    invoke-virtual {p0, v1, v2}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/i$f;)V

    .line 45
    new-instance v2, Lcom/netease/mpay/oversea/h/e;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/h/e;-><init>()V

    iget v0, v0, Lcom/netease/mpay/oversea/h/b;->a:I

    invoke-virtual {v2, v0, v1}, Lcom/netease/mpay/oversea/h/e;->a(ILcom/netease/mpay/oversea/h/c;)Lcom/netease/mpay/oversea/h/e;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h/i;->b:Z

    return-void
.end method

.method protected g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h/i;->a:Z

    return-void
.end method

.method protected h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/h/i;->g:Z

    return-void
.end method

.method protected i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->f:Lcom/netease/mpay/oversea/h/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->f:Lcom/netease/mpay/oversea/h/f;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/h/f;->a()V

    :cond_0
    return-void
.end method
