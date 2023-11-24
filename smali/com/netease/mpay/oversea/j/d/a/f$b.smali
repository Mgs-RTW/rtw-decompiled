.class Lcom/netease/mpay/oversea/j/d/a/f$b;
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
.field final synthetic d:Lcom/netease/mpay/oversea/j/d/a/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/f$b;->d:Lcom/netease/mpay/oversea/j/d/a/f;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/f$b;->d:Lcom/netease/mpay/oversea/j/d/a/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/f;->j(Lcom/netease/mpay/oversea/j/d/a/f;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/f$b;->d:Lcom/netease/mpay/oversea/j/d/a/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/a/f;->b(Lcom/netease/mpay/oversea/j/d/a/f;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/f$b;->d:Lcom/netease/mpay/oversea/j/d/a/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/f;->k(Lcom/netease/mpay/oversea/j/d/a/f;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/mpay/oversea/thirdapi/h;->onCancel()V

    return-void
.end method
