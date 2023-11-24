.class Lcom/netease/mpay/oversea/ui/d$c;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "ChannelLoginApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/UnBindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/u/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/UnBindCallback;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/UnBindCallback;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/d$c;->d:Lcom/netease/mpay/oversea/UnBindCallback;

    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/d$c;->e:Landroid/app/Activity;

    iput-object p6, p0, Lcom/netease/mpay/oversea/ui/d$c;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    const/16 v0, 0x2717

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0xbbd

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xbb9

    goto :goto_0

    :cond_0
    :pswitch_1
    const/16 p1, 0xbba

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/d$c;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/d$c;->a(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/d$c;->d:Lcom/netease/mpay/oversea/UnBindCallback;

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/netease/mpay/oversea/UnBindCallback;->onLogout()V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/u/a/b;)V
    .locals 12

    .line 11
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/d$c;->d:Lcom/netease/mpay/oversea/UnBindCallback;

    if-eqz p1, :cond_1

    .line 12
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$c;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/d$c;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$c;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/d$c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/t/f/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    :goto_0
    move-object v6, v0

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$c;->d:Lcom/netease/mpay/oversea/UnBindCallback;

    new-instance v11, Lcom/netease/mpay/oversea/User;

    iget-object v2, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/oversea/t/c/f;->c:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    iget-object v4, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v4, v5}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    .line 17
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v5

    iget-object v7, p1, Lcom/netease/mpay/oversea/t/c/f;->p:Ljava/lang/String;

    iget v8, p1, Lcom/netease/mpay/oversea/t/c/f;->n:I

    iget-object v9, p1, Lcom/netease/mpay/oversea/t/c/f;->r:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    .line 19
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/c/g;->a(Ljava/util/ArrayList;)[I

    move-result-object v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/netease/mpay/oversea/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)V

    .line 20
    invoke-interface {v0, v11}, Lcom/netease/mpay/oversea/UnBindCallback;->onSuccess(Lcom/netease/mpay/oversea/User;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$c;->d:Lcom/netease/mpay/oversea/UnBindCallback;

    if-eqz v0, :cond_0

    .line 3
    new-instance v11, Lcom/netease/mpay/oversea/User;

    iget-object v2, p2, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/oversea/n/i/b/d;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 4
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v5

    iget-object v7, p2, Lcom/netease/mpay/oversea/n/i/b/d;->l:Ljava/lang/String;

    iget v8, p2, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    iget-object v9, p2, Lcom/netease/mpay/oversea/n/i/b/d;->s:Ljava/lang/String;

    iget-object p2, p2, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    .line 7
    invoke-static {p2}, Lcom/netease/mpay/oversea/t/c/g;->a(Ljava/util/ArrayList;)[I

    move-result-object v10

    const/4 v4, 0x0

    move-object v1, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Lcom/netease/mpay/oversea/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[I)V

    .line 8
    invoke-interface {v0, v11}, Lcom/netease/mpay/oversea/UnBindCallback;->onSuccess(Lcom/netease/mpay/oversea/User;)V

    :cond_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$c;->e:Landroid/app/Activity;

    iget-object v1, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 2
    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/d$c$a;

    invoke-direct {v3, p0, p1, p2}, Lcom/netease/mpay/oversea/ui/d$c$a;-><init>(Lcom/netease/mpay/oversea/ui/d$c;ILcom/netease/mpay/oversea/h/c;)V

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$c;->d:Lcom/netease/mpay/oversea/UnBindCallback;

    if-eqz v0, :cond_0

    .line 16
    iget-object p1, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/UnBindCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/u/a/b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/d$c;->a(Lcom/netease/mpay/oversea/u/a/b;)V

    return-void
.end method
