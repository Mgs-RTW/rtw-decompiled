.class Lcom/netease/mpay/oversea/u/c/g$a;
.super Ljava/lang/Object;
.source "WebContentView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/g;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/u/c/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/g;->f(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {v1}, Lcom/netease/mpay/oversea/u/c/g;->b(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    .line 2
    invoke-static {v2}, Lcom/netease/mpay/oversea/u/c/g;->a(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/z/c;->b()Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/ui/z/e;

    .line 3
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/g;->h(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/ui/h$l;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->m:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    .line 6
    invoke-static {p2}, Lcom/netease/mpay/oversea/u/c/g;->g(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p2

    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/g;->i(Lcom/netease/mpay/oversea/u/c/g;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/u/c/g$a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/u/c/g$a$a;-><init>(Lcom/netease/mpay/oversea/u/c/g$a;)V

    invoke-static {p1, p2, v0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/g$a;->a:Lcom/netease/mpay/oversea/u/c/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/g;->m(Lcom/netease/mpay/oversea/u/c/g;)Lcom/netease/mpay/oversea/ui/w;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/n/i/b/d;)V

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
