.class Lcom/netease/mpay/oversea/j/d/a/e$e;
.super Lcom/netease/mpay/oversea/widget/d;
.source "PasswordHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/a/e;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Lcom/netease/mpay/oversea/j/d/a/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/e;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/e$e;->e:Lcom/netease/mpay/oversea/j/d/a/e;

    iput-object p2, p0, Lcom/netease/mpay/oversea/j/d/a/e$e;->d:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/e$e;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/e$e;->e:Lcom/netease/mpay/oversea/j/d/a/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/e;->j(Lcom/netease/mpay/oversea/j/d/a/e;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_email_inputbox_text_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/h/m/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/e$e;->e:Lcom/netease/mpay/oversea/j/d/a/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/e;->k(Lcom/netease/mpay/oversea/j/d/a/e;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_format_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/e$e;->e:Lcom/netease/mpay/oversea/j/d/a/e;

    const-string v1, "account"

    invoke-static {v0, v1, p1}, Lcom/netease/mpay/oversea/j/d/a/e;->a(Lcom/netease/mpay/oversea/j/d/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/e$e;->e:Lcom/netease/mpay/oversea/j/d/a/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/a/e;->l(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/e$e;->e:Lcom/netease/mpay/oversea/j/d/a/e;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/j/d/a/e;->a(Lcom/netease/mpay/oversea/j/d/a/e;Ljava/lang/String;)V

    return-void
.end method
