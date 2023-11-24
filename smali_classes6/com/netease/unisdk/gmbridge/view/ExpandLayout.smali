.class public Lcom/netease/unisdk/gmbridge/view/ExpandLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandLayout.java"


# instance fields
.field private mItemViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/unisdk/gmbridge/view/ExpandItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mLineColor:I

.field private mLineHeight:I

.field private mLineMargin:I

.field private mLineWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "uni_gm_f_expand_bg"

    .line 30
    invoke-static {p1, v0}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->setBackgroundResource(I)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->setOrientation(I)V

    .line 32
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uni_gm_f_expand_item_line_width"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineWidth:I

    .line 33
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uni_gm_f_expand_item_line_height"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineHeight:I

    .line 34
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uni_gm_f_expand_item_margin"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getDimenId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineMargin:I

    const-string p1, "#33ffffff"

    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineColor:I

    .line 36
    invoke-direct {p0, p2}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->initViews(Ljava/util/List;)V

    return-void
.end method

.method private addLine()V
    .locals 4

    .line 60
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    iget v1, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineWidth:I

    iget v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 64
    iget v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mLineMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x10

    .line 65
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 42
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 45
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    .line 49
    new-instance v4, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;-><init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;)V

    .line 50
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    iget-object v3, v3, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p0, v4, v1}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->addLine()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public showRed([Ljava/lang/String;)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 74
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge/view/ExpandLayout;->mItemViews:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;

    invoke-virtual {v2}, Lcom/netease/unisdk/gmbridge/view/ExpandItemView;->showRed()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method
