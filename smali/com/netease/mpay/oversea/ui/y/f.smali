.class public Lcom/netease/mpay/oversea/ui/y/f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PassportMoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/y/f$b;,
        Lcom/netease/mpay/oversea/ui/y/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/mpay/oversea/ui/y/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/netease/mpay/oversea/ui/y/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/ui/y/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;",
            "Lcom/netease/mpay/oversea/ui/y/f$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y/f;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/y/f;->b:Ljava/util/ArrayList;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/y/f;->c:Lcom/netease/mpay/oversea/ui/y/f$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/ui/y/f$b;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/y/f;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_login_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/ui/y/f$b;

    invoke-direct {p2, p1}, Lcom/netease/mpay/oversea/ui/y/f$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/netease/mpay/oversea/ui/y/f$b;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/ui/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/f;->c:Lcom/netease/mpay/oversea/ui/y/f$a;

    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/y/f$b;->a(Lcom/netease/mpay/oversea/ui/b;Lcom/netease/mpay/oversea/ui/y/f$a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/ui/y/f$b;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/y/f;->a(Lcom/netease/mpay/oversea/ui/y/f$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/y/f;->a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/ui/y/f$b;

    move-result-object p1

    return-object p1
.end method
