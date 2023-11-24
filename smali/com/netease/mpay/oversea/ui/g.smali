.class public Lcom/netease/mpay/oversea/ui/g;
.super Lcom/netease/mpay/oversea/ui/a;
.source "FeedbackHandler.java"


# instance fields
.field private f:Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

.field private g:Lcom/netease/mpay/oversea/t/c/f;

.field private h:Landroid/widget/EditText;

.field private i:Lcom/netease/mpay/oversea/h/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/mpay/oversea/h/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/g;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/g;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/g;->toast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/g;->k()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/ui/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/g;->l()V

    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/h;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/g;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;->a()Lcom/netease/mpay/oversea/FeedbackCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/g;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;->a()Lcom/netease/mpay/oversea/FeedbackCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/FeedbackCallback;->onFailure()V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/g;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-static {v6}, Lcom/netease/mpay/oversea/h/m/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/g/d;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/g;->g:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v4, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/ui/g;->i:Lcom/netease/mpay/oversea/h/h;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/netease/mpay/oversea/g/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 5
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__improve_user_experience_editor_title:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_0
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "data"

    .line 3
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/g;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/g;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/g;->g:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/ui/g$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/ui/g$a;-><init>(Lcom/netease/mpay/oversea/ui/g;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/g;->i:Lcom/netease/mpay/oversea/h/h;

    .line 35
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__feedback:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 36
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__skip:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/ui/g$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/g$b;-><init>(Lcom/netease/mpay/oversea/ui/g;)V

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__submit:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/ui/g$c;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/g$c;-><init>(Lcom/netease/mpay/oversea/ui/g;)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__input:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/g;->h:Landroid/widget/EditText;

    .line 55
    new-instance v0, Lcom/netease/mpay/oversea/ui/g$d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/g$d;-><init>(Lcom/netease/mpay/oversea/ui/g;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    .line 56
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/g;->k()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/g;->k()V

    const/4 v0, 0x1

    return v0
.end method
