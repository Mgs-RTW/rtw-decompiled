.class Lcom/netease/mpay/oversea/j/d/a/f$g;
.super Lcom/netease/mpay/oversea/widget/d;
.source "PasswordNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/a/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Lcom/netease/mpay/oversea/j/d/a/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/f;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->f:Lcom/netease/mpay/oversea/j/d/a/f;

    iput-object p2, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->d:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->e:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->f:Lcom/netease/mpay/oversea/j/d/a/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/f;->o(Lcom/netease/mpay/oversea/j/d/a/f;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_password_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->f:Lcom/netease/mpay/oversea/j/d/a/f;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/j/d/a/f;->a(Lcom/netease/mpay/oversea/j/d/a/f;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->f:Lcom/netease/mpay/oversea/j/d/a/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/f;->n(Lcom/netease/mpay/oversea/j/d/a/f;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_inherit_pwd_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->f:Lcom/netease/mpay/oversea/j/d/a/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/f;->m(Lcom/netease/mpay/oversea/j/d/a/f;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_format_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/f$g;->f:Lcom/netease/mpay/oversea/j/d/a/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/f;->l(Lcom/netease/mpay/oversea/j/d/a/f;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__set_password:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void
.end method
