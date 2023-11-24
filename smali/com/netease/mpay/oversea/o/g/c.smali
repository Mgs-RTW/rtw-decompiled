.class public Lcom/netease/mpay/oversea/o/g/c;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "LVUPersonInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/o/g/c$m;
    }
.end annotation


# instance fields
.field private l:Lcom/netease/mpay/oversea/o/a;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Lcom/netease/mpay/oversea/o/g/b;

.field private q:Lcom/netease/mpay/oversea/o/g/b;

.field private r:Lcom/netease/mpay/oversea/o/g/b;

.field private s:Z

.field private final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/o/g/c$m;",
            ">;"
        }
    .end annotation
.end field

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/o/g/b;

    const-string v1, "2000"

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/netease/mpay/oversea/o/g/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->p:Lcom/netease/mpay/oversea/o/g/b;

    .line 8
    new-instance v0, Lcom/netease/mpay/oversea/o/g/b;

    const/4 v1, 0x1

    const-string v3, "01"

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netease/mpay/oversea/o/g/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->q:Lcom/netease/mpay/oversea/o/g/b;

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/o/g/b;

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netease/mpay/oversea/o/g/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->r:Lcom/netease/mpay/oversea/o/g/b;

    .line 11
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/o/g/c;->s:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->t:Ljava/util/ArrayList;

    .line 14
    iput v2, p0, Lcom/netease/mpay/oversea/o/g/c;->u:I

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/c;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/netease/mpay/oversea/o/g/c;->u:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/c;Lcom/netease/mpay/oversea/o/a;)Lcom/netease/mpay/oversea/o/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c;->l:Lcom/netease/mpay/oversea/o/a;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/c;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c;->p:Lcom/netease/mpay/oversea/o/g/b;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 69
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/widget/l$h;

    new-instance v1, Lcom/netease/mpay/oversea/o/g/c$f;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/o/g/c$f;-><init>(Lcom/netease/mpay/oversea/o/g/c;)V

    invoke-direct {v0, p2, v1}, Lcom/netease/mpay/oversea/widget/l$h;-><init>(Landroid/widget/TextView;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    .line 104
    invoke-static {p3}, Lcom/netease/mpay/oversea/widget/l;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/j;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/widget/l$f;

    move-result-object p1

    .line 106
    invoke-static {v1, p1, v0}, Lcom/netease/mpay/oversea/widget/l;->a(Ljava/util/List;Lcom/netease/mpay/oversea/widget/l$f;Lcom/netease/mpay/oversea/widget/l$h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 111
    sget-object v0, Lcom/netease/mpay/oversea/o/g/c$c;->a:[I

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->l()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 119
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/o/g/c;->s:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/o/g/c;->s:Z

    .line 126
    :goto_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->k()V

    .line 127
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->o:Landroid/view/View;

    .line 128
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_date_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c;->n:Landroid/widget/TextView;

    .line 129
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->n()V

    .line 130
    new-instance p1, Lcom/netease/mpay/oversea/o/g/c$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/o/g/c$a;-><init>(Lcom/netease/mpay/oversea/o/g/c;)V

    .line 158
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->h()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/c;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/o/g/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o/g/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/o/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/c;->l:Lcom/netease/mpay/oversea/o/a;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/o/g/c;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c;->q:Lcom/netease/mpay/oversea/o/g/b;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_date_confirm_tips:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/mpay/oversea/o/g/c;->l:Lcom/netease/mpay/oversea/o/a;

    iget-object v4, v4, Lcom/netease/mpay/oversea/o/a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__popup_text_highlight:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :try_start_0
    new-array v3, v2, [I

    aput v1, v3, v5

    aput v1, v3, v4

    new-array v1, v2, [Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c;->l:Lcom/netease/mpay/oversea/o/a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/o/a;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object p1, v1, v4

    invoke-static {v0, v3, v1}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;[I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    move-object v2, v0

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    const-string v1, "child_protection_confirm"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string v0, "child_protection_confirm_show"

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    new-instance v4, Lcom/netease/mpay/oversea/o/g/c$j;

    invoke-direct {v4, p0, p2}, Lcom/netease/mpay/oversea/o/g/c$j;-><init>(Lcom/netease/mpay/oversea/o/g/c;Ljava/lang/String;)V

    new-instance v6, Lcom/netease/mpay/oversea/o/g/c$k;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/o/g/c$k;-><init>(Lcom/netease/mpay/oversea/o/g/c;)V

    invoke-static/range {v1 .. v6}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_1

    .line 35
    :cond_0
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/o/g/c;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/o/g/c;Lcom/netease/mpay/oversea/o/g/b;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c;->r:Lcom/netease/mpay/oversea/o/g/b;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 10

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->f()Lcom/netease/mpay/oversea/n/i/b/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v5, v0, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    .line 5
    iget-object v6, v0, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/o/f/b;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c;->l:Lcom/netease/mpay/oversea/o/a;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v2, Lcom/netease/mpay/oversea/o/a;->b:Ljava/lang/String;

    :goto_0
    move-object v7, v1

    new-instance v9, Lcom/netease/mpay/oversea/o/g/c$l;

    invoke-direct {v9, p0, p1}, Lcom/netease/mpay/oversea/o/g/c$l;-><init>(Lcom/netease/mpay/oversea/o/g/c;Ljava/lang/String;)V

    move-object v3, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/netease/mpay/oversea/o/f/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 22
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_1

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/ErrorCode;->ERR_REQUIRE_LOGIN:I

    const/16 v2, 0x12c

    invoke-interface {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    .line 25
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/o/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->m()V

    return-void
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    const/16 v1, 0x271f

    const-string v2, ""

    const/16 v3, 0x12c

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method private i()V
    .locals 5

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->f()Lcom/netease/mpay/oversea/n/i/b/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 13
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 19
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 20
    new-instance v2, Lcom/netease/mpay/oversea/o/f/a;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    new-instance v4, Lcom/netease/mpay/oversea/o/g/c$i;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/o/g/c$i;-><init>(Lcom/netease/mpay/oversea/o/g/c;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/netease/mpay/oversea/o/f/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 33
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/o/a;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->e()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private k()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__year_hint:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__month_hint:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__day_hint:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/f;->h()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "ddMMyyyy"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    .line 12
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    const/4 v3, 0x5

    .line 13
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "0"

    const/16 v7, 0xa

    if-ge v6, v7, :cond_0

    .line 14
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    if-ge v6, v7, :cond_1

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 16
    :goto_1
    new-instance v7, Lcom/netease/mpay/oversea/o/g/b;

    iget-boolean v9, p0, Lcom/netease/mpay/oversea/o/g/c;->s:Z

    if-eqz v9, :cond_2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v10, v5, v0, v9}, Lcom/netease/mpay/oversea/o/g/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/netease/mpay/oversea/o/g/c;->p:Lcom/netease/mpay/oversea/o/g/b;

    .line 17
    new-instance v0, Lcom/netease/mpay/oversea/o/g/b;

    iget-boolean v5, p0, Lcom/netease/mpay/oversea/o/g/c;->s:Z

    if-eqz v5, :cond_3

    move-object v1, v8

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-direct {v0, v10, v6, v1, v8}, Lcom/netease/mpay/oversea/o/g/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->q:Lcom/netease/mpay/oversea/o/g/b;

    .line 18
    new-instance v0, Lcom/netease/mpay/oversea/o/g/b;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/o/g/c;->s:Z

    if-eqz v1, :cond_4

    move-object v1, v4

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-direct {v0, v10, v3, v1, v4}, Lcom/netease/mpay/oversea/o/g/b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->r:Lcom/netease/mpay/oversea/o/g/b;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private l()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_select_region:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->l:Lcom/netease/mpay/oversea/o/a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/o/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__popup_text_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    new-array v1, v2, [Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c;->l:Lcom/netease/mpay/oversea/o/a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/o/a;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/netease/mpay/oversea/widget/o;->a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/netease/mpay/oversea/o/g/c;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c;->m:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 12
    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c;->m:Landroid/widget/TextView;

    new-instance v2, Lcom/netease/mpay/oversea/o/g/c$g;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/o/g/c$g;-><init>(Lcom/netease/mpay/oversea/o/g/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/o/g/c;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/mpay/oversea/o/g/c$h;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/o/g/c$h;-><init>(Lcom/netease/mpay/oversea/o/g/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private m()V
    .locals 5

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    const-string v1, "child_protection"

    const-string v2, "child_protection_region"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/o/g/d;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/netease/mpay/oversea/o/g/c;->u:I

    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->j()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/oversea/o/g/c$b;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/o/g/c$b;-><init>(Lcom/netease/mpay/oversea/o/g/c;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/o/g/d;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/netease/mpay/oversea/o/g/d$d;)V

    .line 11
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/o/g/d;->show()V

    return-void
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method private n()V
    .locals 8

    .line 2
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/o/g/c;->s:Z

    const-string v1, "%s \u2014 %s \u2014 %s"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->n:Landroid/widget/TextView;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netease/mpay/oversea/o/g/c;->q:Lcom/netease/mpay/oversea/o/g/b;

    iget-object v7, v7, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v7, v5, v4

    iget-object v4, p0, Lcom/netease/mpay/oversea/o/g/c;->r:Lcom/netease/mpay/oversea/o/g/b;

    iget-object v4, v4, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v4, v5, v3

    iget-object v3, p0, Lcom/netease/mpay/oversea/o/g/c;->p:Lcom/netease/mpay/oversea/o/g/b;

    iget-object v3, v3, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v3, v5, v2

    invoke-static {v6, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->n:Landroid/widget/TextView;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netease/mpay/oversea/o/g/c;->p:Lcom/netease/mpay/oversea/o/g/b;

    iget-object v7, v7, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v7, v5, v4

    iget-object v4, p0, Lcom/netease/mpay/oversea/o/g/c;->q:Lcom/netease/mpay/oversea/o/g/b;

    iget-object v4, v4, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v4, v5, v3

    iget-object v3, p0, Lcom/netease/mpay/oversea/o/g/c;->r:Lcom/netease/mpay/oversea/o/g/b;

    iget-object v3, v3, Lcom/netease/mpay/oversea/o/g/b;->b:Ljava/lang/String;

    aput-object v3, v5, v2

    invoke-static {v6, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/o/g/c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/c;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/o/g/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->l()V

    return-void
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/c;->p:Lcom/netease/mpay/oversea/o/g/b;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/c;->q:Lcom/netease/mpay/oversea/o/g/b;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/o/g/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/o/g/c;->r:Lcom/netease/mpay/oversea/o/g/b;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic w(Lcom/netease/mpay/oversea/o/g/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/o/g/c;->s:Z

    return p0
.end method

.method static synthetic x(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__lvu_person_info:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_region:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/o/g/c;->m:Landroid/widget/TextView;

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/r/f;->P()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 12
    new-instance p3, Lcom/netease/mpay/oversea/o/g/c$d;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/o/g/c$d;-><init>(Lcom/netease/mpay/oversea/o/g/c;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/f;->P()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 21
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->j()Ljava/util/ArrayList;

    move-result-object p2

    iget p3, p0, Lcom/netease/mpay/oversea/o/g/c;->u:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/o/a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/o/g/c;->l:Lcom/netease/mpay/oversea/o/a;

    .line 22
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->l()V

    .line 24
    :cond_2
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 25
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/r/f;->r()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p3, 0x8

    .line 26
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 28
    :cond_3
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->r()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p2, v0}, Lcom/netease/mpay/oversea/o/g/c;->a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 31
    :goto_1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p2

    const-string p3, "child_protection"

    const-string v0, "child_protection_show"

    invoke-virtual {p2, p3, v0}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/o/g/c;->a(Landroid/view/View;)V

    .line 33
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    if-eqz p2, :cond_4

    .line 36
    new-instance p3, Lcom/netease/mpay/oversea/o/g/c$e;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/o/g/c$e;-><init>(Lcom/netease/mpay/oversea/o/g/c;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/f;->P()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->j()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->j()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_6

    .line 68
    :cond_5
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->i()V

    :cond_6
    return-object p1
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 1

    .line 160
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/o/g/c$m;

    .line 163
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/o/g/c$m;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/netease/mpay/oversea/o/g/c;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/r;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/r;->b(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "child_protection"

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/g/c;->h()V

    const/4 v0, 0x1

    return v0
.end method
