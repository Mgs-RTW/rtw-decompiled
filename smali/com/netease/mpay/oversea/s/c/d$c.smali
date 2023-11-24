.class Lcom/netease/mpay/oversea/s/c/d$c;
.super Lcom/netease/mpay/oversea/widget/d;
.source "SecurityInputEmailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/Button;

.field final synthetic e:Lcom/netease/mpay/oversea/s/c/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/d;Landroid/widget/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/s/c/d$c;->d:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->P(Lcom/netease/mpay/oversea/s/c/d;)Landroid/widget/EditText;

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
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->Q(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->P(Lcom/netease/mpay/oversea/s/c/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/h/m/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->R(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->c(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_format_error:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto/16 :goto_2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->d(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v3}, Lcom/netease/mpay/oversea/s/c/d;->e(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/s/c/d;->a(Lcom/netease/mpay/oversea/s/c/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->f(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 12
    new-instance p1, Lcom/netease/mpay/oversea/s/b/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->g(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->h(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->h(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->h(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->h(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    move-object v5, v0

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    new-instance v6, Lcom/netease/mpay/oversea/s/c/d$c$a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 15
    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->i(Lcom/netease/mpay/oversea/s/c/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 16
    invoke-static {v7}, Lcom/netease/mpay/oversea/s/c/d;->j(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v6, p0, v0, v1, v7}, Lcom/netease/mpay/oversea/s/c/d$c$a;-><init>(Lcom/netease/mpay/oversea/s/c/d$c;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/s/b/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/k/g;)V

    .line 66
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->F(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->o:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    const/16 v1, 0x79

    if-eq v0, v1, :cond_5

    const/16 v1, 0x83

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    goto :goto_2

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->J(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/s/b/b;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_2

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->I(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/s/b/b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_2

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->M(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/s/b/b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_2

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->L(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/s/b/b;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_2

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->K(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/s/b/b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_2

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->G(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/s/b/b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    .line 135
    :goto_2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$c;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
