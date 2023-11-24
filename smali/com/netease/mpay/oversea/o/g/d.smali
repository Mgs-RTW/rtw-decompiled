.class public Lcom/netease/mpay/oversea/o/g/d;
.super Landroid/app/Dialog;
.source "RegionPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/o/g/d$f;,
        Lcom/netease/mpay/oversea/o/g/d$e;,
        Lcom/netease/mpay/oversea/o/g/d$d;
    }
.end annotation


# static fields
.field private static h:I = 0x2


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/o/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private final g:Lcom/netease/mpay/oversea/o/g/d$d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/netease/mpay/oversea/o/g/d$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/o/a;",
            ">;",
            "Lcom/netease/mpay/oversea/o/g/d$d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Lcom/netease/mpay/oversea/o/g/d;->h:I

    iput v0, p0, Lcom/netease/mpay/oversea/o/g/d;->f:I

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/netease/mpay/oversea/R$bool;->netease_mpay_oversea__orientation_landscape:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    sput p1, Lcom/netease/mpay/oversea/o/g/d;->h:I

    .line 10
    iput-object p4, p0, Lcom/netease/mpay/oversea/o/g/d;->g:Lcom/netease/mpay/oversea/o/g/d$d;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 12
    :goto_1
    sget p4, Lcom/netease/mpay/oversea/o/g/d;->h:I

    const-string v1, ""

    if-ge p1, p4, :cond_1

    .line 13
    iget-object p4, p0, Lcom/netease/mpay/oversea/o/g/d;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/netease/mpay/oversea/o/a;

    invoke-direct {v2, v1, v1}, Lcom/netease/mpay/oversea/o/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    :goto_2
    sget p1, Lcom/netease/mpay/oversea/o/g/d;->h:I

    if-ge v0, p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->b:Ljava/util/ArrayList;

    new-instance p3, Lcom/netease/mpay/oversea/o/a;

    invoke-direct {p3, v1, v1}, Lcom/netease/mpay/oversea/o/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_2
    iput p2, p0, Lcom/netease/mpay/oversea/o/g/d;->e:I

    add-int/2addr p2, p1

    .line 20
    iput p2, p0, Lcom/netease/mpay/oversea/o/g/d;->f:I

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "currentPosition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/mpay/oversea/o/g/d;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", selectedPosition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/mpay/oversea/o/g/d;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 3
    sget v0, Lcom/netease/mpay/oversea/o/g/d;->h:I

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/o/g/d;->f:I

    return p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/d;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/o/g/d;->f:I

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/o/g/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/mpay/oversea/o/g/d;->e:I

    return p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/o/g/d;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/o/g/d;->e:I

    return p1
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/o/g/d;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/d;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/o/g/d;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/d;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/o/g/d;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/o/g/d;)Lcom/netease/mpay/oversea/o/g/d$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/d;->g:Lcom/netease/mpay/oversea/o/g/d$d;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/d;->g:Lcom/netease/mpay/oversea/o/g/d$d;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/netease/mpay/oversea/o/g/d;->e:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/d;->b:Ljava/util/ArrayList;

    iget v3, p0, Lcom/netease/mpay/oversea/o/g/d;->f:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/o/a;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/o/g/d$d;->a(ILcom/netease/mpay/oversea/o/a;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "change_region"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    const/16 v3, 0x50

    .line 7
    invoke-virtual {p1, v3}, Landroid/view/Window;->setGravity(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__lvu_region_panel_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    .line 9
    invoke-virtual {p1, v1, v3}, Landroid/view/Window;->setLayout(II)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/content/ContextWrapper;

    .line 13
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__lvu_region_picker:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 16
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_region:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/netease/mpay/oversea/o/g/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_region_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/d;->c:Landroid/widget/TextView;

    .line 20
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_region_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->d:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/d;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netease/mpay/oversea/o/g/d;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/o/a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/o/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/netease/mpay/oversea/o/g/d$e;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/d;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/o/g/d$e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/netease/mpay/oversea/o/g/d$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/o/g/d$a;-><init>(Lcom/netease/mpay/oversea/o/g/d;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 49
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/netease/mpay/oversea/o/g/d$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/o/g/d$b;-><init>(Lcom/netease/mpay/oversea/o/g/d;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 60
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/netease/mpay/oversea/o/g/d$c;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/o/g/d$c;-><init>(Lcom/netease/mpay/oversea/o/g/d;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/netease/mpay/oversea/o/g/d;->e:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/view/Window;)V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->d(Landroid/view/Window;)V

    return-void
.end method
