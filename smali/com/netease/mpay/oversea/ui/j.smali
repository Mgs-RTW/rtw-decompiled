.class public Lcom/netease/mpay/oversea/ui/j;
.super Ljava/lang/Object;
.source "GuestInheritGuidance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/j$g;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/netease/mpay/oversea/n/h;

.field private c:Lcom/netease/mpay/oversea/t/c/f;

.field private d:Ljava/lang/String;

.field private e:Lcom/netease/mpay/oversea/ui/j$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 7

    .line 18
    new-instance v6, Lcom/netease/mpay/oversea/n/k/e;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/j;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/j;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v3, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    new-instance v5, Lcom/netease/mpay/oversea/ui/j$a;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/j$a;-><init>(Lcom/netease/mpay/oversea/ui/j;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/n/k/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 43
    invoke-virtual {v6}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j;->e:Lcom/netease/mpay/oversea/ui/j$g;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/ui/j$g;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/j;->d()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/j;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/j;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/j;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/j;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/h$k;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/j;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/widget/h$k;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 72
    new-instance v0, Lcom/netease/mpay/oversea/widget/g;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/widget/g;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/j;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/j;->c:Lcom/netease/mpay/oversea/t/c/f;

    new-instance v3, Lcom/netease/mpay/oversea/ui/j$d;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/j$d;-><init>(Lcom/netease/mpay/oversea/ui/j;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/netease/mpay/oversea/widget/g;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/f;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netease/mpay/oversea/widget/h$k;)V
    .locals 8

    .line 44
    new-instance v7, Lcom/netease/mpay/oversea/n/k/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/j;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/j;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v3, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/oversea/ui/j$c;

    invoke-direct {v6, p0, p2}, Lcom/netease/mpay/oversea/ui/j$c;-><init>(Lcom/netease/mpay/oversea/ui/j;Lcom/netease/mpay/oversea/widget/h$k;)V

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/n/k/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 71
    invoke-virtual {v7}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/j;)Lcom/netease/mpay/oversea/n/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/j;->b:Lcom/netease/mpay/oversea/n/h;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j;->e:Lcom/netease/mpay/oversea/ui/j$g;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/j$g;->onCancel()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j;->e:Lcom/netease/mpay/oversea/ui/j$g;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/j$g;->a()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/ui/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/j;->e()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/widget/h$j;->a()Lcom/netease/mpay/oversea/widget/h$j;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/widget/h;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/widget/h;-><init>()V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/widget/h;->a(Lcom/netease/mpay/oversea/widget/h$j;)Lcom/netease/mpay/oversea/widget/h;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/j;->a:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/oversea/ui/j$b;

    invoke-direct {v3, p0, v0}, Lcom/netease/mpay/oversea/ui/j$b;-><init>(Lcom/netease/mpay/oversea/ui/j;Lcom/netease/mpay/oversea/widget/h$j;)V

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/widget/h;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/widget/h$l;)V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/ui/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/j;->c()V

    return-void
.end method

.method private e()V
    .locals 5

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/widget/n;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/widget/n;-><init>()V

    const-string v1, "guest_warning"

    const-string v2, "confirm"

    const-string v3, "cancel"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/widget/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/n;

    move-result-object v0

    const-string v1, "enter_confirm"

    .line 3
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/widget/n;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/n;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/j;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_switch_account_warnning:I

    .line 5
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/j$e;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/j$e;-><init>(Lcom/netease/mpay/oversea/ui/j;)V

    new-instance v4, Lcom/netease/mpay/oversea/ui/j$f;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/ui/j$f;-><init>(Lcom/netease/mpay/oversea/ui/j;)V

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/widget/n;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/ui/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/j;->b()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/ui/j;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/j;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/ui/j$g;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/j;->a:Landroid/app/Activity;

    .line 9
    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/j;->b:Lcom/netease/mpay/oversea/n/h;

    .line 10
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/j;->d:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/j;->e:Lcom/netease/mpay/oversea/ui/j$g;

    .line 12
    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/j;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz p4, :cond_1

    .line 13
    iget-object p1, p4, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/j;->a()V

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/j;->e()V

    :cond_2
    :goto_0
    return-void
.end method
