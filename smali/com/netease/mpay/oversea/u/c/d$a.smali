.class Lcom/netease/mpay/oversea/u/c/d$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "NewGuestView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/u/c/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/d$a;->d:Lcom/netease/mpay/oversea/u/c/d;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/u/c/d$a$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/u/c/d$a$a;-><init>(Lcom/netease/mpay/oversea/u/c/d$a;)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/d$a;->d:Lcom/netease/mpay/oversea/u/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/d;->b(Lcom/netease/mpay/oversea/u/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/d$a;->d:Lcom/netease/mpay/oversea/u/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/d;->b(Lcom/netease/mpay/oversea/u/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/d$a;->d:Lcom/netease/mpay/oversea/u/c/d;

    .line 9
    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/d;->b(Lcom/netease/mpay/oversea/u/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/d$a;->d:Lcom/netease/mpay/oversea/u/c/d;

    invoke-static {v1}, Lcom/netease/mpay/oversea/u/c/d;->b(Lcom/netease/mpay/oversea/u/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/d$a;->d:Lcom/netease/mpay/oversea/u/c/d;

    .line 12
    invoke-static {v1}, Lcom/netease/mpay/oversea/u/c/d;->b(Lcom/netease/mpay/oversea/u/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/d$a;->d:Lcom/netease/mpay/oversea/u/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/d;->b(Lcom/netease/mpay/oversea/u/c/d;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Ljava/lang/Runnable;Lcom/netease/mpay/oversea/t/c/f;)V

    goto :goto_2

    .line 16
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/d$a;->d:Lcom/netease/mpay/oversea/u/c/d;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->i:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Ljava/lang/Runnable;Lcom/netease/mpay/oversea/n/h;)V

    goto :goto_2

    .line 17
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void
.end method
