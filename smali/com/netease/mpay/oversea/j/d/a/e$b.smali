.class Lcom/netease/mpay/oversea/j/d/a/e$b;
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
.field final synthetic d:Lcom/netease/mpay/oversea/j/d/a/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/e$b;->d:Lcom/netease/mpay/oversea/j/d/a/e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/e$b;->d:Lcom/netease/mpay/oversea/j/d/a/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/e;->h(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/e$b;->d:Lcom/netease/mpay/oversea/j/d/a/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/a/e;->b(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/e$b;->d:Lcom/netease/mpay/oversea/j/d/a/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/e;->i(Lcom/netease/mpay/oversea/j/d/a/e;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/mpay/oversea/thirdapi/h;->onCancel()V

    return-void
.end method
