.class public Lcom/netease/mpay/oversea/o/g/f;
.super Landroid/app/Dialog;
.source "SimpleDatePickerDialog.java"


# instance fields
.field private a:Lcom/netease/mpay/oversea/o/g/b;

.field private b:Lcom/netease/mpay/oversea/o/g/b;

.field private c:Lcom/netease/mpay/oversea/o/g/b;

.field private d:Lcom/netease/mpay/oversea/o/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/o/g/a<",
            "Lcom/netease/mpay/oversea/o/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Landroid/widget/DatePicker;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/netease/mpay/oversea/o/g/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Z",
            "Lcom/netease/mpay/oversea/o/g/a<",
            "Lcom/netease/mpay/oversea/o/g/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/netease/mpay/oversea/R$style;->NeteaseMpay_lvu_Dialog:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/f;->b(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/o/g/b;

    const-string v1, "2000"

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/netease/mpay/oversea/o/g/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/f;->a:Lcom/netease/mpay/oversea/o/g/b;

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/o/g/b;

    const/4 v1, 0x1

    const-string v3, "01"

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netease/mpay/oversea/o/g/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/f;->b:Lcom/netease/mpay/oversea/o/g/b;

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/o/g/b;

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netease/mpay/oversea/o/g/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/f;->c:Lcom/netease/mpay/oversea/o/g/b;

    .line 8
    iput-boolean v2, p0, Lcom/netease/mpay/oversea/o/g/f;->f:Z

    .line 12
    iput-object p3, p0, Lcom/netease/mpay/oversea/o/g/f;->d:Lcom/netease/mpay/oversea/o/g/a;

    .line 13
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/f;->e:Landroid/content/Context;

    .line 14
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/o/g/f;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/f;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/f;->c:Lcom/netease/mpay/oversea/o/g/b;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/f;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/f;->c:Lcom/netease/mpay/oversea/o/g/b;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/o/g/f;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/f;->b:Lcom/netease/mpay/oversea/o/g/b;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/o/g/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/o/g/f;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/o/g/f;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/f;->b:Lcom/netease/mpay/oversea/o/g/b;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/o/g/f;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/f;->a:Lcom/netease/mpay/oversea/o/g/b;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/o/g/f;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/f;->a:Lcom/netease/mpay/oversea/o/g/b;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/o/g/f;)Lcom/netease/mpay/oversea/o/g/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/f;->d:Lcom/netease/mpay/oversea/o/g/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/o/g/b;Lcom/netease/mpay/oversea/o/g/b;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/f;
    .locals 0

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/o/g/f;->b:Lcom/netease/mpay/oversea/o/g/b;

    .line 4
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/f;->a:Lcom/netease/mpay/oversea/o/g/b;

    .line 5
    iput-object p3, p0, Lcom/netease/mpay/oversea/o/g/f;->c:Lcom/netease/mpay/oversea/o/g/b;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 4
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, 0xff0000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    const/16 v2, 0x50

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 8
    sget v2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__lvu_region_panel_height:I

    invoke-static {v2}, Lcom/netease/mpay/oversea/f;->a(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/f;->e:Landroid/content/Context;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__year_hint:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/f;->e:Landroid/content/Context;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__month_hint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/netease/mpay/oversea/o/g/f;->e:Landroid/content/Context;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__day_hint:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/app/Dialog;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 16
    sget v5, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__simple_date_picker:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 18
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__date_picker:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcom/netease/mpay/oversea/o/g/f;->g:Landroid/widget/DatePicker;

    .line 20
    iget-object v5, p0, Lcom/netease/mpay/oversea/o/g/f;->a:Lcom/netease/mpay/oversea/o/g/b;

    iget v5, v5, Lcom/netease/mpay/oversea/o/g/b;->a:I

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/g/f;->b:Lcom/netease/mpay/oversea/o/g/b;

    iget v6, v6, Lcom/netease/mpay/oversea/o/g/b;->a:I

    sub-int/2addr v6, v0

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/f;->c:Lcom/netease/mpay/oversea/o/g/b;

    iget v0, v0, Lcom/netease/mpay/oversea/o/g/b;->a:I

    new-instance v7, Lcom/netease/mpay/oversea/o/g/f$a;

    invoke-direct {v7, p0, v3, v2, p1}, Lcom/netease/mpay/oversea/o/g/f$a;-><init>(Lcom/netease/mpay/oversea/o/g/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6, v0, v7}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 33
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__confirm:I

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/f;->h:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/f;->h:Landroid/widget/TextView;

    new-instance v0, Lcom/netease/mpay/oversea/o/g/f$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/o/g/f$b;-><init>(Lcom/netease/mpay/oversea/o/g/f;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance p1, Lcom/netease/mpay/oversea/o/g/f$c;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/o/g/f$c;-><init>(Lcom/netease/mpay/oversea/o/g/f;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/view/Window;)V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->c(Landroid/view/Window;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/r;->d(Landroid/view/Window;)V

    return-void
.end method
