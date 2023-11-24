.class Lcom/netease/mpay/oversea/j/d/b/a$i;
.super Lcom/netease/mpay/oversea/widget/d;
.source "EmailLoginHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/b/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/j/d/b/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/a$i;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/a$i;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/a;->l(Lcom/netease/mpay/oversea/j/d/b/a;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/a$i;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/a;->f(Lcom/netease/mpay/oversea/j/d/b/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/a$i;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    .line 2
    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/a;->g(Lcom/netease/mpay/oversea/j/d/b/a;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/a$i;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/a;->h(Lcom/netease/mpay/oversea/j/d/b/a;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/a$i;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/a;->i(Lcom/netease/mpay/oversea/j/d/b/a;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->j()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/a$i;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    .line 5
    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/a;->j(Lcom/netease/mpay/oversea/j/d/b/a;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/a$i;->d:Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/a;->k(Lcom/netease/mpay/oversea/j/d/b/a;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object v6

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/netease/mpay/oversea/j/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method
