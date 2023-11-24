.class Lcom/netease/mpay/oversea/s/c/c$g;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "SecurityInputCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/c;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/s/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/s/c/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/c;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->l(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->m(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->p(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 11
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/c;->n(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->o(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/s/a/b;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p1, Lcom/netease/mpay/oversea/s/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ticket"

    .line 17
    :try_start_0
    iget-object v2, p1, Lcom/netease/mpay/oversea/s/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "msg"

    .line 18
    :try_start_1
    iget-object p1, p1, Lcom/netease/mpay/oversea/s/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "email"

    .line 19
    :try_start_2
    iget-object v1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v1}, Lcom/netease/mpay/oversea/s/c/c;->w(Lcom/netease/mpay/oversea/s/c/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->x(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->y(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->z(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/s/c/b;->a(Lcom/netease/mpay/oversea/ui/z/e;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/s/c/c;->a(Lcom/netease/mpay/oversea/s/c/c;Lcom/netease/mpay/oversea/ui/z/e;)V

    goto :goto_0

    :catch_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->A(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/s/a/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 28
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/c;->B(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v2, v3}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/s/c/c$g$b;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/s/c/c$g$b;-><init>(Lcom/netease/mpay/oversea/s/c/c$g;Lcom/netease/mpay/oversea/s/a/b;)V

    .line 29
    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/widget/a$u;->c(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->c(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->d(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->g(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 5
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/c;->e(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->f(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->h(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->i(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->j(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/s/c/c$g$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/s/c/c$g$a;-><init>(Lcom/netease/mpay/oversea/s/c/c$g;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->q(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->r(Lcom/netease/mpay/oversea/s/c/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/c;->u(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 11
    invoke-static {v2}, Lcom/netease/mpay/oversea/s/c/c;->s(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/c$g;->d:Lcom/netease/mpay/oversea/s/c/c;

    .line 12
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/c;->t(Lcom/netease/mpay/oversea/s/c/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/s/a/b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s/c/c$g;->a(Lcom/netease/mpay/oversea/s/a/b;)V

    return-void
.end method
