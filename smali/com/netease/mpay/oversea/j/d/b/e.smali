.class public Lcom/netease/mpay/oversea/j/d/b/e;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "EmailVerifyCode.java"


# instance fields
.field private l:Landroid/os/CountDownTimer;

.field private m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/netease/mpay/oversea/j/d/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/j/d/b/e;->i()V

    return-void
.end method

.method static synthetic B(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic C(Lcom/netease/mpay/oversea/j/d/b/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic D(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic E(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic F(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/b/e;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/j/d/b/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/b/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/j/d/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/j/d/b/e;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/j/d/b/e;->a(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_1

    .line 102
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object p4, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p4, v0}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p4

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 105
    new-instance p4, Lcom/netease/mpay/oversea/j/c/c;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v6, Lcom/netease/mpay/oversea/j/d/b/e$j;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/j/d/b/e$j;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;)V

    move-object v1, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/j/c/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/h;)V

    iget-object p2, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    .line 121
    invoke-virtual {p4, p2, p1}, Lcom/netease/mpay/oversea/j/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/j/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 125
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    iget-object p4, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p1, p4}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 126
    new-instance p1, Lcom/netease/mpay/oversea/j/c/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object p4, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, p4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v5, Lcom/netease/mpay/oversea/j/d/b/e$k;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/j/d/b/e$k;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;)V

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/j/c/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/h;)V

    .line 142
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j/c/c;->k()Lcom/netease/mpay/oversea/j/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 145
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    check-cast p1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j/a;->k()Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v6, Lcom/netease/mpay/oversea/j/c/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v5, Lcom/netease/mpay/oversea/j/d/b/e$l;

    invoke-direct {v5, p0, p4, p2, p1}, Lcom/netease/mpay/oversea/j/d/b/e$l;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/j/c/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/h;)V

    .line 164
    invoke-virtual {v6, p1}, Lcom/netease/mpay/oversea/j/c/c;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/j/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    const-string v1, "email"

    invoke-direct {v0, v1, p1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v0, "password"

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v8, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v9, p0, Lcom/netease/mpay/oversea/ui/z/a;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->B:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v4, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    sget-object v6, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v2, v4

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v3

    new-instance v5, Lcom/netease/mpay/oversea/j/d/b/e$d;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/j/d/b/e$d;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;)V

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, v8

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 35
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 9

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_1

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 6
    new-instance v1, Lcom/netease/mpay/oversea/j/c/a;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v6, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v8, Lcom/netease/mpay/oversea/j/d/b/e$m;

    invoke-direct {v8, p0}, Lcom/netease/mpay/oversea/j/d/b/e$m;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;)V

    const/4 v7, 0x1

    move-object v3, v1

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/netease/mpay/oversea/j/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;ZLcom/netease/mpay/oversea/h/h;)V

    iget-object p1, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, p1, v0}, Lcom/netease/mpay/oversea/j/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/j/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    const-string v1, "hydra_email_password_reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 21
    new-instance v0, Lcom/netease/mpay/oversea/j/c/a;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v7, Lcom/netease/mpay/oversea/j/d/b/e$a;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/j/d/b/e$a;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;)V

    const/4 v6, 0x1

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/j/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;ZLcom/netease/mpay/oversea/h/h;)V

    .line 33
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/c/a;->l()Lcom/netease/mpay/oversea/j/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 36
    new-instance v0, Lcom/netease/mpay/oversea/j/c/a;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v7, Lcom/netease/mpay/oversea/j/d/b/e$b;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/j/d/b/e$b;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;)V

    const/4 v6, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/j/c/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;ZLcom/netease/mpay/oversea/h/h;)V

    .line 48
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/c/a;->k()Lcom/netease/mpay/oversea/j/c/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/j/d/b/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/j/d/b/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method private h()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/e;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/j/d/b/e$c;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/j/d/b/e$c;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;JJ)V

    .line 20
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/e;->l:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/e;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/ui/z/e;->h:Z

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/j/d/b/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/j/d/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/j/d/b/e;->h()V

    return-void
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/j/d/b/e;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/j/d/b/e;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/j/d/b/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/j/d/b/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/j/d/b/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/j/d/b/e;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic w(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic x(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic y(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    return-object p0
.end method

.method static synthetic z(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EmailVerifyCode:[scene]="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",parent:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 6
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p3}, Lcom/netease/mpay/oversea/n/h;->c(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v5

    .line 7
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    const-string v0, "hydra_email_password_reset"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 8
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    const-string v0, "hydra_email_register"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 9
    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__uc_hydra_email_verify:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 11
    new-instance v0, Lcom/netease/mpay/oversea/j/d/b/e$e;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/j/d/b/e$e;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/e;->h()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->c(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->w:Lcom/netease/mpay/oversea/n/h;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v4, :cond_1

    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__verify_email_title:I

    invoke-static {v0, v4}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_account:I

    invoke-static {v0, v4}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_2
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_verify_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_3

    move-object p3, v4

    goto :goto_3

    .line 41
    :cond_3
    invoke-static {v4}, Lcom/netease/mpay/oversea/h/m/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 44
    :goto_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v6, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_send_code_tips:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object p3, v8, v1

    invoke-static {v0, v6, v8}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v6, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__usercenter_security_email_highlight:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    :try_start_0
    new-array v8, v7, [I

    aput v6, v8, v1

    new-array v6, v7, [Ljava/lang/String;

    aput-object p3, v6, v1

    .line 47
    invoke-static {v0, v8, v6}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;[I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p3

    .line 48
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p3

    .line 50
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_4
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__hydra_email_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 54
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->h:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 56
    new-instance v0, Lcom/netease/mpay/oversea/j/d/b/e$f;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/j/d/b/e$f;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    new-instance v0, Lcom/netease/mpay/oversea/j/d/b/e$g;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/j/d/b/e$g;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__code_retry:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/mpay/oversea/j/d/b/e;->m:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    iget-object p3, p0, Lcom/netease/mpay/oversea/j/d/b/e;->m:Landroid/widget/TextView;

    new-instance v0, Lcom/netease/mpay/oversea/j/d/b/e$h;

    invoke-direct {v0, p0, v4}, Lcom/netease/mpay/oversea/j/d/b/e$h;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/netease/mpay/oversea/j/d/b/e;->h()V

    .line 92
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    if-eqz v5, :cond_4

    .line 94
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_verify_bind:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_4
    if-eqz v3, :cond_5

    .line 96
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__verify_email:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_verify_login:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_5
    new-instance v6, Lcom/netease/mpay/oversea/j/d/b/e$i;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/j/d/b/e$i;-><init>(Lcom/netease/mpay/oversea/j/d/b/e;Landroid/widget/EditText;ZLjava/lang/String;Z)V

    invoke-virtual {p3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->a()V

    const/4 v0, 0x1

    return v0
.end method
