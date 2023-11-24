.class public Lcom/netease/mpay/oversea/u/c/f;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/u/c/f$d;,
        Lcom/netease/mpay/oversea/u/c/f$c;
    }
.end annotation


# instance fields
.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/z/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Landroidx/recyclerview/widget/RecyclerView;

.field private o:Lcom/netease/mpay/oversea/u/c/f$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/u/c/f;)Lcom/netease/mpay/oversea/k/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->j:Lcom/netease/mpay/oversea/k/f;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/u/c/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/f;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/netease/mpay/oversea/k/l;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/f;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/l;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 37
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/l;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/l;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/u/c/f;->m:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/l;->e()Lcom/netease/mpay/oversea/u/a/e;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/a/e;->a:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "loading"

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/k/l;->c()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/ui/z/e;

    if-nez v2, :cond_4

    goto :goto_1

    .line 45
    :cond_4
    new-instance v3, Lcom/netease/mpay/oversea/u/c/f$b;

    invoke-direct {v3, p0, v2, v1}, Lcom/netease/mpay/oversea/u/c/f$b;-><init>(Lcom/netease/mpay/oversea/u/c/f;Lcom/netease/mpay/oversea/ui/z/e;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/netease/mpay/oversea/ui/z/e;->j:Lcom/netease/mpay/oversea/ui/z/e$c;

    .line 62
    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/f;->m:Ljava/lang/String;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 63
    iput-boolean v1, v2, Lcom/netease/mpay/oversea/ui/z/e;->i:Z

    .line 65
    :cond_5
    iget-boolean v1, v2, Lcom/netease/mpay/oversea/ui/z/e;->e:Z

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/f;->o:Lcom/netease/mpay/oversea/u/c/f$c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/u/c/f;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/u/c/f;)Lcom/netease/mpay/oversea/k/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->j:Lcom/netease/mpay/oversea/k/f;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/u/c/f;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/u/c/f;->n:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 4
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__uc_navigation_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 7
    new-instance p3, Lcom/netease/mpay/oversea/u/c/f$a;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/u/c/f$a;-><init>(Lcom/netease/mpay/oversea/u/c/f;)V

    .line 14
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object p3

    .line 15
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__uc_navigation_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/f;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 25
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 27
    iget-object p3, p0, Lcom/netease/mpay/oversea/u/c/f;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/f;->l:Ljava/util/ArrayList;

    .line 29
    new-instance p3, Lcom/netease/mpay/oversea/u/c/f$c;

    invoke-direct {p3, p2}, Lcom/netease/mpay/oversea/u/c/f$c;-><init>(Ljava/util/ArrayList;)V

    iput-object p3, p0, Lcom/netease/mpay/oversea/u/c/f;->o:Lcom/netease/mpay/oversea/u/c/f$c;

    .line 30
    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/f;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public a(Lcom/netease/mpay/oversea/k/j;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 1

    .line 31
    instance-of v0, p2, Lcom/netease/mpay/oversea/k/l;

    if-eqz v0, :cond_0

    .line 32
    check-cast p2, Lcom/netease/mpay/oversea/k/l;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/u/c/f;->a(Lcom/netease/mpay/oversea/k/l;)V

    const/4 p1, 0x1

    return p1

    .line 35
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/k/j;Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/k/c;)Z
    .locals 0

    .line 3
    check-cast p1, Lcom/netease/mpay/oversea/k/j;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/u/c/f;->a(Lcom/netease/mpay/oversea/k/j;Lcom/netease/mpay/oversea/k/c;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
