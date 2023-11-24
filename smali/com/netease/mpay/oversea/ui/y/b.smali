.class public Lcom/netease/mpay/oversea/ui/y/b;
.super Landroid/widget/BaseAdapter;
.source "ChannelLoginAdapter.java"


# instance fields
.field private final a:[I

.field private b:Landroid/content/Context;

.field private c:Lcom/netease/mpay/oversea/ui/e$c;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/ArrayList;Lcom/netease/mpay/oversea/ui/e$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/b<",
            "Lcom/netease/mpay/oversea/ui/b$e;",
            ">;>;",
            "Lcom/netease/mpay/oversea/ui/e$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_login_item:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__channel_login_item_small:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/y/b;->a:[I

    .line 14
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y/b;->b:Landroid/content/Context;

    .line 15
    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/y/b;->d:Ljava/util/ArrayList;

    .line 16
    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/y/b;->c:Lcom/netease/mpay/oversea/ui/e$c;

    .line 17
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ui/y/b;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/y/b;)Lcom/netease/mpay/oversea/ui/e$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/y/b;->c:Lcom/netease/mpay/oversea/ui/e$c;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/view/ViewGroup;II)Landroid/view/View;
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/b;

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y/b;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->I:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/y/b;->e:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/f;->N()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y/b;->a:[I

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_42:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move v5, v2

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y/b;->a:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_135:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 12
    iget-object v5, p0, Lcom/netease/mpay/oversea/ui/y/b;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_42:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 14
    :goto_0
    sget v6, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_background:I

    .line 15
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 17
    iget-object v7, v0, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v8, v0, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v8, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v8, v8, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v8}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/netease/mpay/oversea/widget/r;->a(Lcom/netease/mpay/oversea/t/c/g;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 18
    sget v6, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_text:I

    .line 19
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/f;->h()Landroid/graphics/Typeface;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 22
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    :cond_2
    iget-object v7, v0, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v7, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v7, v7, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v7}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v7, v0, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v7, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v7, v7, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v7}, Lcom/netease/mpay/oversea/ui/b$c;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v7, v0, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v7, v3, :cond_3

    .line 27
    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    check-cast v3, Lcom/netease/mpay/oversea/ui/b$e;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/netease/mpay/oversea/widget/o;->c(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 29
    :cond_3
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/t/c/g;

    .line 30
    new-instance v3, Lcom/netease/mpay/oversea/ui/y/b$a;

    invoke-direct {v3, p0, v0, p2}, Lcom/netease/mpay/oversea/ui/y/b$a;-><init>(Lcom/netease/mpay/oversea/ui/y/b;Lcom/netease/mpay/oversea/t/c/g;Landroid/view/ViewGroup;)V

    .line 41
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/widget/d;->a()Lcom/netease/mpay/oversea/widget/d;

    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v5, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netease_mpay_oversea__channel_item_"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_x"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_y"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p3}, Lcom/netease/mpay/oversea/f;->a(Ljava/lang/String;)I

    move-result p3

    .line 60
    invoke-static {p1}, Lcom/netease/mpay/oversea/f;->a(Ljava/lang/String;)I

    move-result p1

    .line 61
    invoke-virtual {v0, p3, v4, v4, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 62
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left:"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "right:"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
