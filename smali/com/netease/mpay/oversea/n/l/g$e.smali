.class Lcom/netease/mpay/oversea/n/l/g$e;
.super Lcom/netease/mpay/oversea/widget/r$b;
.source "PassportLoginHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/g;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/n/l/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$e;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$e;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->o(Lcom/netease/mpay/oversea/n/l/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$e;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->o(Lcom/netease/mpay/oversea/n/l/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$e;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->o(Lcom/netease/mpay/oversea/n/l/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$e;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->o(Lcom/netease/mpay/oversea/n/l/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void
.end method
