.class Lcom/netease/mpay/oversea/j/d/b/h$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "RegisterHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/b/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Z

.field final synthetic g:Landroid/widget/ToggleButton;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/netease/mpay/oversea/j/d/b/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/b/h;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/widget/ToggleButton;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->d:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->e:Landroid/widget/EditText;

    iput-boolean p4, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->f:Z

    iput-object p5, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->g:Landroid/widget/ToggleButton;

    iput-object p6, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->h:Ljava/lang/String;

    iput-object p7, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/h;->v(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_setting_hint:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/h;->w(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__set_password:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/h/m/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/h;->x(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_format_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_2
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/h;->y(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_format_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_4

    goto/16 :goto_1

    .line 28
    :cond_4
    iget-boolean v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/h;->c(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_policy_error:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->h:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->i:Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-static {v0, v1, v4}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    const-string v4, "account"

    invoke-static {v1, v4, p1}, Lcom/netease/mpay/oversea/j/d/b/h;->a(Lcom/netease/mpay/oversea/j/d/b/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    const-string v4, "pwd"

    invoke-static {v1, v4, v0}, Lcom/netease/mpay/oversea/j/d/b/h;->b(Lcom/netease/mpay/oversea/j/d/b/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/h;->d(Lcom/netease/mpay/oversea/j/d/b/h;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v1, p1, v0}, Lcom/netease/mpay/oversea/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/h;->e(Lcom/netease/mpay/oversea/j/d/b/h;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, v4, :cond_6

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/h;->f(Lcom/netease/mpay/oversea/j/d/b/h;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, v4, :cond_6

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/h;->g(Lcom/netease/mpay/oversea/j/d/b/h;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object v4, Lcom/netease/mpay/oversea/n/h;->v:Lcom/netease/mpay/oversea/n/h;

    if-ne v1, v4, :cond_7

    :cond_6
    const/4 v2, 0x1

    .line 36
    :cond_7
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/f;->T()Z

    move-result v1

    if-nez v1, :cond_8

    .line 37
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/h;->h(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v1, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 38
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/h;->i(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v1, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 39
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/h;->j(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__email_register_data_not_crossplatorm_hint:I

    invoke-static {v1, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 40
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/h;->l(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v4

    new-instance v7, Lcom/netease/mpay/oversea/j/d/b/h$a$a;

    invoke-direct {v7, p0, p1, v0, v2}, Lcom/netease/mpay/oversea/j/d/b/h$a$a;-><init>(Lcom/netease/mpay/oversea/j/d/b/h$a;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v9, Lcom/netease/mpay/oversea/j/d/b/h$a$b;

    invoke-direct {v9, p0}, Lcom/netease/mpay/oversea/j/d/b/h$a$b;-><init>(Lcom/netease/mpay/oversea/j/d/b/h$a;)V

    invoke-static/range {v4 .. v9}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    .line 52
    :cond_8
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {v1, p1, v0, v2}, Lcom/netease/mpay/oversea/j/d/b/h;->a(Lcom/netease/mpay/oversea/j/d/b/h;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 53
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/h$a;->j:Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/h;->z(Lcom/netease/mpay/oversea/j/d/b/h;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_inherit_pwd_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void
.end method
