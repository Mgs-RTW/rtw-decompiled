.class public Lcom/netease/mpay/oversea/s/c/f;
.super Lcom/netease/mpay/oversea/ui/z/a;
.source "SecurityResultView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/z/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/s/c/f;)Lcom/netease/mpay/oversea/ui/z/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 2
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__security_mail_result:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_bar_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 5
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->f:Lcom/netease/mpay/oversea/ui/z/d;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/z/d;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__tips:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 7
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    iget p3, p3, Lcom/netease/mpay/oversea/ui/z/e;->o:I

    const/16 v0, 0x67

    if-eq p3, v0, :cond_2

    const/16 v0, 0x73

    if-eq p3, v0, :cond_1

    const/16 v0, 0x85

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_unbind_success:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_edit_success:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/z/a;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_setting_success:I

    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_0
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 36
    new-instance p3, Lcom/netease/mpay/oversea/s/c/f$a;

    invoke-direct {p3, p0, p2}, Lcom/netease/mpay/oversea/s/c/f$a;-><init>(Lcom/netease/mpay/oversea/s/c/f;Landroid/widget/Button;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/a;->g:Lcom/netease/mpay/oversea/ui/z/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->o:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_3

    const/16 v1, 0x73

    if-eq v0, v1, :cond_2

    const/16 v1, 0x85

    if-eq v0, v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "unbind_backup_email_success"

    goto :goto_0

    :cond_2
    const-string v0, "modify_backup_email_success"

    goto :goto_0

    :cond_3
    const-string v0, "set_backup_email_success"

    :goto_0
    return-object v0
.end method
