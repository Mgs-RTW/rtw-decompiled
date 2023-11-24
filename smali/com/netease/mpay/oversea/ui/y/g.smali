.class public Lcom/netease/mpay/oversea/ui/y/g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QuickLoginAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/y/g$a;,
        Lcom/netease/mpay/oversea/ui/y/g$b;,
        Lcom/netease/mpay/oversea/ui/y/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/mpay/oversea/ui/y/h;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/y/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/netease/mpay/oversea/ui/y/g$b;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLjava/util/ArrayList;Lcom/netease/mpay/oversea/ui/y/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/y/g$a;",
            ">;",
            "Lcom/netease/mpay/oversea/ui/y/g$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ui/y/g;->f:Z

    .line 8
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y/g;->a:Landroid/content/Context;

    .line 9
    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/y/g;->b:Ljava/util/ArrayList;

    .line 10
    iput-object p6, p0, Lcom/netease/mpay/oversea/ui/y/g;->c:Lcom/netease/mpay/oversea/ui/y/g$b;

    .line 11
    iput p2, p0, Lcom/netease/mpay/oversea/ui/y/g;->d:I

    .line 12
    iput p3, p0, Lcom/netease/mpay/oversea/ui/y/g;->e:I

    .line 13
    iput-boolean p4, p0, Lcom/netease/mpay/oversea/ui/y/g;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/ui/y/h;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/y/g;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/netease/mpay/oversea/ui/y/g;->d:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/ui/y/h;

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ui/y/g;->f:Z

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y/g;->c:Lcom/netease/mpay/oversea/ui/y/g$b;

    invoke-direct {p2, p1, v0, v1}, Lcom/netease/mpay/oversea/ui/y/h;-><init>(Landroid/view/View;ZLcom/netease/mpay/oversea/ui/y/g$b;)V

    return-object p2
.end method

.method public a(Lcom/netease/mpay/oversea/ui/y/h;I)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/g;->a:Landroid/content/Context;

    iget v1, p0, Lcom/netease/mpay/oversea/ui/y/g;->e:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/ui/y/g$a;

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/netease/mpay/oversea/ui/y/h;->a(Landroid/content/Context;IILcom/netease/mpay/oversea/ui/y/g$a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/g;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/ui/y/h;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/y/g;->a(Lcom/netease/mpay/oversea/ui/y/h;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/y/g;->a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/ui/y/h;

    move-result-object p1

    return-object p1
.end method
