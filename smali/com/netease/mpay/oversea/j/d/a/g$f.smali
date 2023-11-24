.class Lcom/netease/mpay/oversea/j/d/a/g$f;
.super Lcom/netease/mpay/oversea/widget/d;
.source "RegisterHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/a/g;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/j/d/a/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/g$f;->d:Lcom/netease/mpay/oversea/j/d/a/g;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/c;->b()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/g$f;->d:Lcom/netease/mpay/oversea/j/d/a/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/g;->k(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/g$f;->d:Lcom/netease/mpay/oversea/j/d/a/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/a/g;->b(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/g$f;->d:Lcom/netease/mpay/oversea/j/d/a/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/g;->u(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/mpay/oversea/thirdapi/h;->onCancel()V

    return-void
.end method
