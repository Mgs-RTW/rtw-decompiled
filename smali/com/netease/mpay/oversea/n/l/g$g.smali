.class Lcom/netease/mpay/oversea/n/l/g$g;
.super Ljava/lang/Object;
.source "PassportLoginHistory.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/g;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/l/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/t/d/b;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    iget v0, p2, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/g;->a(Lcom/netease/mpay/oversea/n/l/g;I)I

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    iget-object v0, p2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/g;->a(Lcom/netease/mpay/oversea/n/l/g;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/n/l/g;->c(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/t/d/b;)V

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p2}, Lcom/netease/mpay/oversea/n/l/g;->f(Lcom/netease/mpay/oversea/n/l/g;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "remember_account_list"

    const-string v1, "remember_account_list_delete"

    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/t/d/b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    iget v0, p2, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/g;->a(Lcom/netease/mpay/oversea/n/l/g;I)I

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    iget-object v0, p2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/g;->a(Lcom/netease/mpay/oversea/n/l/g;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/n/l/g;->a(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/t/d/b;)Lcom/netease/mpay/oversea/t/d/b;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->o(Lcom/netease/mpay/oversea/n/l/g;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$g;->a:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/n/l/g;->b(Lcom/netease/mpay/oversea/n/l/g;Lcom/netease/mpay/oversea/t/d/b;)V

    return-void
.end method
