.class Lcom/netease/mpay/oversea/s/c/c$f;
.super Lcom/netease/mpay/oversea/widget/d;
.source "SecurityInputCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/Button;

.field final synthetic e:Lcom/netease/mpay/oversea/s/c/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/c;Landroid/widget/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$f;->e:Lcom/netease/mpay/oversea/s/c/c;

    iput-object p2, p0, Lcom/netease/mpay/oversea/s/c/c$f;->d:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$f;->e:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->k(Lcom/netease/mpay/oversea/s/c/c;)Landroid/widget/EditText;

    move-result-object p1

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
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$f;->e:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->b0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$f;->e:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->k(Lcom/netease/mpay/oversea/s/c/c;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$f;->e:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->m0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$f;->e:Lcom/netease/mpay/oversea/s/c/c;

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->w0(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_code_format_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$f;->e:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->H0(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->o:I

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$f;->e:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/s/c/c;->a(Lcom/netease/mpay/oversea/s/c/c;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$f;->e:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/s/c/c;->b(Lcom/netease/mpay/oversea/s/c/c;Ljava/lang/String;)V

    .line 16
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$f;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
