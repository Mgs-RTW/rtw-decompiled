.class public Lcom/netease/mpay/oversea/ui/y/i$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SwitchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/y/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y/i$b;->c:Landroid/view/View;

    .line 3
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/y/i$b;->a:Landroid/widget/ImageView;

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y/i$b;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method a(Lcom/netease/mpay/oversea/ui/b;Lcom/netease/mpay/oversea/ui/y/i$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;",
            "Lcom/netease/mpay/oversea/ui/y/i$a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y/i$b;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/widget/r;->a(Lcom/netease/mpay/oversea/t/c/g;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/i$b;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y/i$b;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/o;->c(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/i$b;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/b$c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/i$b;->c:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/oversea/ui/y/i$b$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/netease/mpay/oversea/ui/y/i$b$a;-><init>(Lcom/netease/mpay/oversea/ui/y/i$b;Lcom/netease/mpay/oversea/ui/y/i$a;Lcom/netease/mpay/oversea/ui/b;)V

    .line 13
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
