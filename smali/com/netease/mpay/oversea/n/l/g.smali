.class public Lcom/netease/mpay/oversea/n/l/g;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "PassportLoginHistory.java"


# instance fields
.field private A:F

.field private B:F

.field private C:Z

.field private l:Lcom/netease/mpay/oversea/ui/h$g;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroidx/recyclerview/widget/RecyclerView;

.field private r:Landroid/view/View;

.field s:Lcom/netease/mpay/oversea/ui/y/e;

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/y/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/netease/mpay/oversea/t/c/f;

.field private v:Lcom/netease/mpay/oversea/t/d/b;

.field private w:Lcom/netease/mpay/oversea/t/d/a;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    .line 17
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/n/l/g;->x:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->y:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/n/l/g;->z:Z

    .line 164
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/n/l/g;->C:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/l/g;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/n/l/g;->x:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/t/d/b;)Lcom/netease/mpay/oversea/t/d/b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/l/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 7

    .line 11
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/oversea/r/d;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    new-instance v3, Lcom/netease/mpay/oversea/n/l/g$b;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/n/l/g$b;-><init>(Lcom/netease/mpay/oversea/n/l/g;)V

    .line 21
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object v3

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_1
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 32
    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    :goto_1
    new-instance v1, Lcom/netease/mpay/oversea/n/l/g$c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/n/l/g$c;-><init>(Lcom/netease/mpay/oversea/n/l/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->t:Ljava/util/ArrayList;

    .line 46
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->w:Lcom/netease/mpay/oversea/t/d/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/d/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    iget-object v4, p0, Lcom/netease/mpay/oversea/n/l/g;->w:Lcom/netease/mpay/oversea/t/d/a;

    invoke-virtual {v4, v1}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 48
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/d/b;->b()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lcom/netease/mpay/oversea/t/d/b;->k:Z

    if-nez v4, :cond_4

    goto :goto_2

    .line 49
    :cond_4
    new-instance v4, Lcom/netease/mpay/oversea/ui/y/e$a;

    invoke-direct {v4}, Lcom/netease/mpay/oversea/ui/y/e$a;-><init>()V

    .line 50
    iget-object v5, p0, Lcom/netease/mpay/oversea/n/l/g;->u:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, v4, Lcom/netease/mpay/oversea/ui/y/e$a;->c:Z

    if-eqz v3, :cond_6

    .line 52
    iput-object v1, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    .line 54
    :cond_6
    iget-boolean v3, p0, Lcom/netease/mpay/oversea/n/l/g;->z:Z

    iput-boolean v3, v4, Lcom/netease/mpay/oversea/ui/y/e$a;->a:Z

    .line 55
    iget v3, v1, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-static {v3}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v3

    iput-object v3, v4, Lcom/netease/mpay/oversea/ui/y/e$a;->d:Lcom/netease/mpay/oversea/t/c/g;

    .line 56
    iput-object v1, v4, Lcom/netease/mpay/oversea/ui/y/e$a;->b:Lcom/netease/mpay/oversea/t/d/b;

    .line 57
    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    if-nez v0, :cond_8

    .line 60
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/y/e$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/y/e$a;->b:Lcom/netease/mpay/oversea/t/d/b;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    .line 63
    :cond_8
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__account:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->n:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__server:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->o:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__role:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->p:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay__login_user_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->m:Landroid/widget/ImageView;

    .line 67
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__quick_login_list:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__more:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/n/l/g$d;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/n/l/g$d;-><init>(Lcom/netease/mpay/oversea/n/l/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/n/l/g;->b(Lcom/netease/mpay/oversea/t/d/b;)V

    .line 77
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__account_content:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->r:Landroid/view/View;

    .line 78
    new-instance v1, Lcom/netease/mpay/oversea/n/l/g$e;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/n/l/g$e;-><init>(Lcom/netease/mpay/oversea/n/l/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/n/l/g$f;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/n/l/g$f;-><init>(Lcom/netease/mpay/oversea/n/l/g;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance p1, Lcom/netease/mpay/oversea/ui/y/e;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/g;->t:Ljava/util/ArrayList;

    new-instance v4, Lcom/netease/mpay/oversea/n/l/g$g;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/n/l/g$g;-><init>(Lcom/netease/mpay/oversea/n/l/g;)V

    invoke-direct {p1, v0, v1, v4}, Lcom/netease/mpay/oversea/ui/y/e;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/ui/y/e$b;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->s:Lcom/netease/mpay/oversea/ui/y/e;

    .line 119
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-direct {p1, v0, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 123
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/netease/mpay/oversea/ui/y/c;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_userlist_line:I

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/y/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/t/d/b;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/d/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p1, Lcom/netease/mpay/oversea/t/d/b;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/d/b;->e:Ljava/lang/String;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " ("

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/d/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    const-string v3, "remember_account_list_confirm"

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget v1, p1, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-static {v1}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v5

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_delete_warning:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 132
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/netease/mpay/oversea/n/l/g$h;

    invoke-direct {v9, p0, p1}, Lcom/netease/mpay/oversea/n/l/g$h;-><init>(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/t/d/b;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    .line 139
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/netease/mpay/oversea/n/l/g$i;

    invoke-direct {v11, p0}, Lcom/netease/mpay/oversea/n/l/g$i;-><init>(Lcom/netease/mpay/oversea/n/l/g;)V

    .line 140
    invoke-static/range {v4 .. v11}, Lcom/netease/mpay/oversea/widget/s;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/h$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/l/g;->l:Lcom/netease/mpay/oversea/ui/h$g;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/t/d/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n/l/g;->b(Lcom/netease/mpay/oversea/t/d/b;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n/l/g;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n/l/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/t/d/b;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget v1, p1, Lcom/netease/mpay/oversea/t/d/b;->b:I

    .line 5
    invoke-static {v1}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/t/c/g;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/g;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->n:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/d/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/n/l/g;->z:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->o:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_server:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_role:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/netease/mpay/oversea/n/l/g;->o:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/netease/mpay/oversea/t/d/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v2, p0, Lcom/netease/mpay/oversea/n/l/g;->p:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/d/b;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/t/d/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/t/d/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/n/l/g;->a(Lcom/netease/mpay/oversea/t/d/b;)V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/n/l/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/l/g;->y:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/d/a;->a(Ljava/lang/String;)Z

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/ui/y/e$a;

    .line 8
    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/y/e$a;->b:Lcom/netease/mpay/oversea/t/d/b;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/y/e$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/y/e$a;->b:Lcom/netease/mpay/oversea/t/d/b;

    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    goto :goto_1

    .line 16
    :cond_2
    iput-object v1, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    .line 19
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->s:Lcom/netease/mpay/oversea/ui/y/e;

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    iput-object v1, p0, Lcom/netease/mpay/oversea/n/l/g;->v:Lcom/netease/mpay/oversea/t/d/b;

    .line 24
    invoke-direct {p0}, Lcom/netease/mpay/oversea/n/l/g;->h()V

    :cond_5
    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/n/l/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/n/l/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/n/l/g;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/e$c;->a()V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/n/l/g;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/l/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 5
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

    iput-object p3, p0, Lcom/netease/mpay/oversea/n/l/g;->u:Lcom/netease/mpay/oversea/t/c/f;

    .line 6
    new-instance p3, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object p3

    iput-object p3, p0, Lcom/netease/mpay/oversea/n/l/g;->w:Lcom/netease/mpay/oversea/t/d/a;

    .line 7
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_history:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/netease/mpay/oversea/ui/h$h;

    sget-object p3, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p2, p3}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/g;->l:Lcom/netease/mpay/oversea/ui/h$g;

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/f;->x()Lcom/netease/mpay/oversea/l/e/d$h;

    move-result-object p2

    iget-boolean p2, p2, Lcom/netease/mpay/oversea/l/e/d$h;->b:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/n/l/g;->z:Z

    .line 10
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/n/l/g;->a(Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 6

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/z/a;->a(IILandroid/content/Intent;)V

    const-string p2, "Login Failed:"

    const/16 v0, 0x1b

    if-ne v0, p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->c:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/h;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/h$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    sget-object p3, Lcom/netease/mpay/oversea/ui/h$o;->a:Lcom/netease/mpay/oversea/ui/h$o;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    if-ne p3, v0, :cond_0

    .line 145
    instance-of p3, p1, Lcom/netease/mpay/oversea/ui/h$j;

    if-eqz p3, :cond_a

    .line 146
    check-cast p1, Lcom/netease/mpay/oversea/ui/h$j;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/netease/mpay/oversea/h/c;->a:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    new-instance v0, Lcom/netease/mpay/oversea/n/l/g$j;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/oversea/n/l/g$j;-><init>(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/h/c;)V

    invoke-static {p2, p1, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_a

    .line 158
    sget-object p2, Lcom/netease/mpay/oversea/ui/h$o;->b:Lcom/netease/mpay/oversea/ui/h$o;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    if-ne p2, p3, :cond_a

    .line 159
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->c:Lcom/netease/mpay/oversea/ui/h;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-ne v0, p1, :cond_a

    .line 162
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->c:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {p1, p3}, Lcom/netease/mpay/oversea/ui/h;->a(Landroid/content/Intent;)Lcom/netease/mpay/oversea/ui/h$g;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 163
    sget-object p3, Lcom/netease/mpay/oversea/ui/h$o;->a:Lcom/netease/mpay/oversea/ui/h$o;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    if-ne p3, v0, :cond_2

    .line 164
    instance-of p3, p1, Lcom/netease/mpay/oversea/ui/h$j;

    if-eqz p3, :cond_a

    .line 165
    check-cast p1, Lcom/netease/mpay/oversea/ui/h$j;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/netease/mpay/oversea/h/c;->a:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    new-instance p3, Lcom/netease/mpay/oversea/n/l/g$a;

    invoke-direct {p3, p0, p1}, Lcom/netease/mpay/oversea/n/l/g$a;-><init>(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/h/c;)V

    invoke-static {p2, p1, p3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_9

    .line 177
    sget-object p2, Lcom/netease/mpay/oversea/ui/h$o;->c:Lcom/netease/mpay/oversea/ui/h$o;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    if-ne p2, p3, :cond_9

    .line 178
    iget p2, p0, Lcom/netease/mpay/oversea/n/l/g;->x:I

    invoke-static {p2}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p2

    .line 179
    sget-object p3, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq p2, p3, :cond_5

    iget-object v2, p1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->r:Lcom/netease/mpay/oversea/n/h;

    if-ne v2, v3, :cond_5

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    iget v3, p0, Lcom/netease/mpay/oversea/n/l/g;->x:I

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/r/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/c/g;->f()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 182
    new-instance p3, Lcom/netease/mpay/oversea/ui/f;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    new-instance v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v5, Lcom/netease/mpay/oversea/n/h;->t:Lcom/netease/mpay/oversea/n/h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->c:Ljava/lang/String;

    invoke-direct {v4, v5, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 184
    invoke-virtual {v4, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p3, v2, v3, p1, p2}, Lcom/netease/mpay/oversea/ui/f;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 185
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto/16 :goto_0

    .line 186
    :cond_3
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/c/g;->g()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 187
    new-instance p3, Lcom/netease/mpay/oversea/ui/n;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    new-instance v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->t:Lcom/netease/mpay/oversea/n/h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 188
    invoke-virtual {v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 189
    invoke-virtual {v3, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-direct {p2, v3, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p3, v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 190
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto/16 :goto_0

    .line 192
    :cond_4
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    new-instance p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->t:Lcom/netease/mpay/oversea/n/h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->c:Ljava/lang/String;

    invoke-direct {p3, v0, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/a;->i(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto/16 :goto_0

    :cond_5
    if-eq p2, p3, :cond_8

    .line 194
    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->t:Lcom/netease/mpay/oversea/n/h;

    if-ne p3, v2, :cond_8

    .line 195
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p3

    move-object v3, p1

    check-cast v3, Lcom/netease/mpay/oversea/ui/h$l;

    iget v4, v3, Lcom/netease/mpay/oversea/ui/h$l;->f:I

    invoke-virtual {p3, v4}, Lcom/netease/mpay/oversea/r/d;->a(I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 196
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p3

    iget v4, v3, Lcom/netease/mpay/oversea/ui/h$l;->f:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 197
    iget p3, v3, Lcom/netease/mpay/oversea/ui/h$l;->f:I

    invoke-static {p3}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p3

    .line 198
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/t/c/g;->f()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 199
    new-instance p2, Lcom/netease/mpay/oversea/ui/f;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    new-instance v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->c:Ljava/lang/String;

    invoke-direct {v5, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 201
    invoke-virtual {v5, p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p3, Lcom/netease/mpay/oversea/ui/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-direct {p3, v1, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p2, v3, v4, p1, p3}, Lcom/netease/mpay/oversea/ui/f;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 202
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto :goto_0

    .line 203
    :cond_6
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/t/c/g;->g()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 204
    new-instance p3, Lcom/netease/mpay/oversea/ui/n;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    new-instance v5, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->c:Ljava/lang/String;

    invoke-direct {v5, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    .line 206
    invoke-virtual {v5, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-direct {p2, v1, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p3, v3, v4, p1, p2}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 207
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto :goto_0

    .line 209
    :cond_7
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget p3, v3, Lcom/netease/mpay/oversea/ui/h$l;->f:I

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->c:Ljava/lang/String;

    invoke-direct {v0, v2, p1, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    invoke-static {p2, p3, v0}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 214
    :cond_8
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/netease/mpay/oversea/ui/h$j;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    sget-object p3, Lcom/netease/mpay/oversea/h/a;->c:Lcom/netease/mpay/oversea/h/a;

    iput-object p3, p2, Lcom/netease/mpay/oversea/h/c;->d:Lcom/netease/mpay/oversea/h/a;

    .line 215
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    check-cast p1, Lcom/netease/mpay/oversea/ui/h$j;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$j;->d:Lcom/netease/mpay/oversea/h/c;

    invoke-static {p2, p1, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_9
    if-eqz p1, :cond_a

    .line 219
    sget-object p2, Lcom/netease/mpay/oversea/ui/h$o;->b:Lcom/netease/mpay/oversea/ui/h$o;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/h$g;->a:Lcom/netease/mpay/oversea/ui/h$o;

    if-ne p2, p3, :cond_a

    .line 220
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/z/a;->c:Lcom/netease/mpay/oversea/ui/h;

    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :catch_0
    :cond_a
    :goto_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 4

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/netease/mpay/oversea/n/l/g;->A:F

    sub-float/2addr v0, v2

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/netease/mpay/oversea/n/l/g;->B:F

    sub-float/2addr p1, v2

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double v2, v0

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 33
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/n/l/g;->C:Z

    goto :goto_0

    .line 38
    :cond_1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/n/l/g;->C:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g;->r:Landroid/view/View;

    .line 41
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 42
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/n/l/g;->A:F

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/n/l/g;->B:F

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/n/l/g;->C:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "remember_account"

    return-object v0
.end method
