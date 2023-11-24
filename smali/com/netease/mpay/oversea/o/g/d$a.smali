.class Lcom/netease/mpay/oversea/o/g/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RegionPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/d;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/o/g/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/g/d;->b(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result v0

    invoke-static {}, Lcom/netease/mpay/oversea/o/g/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/o/g/d;->a(Lcom/netease/mpay/oversea/o/g/d;I)I

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/g/d;->b(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onScrollStateChanged,currentPosition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/g/d;->b(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",selectedPosition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/g/d;->a(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "position:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",currentPosition:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p3}, Lcom/netease/mpay/oversea/o/g/d;->b(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/g/d;->b(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/o/g/d;->b(Lcom/netease/mpay/oversea/o/g/d;I)I

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/d;->b(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result p2

    invoke-static {}, Lcom/netease/mpay/oversea/o/g/d;->a()I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/o/g/d;->a(Lcom/netease/mpay/oversea/o/g/d;I)I

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/d;->d(Lcom/netease/mpay/oversea/o/g/d;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/g/d;->c(Lcom/netease/mpay/oversea/o/g/d;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/mpay/oversea/o/g/d$a;->a:Lcom/netease/mpay/oversea/o/g/d;

    invoke-static {p3}, Lcom/netease/mpay/oversea/o/g/d;->a(Lcom/netease/mpay/oversea/o/g/d;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/o/a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/o/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
