.class Lcom/netease/mpay/oversea/j/d/a/b$i;
.super Lcom/netease/mpay/oversea/widget/d;
.source "EmailLoginHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/a/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Lcom/netease/mpay/oversea/j/d/a/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/b;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->f:Lcom/netease/mpay/oversea/j/d/a/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->d:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->e:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->e:Landroid/widget/EditText;

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
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->f:Lcom/netease/mpay/oversea/j/d/a/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/b;->b(Lcom/netease/mpay/oversea/j/d/a/b;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_email_inputbox_text_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->f:Lcom/netease/mpay/oversea/j/d/a/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/b;->c(Lcom/netease/mpay/oversea/j/d/a/b;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_email_password_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/h/m/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->f:Lcom/netease/mpay/oversea/j/d/a/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/b;->d(Lcom/netease/mpay/oversea/j/d/a/b;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_format_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->f:Lcom/netease/mpay/oversea/j/d/a/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/b;->e(Lcom/netease/mpay/oversea/j/d/a/b;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_format_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->f:Lcom/netease/mpay/oversea/j/d/a/b;

    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/a/b;->g(Lcom/netease/mpay/oversea/j/d/a/b;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v1

    instance-of v1, v1, Lcom/netease/mpay/oversea/j/a;

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->f:Lcom/netease/mpay/oversea/j/d/a/b;

    invoke-static {v1, p1, v0}, Lcom/netease/mpay/oversea/j/d/a/b;->a(Lcom/netease/mpay/oversea/j/d/a/b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 21
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/b$i;->f:Lcom/netease/mpay/oversea/j/d/a/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/b;->f(Lcom/netease/mpay/oversea/j/d/a/b;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_inherit_pwd_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void
.end method
