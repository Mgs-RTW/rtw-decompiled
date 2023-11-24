.class Lcom/netease/mpay/oversea/n/l/j$c;
.super Lcom/netease/mpay/oversea/widget/d;
.source "QuickLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/j;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/widget/TextView;

.field final synthetic f:Lcom/netease/mpay/oversea/n/l/j;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/j;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/l/j$c;->d:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/mpay/oversea/n/l/j$c;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/netease/mpay/oversea/n/l/j$h;->a:[I

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/j;->h(Lcom/netease/mpay/oversea/n/l/j;)Lcom/netease/mpay/oversea/ui/y/g$c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    sget-object v0, Lcom/netease/mpay/oversea/ui/y/g$c;->c:Lcom/netease/mpay/oversea/ui/y/g$c;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/j;->a(Lcom/netease/mpay/oversea/n/l/j;Lcom/netease/mpay/oversea/ui/y/g$c;)Lcom/netease/mpay/oversea/ui/y/g$c;

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/j;->k(Lcom/netease/mpay/oversea/n/l/j;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_complete:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/l/j;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/y/g$a;

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/l/j;->h(Lcom/netease/mpay/oversea/n/l/j;)Lcom/netease/mpay/oversea/ui/y/g$c;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/ui/y/g$a;->b:Lcom/netease/mpay/oversea/ui/y/g$c;

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/j;->b(Lcom/netease/mpay/oversea/n/l/j;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "edit"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    sget-object v0, Lcom/netease/mpay/oversea/ui/y/g$c;->a:Lcom/netease/mpay/oversea/ui/y/g$c;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/j;->a(Lcom/netease/mpay/oversea/n/l/j;Lcom/netease/mpay/oversea/ui/y/g$c;)Lcom/netease/mpay/oversea/ui/y/g$c;

    .line 20
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/j;->i(Lcom/netease/mpay/oversea/n/l/j;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login_editor:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/l/j;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/y/g$a;

    .line 23
    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/l/j;->h(Lcom/netease/mpay/oversea/n/l/j;)Lcom/netease/mpay/oversea/ui/y/g$c;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/ui/y/g$a;->b:Lcom/netease/mpay/oversea/ui/y/g$c;

    goto :goto_1

    .line 25
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/j;->j(Lcom/netease/mpay/oversea/n/l/j;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "edit_confirm"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    :goto_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$c;->f:Lcom/netease/mpay/oversea/n/l/j;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/l/j;->l:Lcom/netease/mpay/oversea/ui/y/g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
