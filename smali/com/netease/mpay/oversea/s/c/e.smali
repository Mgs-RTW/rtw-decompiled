.class public Lcom/netease/mpay/oversea/s/c/e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SecurityMailEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/s/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/netease/mpay/oversea/s/c/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/z/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/z/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/s/c/e;->a:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/s/c/e$a;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/netease/mpay/oversea/s/c/e;->b:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    .line 2
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__security_mail_entry_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/netease/mpay/oversea/s/c/e$a;

    invoke-direct {p2, p1}, Lcom/netease/mpay/oversea/s/c/e$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/netease/mpay/oversea/s/c/e$a;I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/ui/z/e;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/s/c/e$a;->a(Lcom/netease/mpay/oversea/ui/z/e;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/s/c/e$a;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/s/c/e;->a(Lcom/netease/mpay/oversea/s/c/e$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/s/c/e;->a(Landroid/view/ViewGroup;I)Lcom/netease/mpay/oversea/s/c/e$a;

    move-result-object p1

    return-object p1
.end method
