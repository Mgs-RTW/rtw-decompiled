.class public Lcom/netease/mpay/oversea/s/c/a;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "SecurityEmailHome.java"


# instance fields
.field private l:Lcom/netease/mpay/oversea/s/c/e;

.field private m:Lcom/netease/mpay/oversea/t/c/f;

.field private n:Landroidx/recyclerview/widget/RecyclerView;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/z/e;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/s/c/a;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/s/c/a;Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s/c/a;->b(Lcom/netease/mpay/oversea/ui/z/e;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/s/c/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/s/c/a;Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s/c/a;->d(Lcom/netease/mpay/oversea/ui/z/e;)V

    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/s/c/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private c(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->c:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/s/c/a;Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s/c/a;->c(Lcom/netease/mpay/oversea/ui/z/e;)V

    return-void
.end method

.method private c(Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 8

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a;->m:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/s/c/a;->m:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 11
    :cond_0
    new-instance v2, Lcom/netease/mpay/oversea/ui/j;

    invoke-direct {v2}, Lcom/netease/mpay/oversea/ui/j;-><init>()V

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v6, p0, Lcom/netease/mpay/oversea/s/c/a;->m:Lcom/netease/mpay/oversea/t/c/f;

    new-instance v7, Lcom/netease/mpay/oversea/s/c/a$f;

    invoke-direct {v7, p0, p1}, Lcom/netease/mpay/oversea/s/c/a$f;-><init>(Lcom/netease/mpay/oversea/s/c/a;Lcom/netease/mpay/oversea/ui/z/e;)V

    invoke-virtual/range {v2 .. v7}, Lcom/netease/mpay/oversea/ui/j;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/ui/j$g;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s/c/a;->b(Lcom/netease/mpay/oversea/ui/z/e;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/s/c/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private d(Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 6

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->B:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/netease/mpay/oversea/ui/f;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    new-instance v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->A:Lcom/netease/mpay/oversea/n/h;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    .line 6
    invoke-virtual {v3, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    new-instance v3, Lcom/netease/mpay/oversea/ui/h;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/netease/mpay/oversea/ui/f;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s/c/a;->b(Lcom/netease/mpay/oversea/ui/z/e;)V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a;->p:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__safe_mail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/mpay/oversea/s/c/a;->o:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/s/c/a;->m:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_current:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/mpay/oversea/s/c/a;->m:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v5, v5, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/s/c/a$b;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/s/c/a$b;-><init>(Lcom/netease/mpay/oversea/s/c/a;)V

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/s/c/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/z/e$b;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/s/c/a$c;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/s/c/a$c;-><init>(Lcom/netease/mpay/oversea/s/c/a;)V

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/z/e$b;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/s/c/a$d;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/s/c/a$d;-><init>(Lcom/netease/mpay/oversea/s/c/a;)V

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/s/c/b;->c(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/z/e$b;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a;->m:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a;->o:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v3, Lcom/netease/mpay/oversea/s/c/a$e;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/s/c/a$e;-><init>(Lcom/netease/mpay/oversea/s/c/a;)V

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/s/c/b;->d(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/z/e$b;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a;->l:Lcom/netease/mpay/oversea/s/c/e;

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 3
    new-instance p3, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/mpay/oversea/s/c/a;->m:Lcom/netease/mpay/oversea/t/c/f;

    .line 4
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__security_mail_home:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/a;->p:Landroid/view/View;

    .line 5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_back:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    new-instance p2, Lcom/netease/mpay/oversea/s/c/a$a;

    invoke-direct {p2, p0, p1}, Lcom/netease/mpay/oversea/s/c/a$a;-><init>(Lcom/netease/mpay/oversea/s/c/a;Landroid/widget/ImageView;)V

    .line 12
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object p2

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/a;->p:Landroid/view/View;

    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 21
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget p3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail:I

    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-direct {p0}, Lcom/netease/mpay/oversea/s/c/a;->h()V

    .line 23
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/a;->p:Landroid/view/View;

    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__safe_mail_items:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/a;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-direct {p2, p3, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__padding_4:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 26
    iget-object p2, p0, Lcom/netease/mpay/oversea/s/c/a;->n:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/netease/mpay/oversea/ui/y/d;

    invoke-direct {p3, v1, p1, p1}, Lcom/netease/mpay/oversea/ui/y/d;-><init>(III)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 27
    new-instance p1, Lcom/netease/mpay/oversea/s/c/e;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/netease/mpay/oversea/s/c/a;->o:Ljava/util/ArrayList;

    invoke-direct {p1, p2, p3}, Lcom/netease/mpay/oversea/s/c/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/a;->l:Lcom/netease/mpay/oversea/s/c/e;

    .line 28
    iget-object p2, p0, Lcom/netease/mpay/oversea/s/c/a;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/a;->p:Landroid/view/View;

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/z/a;->a(IILandroid/content/Intent;)V

    const-string p2, "onActivityResult"

    .line 31
    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    const/16 p2, 0x1b

    if-ne p2, p1, :cond_2

    .line 33
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->c:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/h;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/h$g;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    sget-object p2, Lcom/netease/mpay/oversea/ui/h$o;->c:Lcom/netease/mpay/oversea/ui/h$o;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    if-ne p2, p3, :cond_1

    .line 36
    check-cast p1, Lcom/netease/mpay/oversea/ui/h$j;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/s/c/a;->c(Lcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 37
    :cond_1
    sget-object p1, Lcom/netease/mpay/oversea/ui/h$o;->b:Lcom/netease/mpay/oversea/ui/h$o;

    if-ne p1, p3, :cond_2

    const-string p1, "onActivityResult:Success"

    .line 38
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 40
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/a;->m:Lcom/netease/mpay/oversea/t/c/f;

    .line 42
    invoke-direct {p0}, Lcom/netease/mpay/oversea/s/c/a;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a;->m:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "backup_email_set"

    goto :goto_1

    :cond_1
    const-string v0, "backup_email_unset"

    :goto_1
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->a()V

    const/4 v0, 0x1

    return v0
.end method
