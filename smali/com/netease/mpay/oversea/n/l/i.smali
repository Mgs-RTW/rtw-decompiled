.class public Lcom/netease/mpay/oversea/n/l/i;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "PassportWebView.java"


# instance fields
.field private l:Ljava/lang/String;

.field private m:Lcom/netease/mpay/oversea/ui/u;

.field protected n:Lcom/netease/mpay/oversea/t/c/f;

.field private o:Lcom/netease/mpay/oversea/t/c/g;

.field protected p:Lcom/netease/mpay/oversea/ui/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/l/i;)Lcom/netease/mpay/oversea/ui/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/l/i;->m:Lcom/netease/mpay/oversea/ui/u;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n/l/i;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/n/l/i;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/n/l/i;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/n/l/i;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/n/l/i;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/i;->o:Lcom/netease/mpay/oversea/t/c/g;

    .line 3
    new-instance p1, Lcom/netease/mpay/oversea/ui/u;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-direct {p1, p3}, Lcom/netease/mpay/oversea/ui/u;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/i;->m:Lcom/netease/mpay/oversea/ui/u;

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/n/l/i;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/i;->l:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/z/c;->a()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/i;->m:Lcom/netease/mpay/oversea/ui/u;

    iget-object p3, p0, Lcom/netease/mpay/oversea/n/l/i;->l:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/u;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/i;->m:Lcom/netease/mpay/oversea/ui/u;

    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__web:I

    invoke-virtual {p1, p3, p2}, Lcom/netease/mpay/oversea/ui/u;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/netease/mpay/oversea/n/l/i;->m:Lcom/netease/mpay/oversea/ui/u;

    new-instance p3, Lcom/netease/mpay/oversea/n/l/i$a;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/n/l/i$a;-><init>(Lcom/netease/mpay/oversea/n/l/i;)V

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/ui/u;->a(Lcom/netease/mpay/oversea/ui/u$e;)Lcom/netease/mpay/oversea/ui/u;

    .line 73
    iget-object p2, p0, Lcom/netease/mpay/oversea/n/l/i;->m:Lcom/netease/mpay/oversea/ui/u;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/u;->k()V

    return-object p1
.end method

.method public a(Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 10

    .line 74
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/i;->o:Lcom/netease/mpay/oversea/t/c/g;

    .line 75
    iget-object v1, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/i;->o:Lcom/netease/mpay/oversea/t/c/g;

    .line 79
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/i;->o:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 83
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/t/c/f$b;

    iget-object v2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/oversea/n/i/b/d;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/oversea/n/i/b/d;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/n/l/i;->o:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v7, p1, Lcom/netease/mpay/oversea/n/i/b/d;->g:Ljava/lang/String;

    iget-object v8, p1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    iget-boolean v1, p1, Lcom/netease/mpay/oversea/n/i/b/d;->k:Z

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/netease/mpay/oversea/t/c/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/i;->n:Lcom/netease/mpay/oversea/t/c/f;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->b(Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/n/i/b/d;->l:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/n/i/b/d;->n:I

    .line 87
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->a(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    .line 88
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->c(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/n/i/b/d;->s:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget p1, p1, Lcom/netease/mpay/oversea/n/i/b/d;->q:I

    .line 90
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/c/f$b;->b(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 91
    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f$b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    .line 92
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->f(Lcom/netease/mpay/oversea/t/c/g;)V

    .line 93
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/n/l/i;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    instance-of v1, v0, Lcom/netease/mpay/oversea/n/l/c;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    check-cast v0, Lcom/netease/mpay/oversea/n/l/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/n/l/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    .line 12
    :goto_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/n/i/b/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Event:ApiStateImpl\uff1aonSuccess"

    .line 13
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/i/b/d;->e:Ljava/lang/String;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 17
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 18
    invoke-static {v0, p1, v2, v1, v2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->j:Lcom/netease/mpay/oversea/k/f;

    new-instance v1, Lcom/netease/mpay/oversea/k/i;

    invoke-direct {v1, p1}, Lcom/netease/mpay/oversea/k/i;-><init>(Lcom/netease/mpay/oversea/n/i/b/d;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/k/f;->c(Lcom/netease/mpay/oversea/k/c;)V

    :catchall_0
    :cond_3
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/app/Activity;)V

    .line 28
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/i;->p:Lcom/netease/mpay/oversea/ui/v;

    if-nez p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/n/l/i$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/n/l/i$b;-><init>(Lcom/netease/mpay/oversea/n/l/i;)V

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/v;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/v$b;)Lcom/netease/mpay/oversea/ui/v;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/i;->p:Lcom/netease/mpay/oversea/ui/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public e()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/netease/mpay/oversea/ui/z/a;->e()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/i;->p:Lcom/netease/mpay/oversea/ui/v;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/v;->b()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/i;->p:Lcom/netease/mpay/oversea/ui/v;

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/n/l/i;->b(Z)V

    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/i;->n:Lcom/netease/mpay/oversea/t/c/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/i;->n:Lcom/netease/mpay/oversea/t/c/f;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/i;->o:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 13
    :goto_0
    sget-object v3, Lcom/netease/mpay/oversea/n/h;->v:Lcom/netease/mpay/oversea/n/h;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    .line 14
    iget-object v2, v0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    .line 15
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    move-object v8, v0

    move-object v6, v1

    move-object v7, v2

    goto :goto_4

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/i;->n:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_6

    .line 19
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 20
    sget-object v3, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-eq v3, v4, :cond_5

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, v1

    move-object v7, v2

    goto :goto_3

    .line 23
    :cond_5
    :goto_2
    iget-object v2, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    move-object v6, v1

    move-object v7, v6

    move-object v8, v2

    goto :goto_4

    :cond_6
    move-object v6, v2

    move-object v7, v6

    :goto_3
    move-object v8, v7

    .line 27
    :goto_4
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    .line 28
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    goto :goto_5

    :cond_7
    const-string v0, ""

    :goto_5
    move-object v5, v0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v9, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v10, p0, Lcom/netease/mpay/oversea/n/l/i;->o:Lcom/netease/mpay/oversea/t/c/g;

    .line 30
    invoke-static/range {v3 .. v10}, Lcom/netease/mpay/oversea/n/i/a/h$c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->d:Ljava/lang/String;

    return-object v0

    :cond_a
    :goto_6
    return-object v2
.end method
