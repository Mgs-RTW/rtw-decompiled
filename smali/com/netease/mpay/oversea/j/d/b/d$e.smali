.class Lcom/netease/mpay/oversea/j/d/b/d$e;
.super Ljava/lang/Object;
.source "EmailUpdateHome.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/b/d;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h/h<",
        "Lcom/netease/mpay/oversea/h/k/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/j/d/b/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/d$e;->a:Lcom/netease/mpay/oversea/j/d/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/d$e;->a:Lcom/netease/mpay/oversea/j/d/b/d;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/k/c;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/d$e;->a:Lcom/netease/mpay/oversea/j/d/b/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/d;->g(Lcom/netease/mpay/oversea/j/d/b/d;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/h/k/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/j/a;->b(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/d$e;->a:Lcom/netease/mpay/oversea/j/d/b/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/d;->d(Lcom/netease/mpay/oversea/j/d/b/d;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/d$e;->a:Lcom/netease/mpay/oversea/j/d/b/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/d;->h(Lcom/netease/mpay/oversea/j/d/b/d;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/d$e;->a:Lcom/netease/mpay/oversea/j/d/b/d;

    .line 4
    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/d;->i(Lcom/netease/mpay/oversea/j/d/b/d;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/j/d/b/d$e;->a:Lcom/netease/mpay/oversea/j/d/b/d;

    invoke-static {v2}, Lcom/netease/mpay/oversea/j/d/b/d;->j(Lcom/netease/mpay/oversea/j/d/b/d;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/j/d/b/d$e;->a:Lcom/netease/mpay/oversea/j/d/b/d;

    .line 5
    invoke-static {v3}, Lcom/netease/mpay/oversea/j/d/b/d;->k(Lcom/netease/mpay/oversea/j/d/b/d;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/j/d/b/d$e;->a:Lcom/netease/mpay/oversea/j/d/b/d;

    invoke-static {v4}, Lcom/netease/mpay/oversea/j/d/b/d;->c(Lcom/netease/mpay/oversea/j/d/b/d;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v4

    check-cast v4, Lcom/netease/mpay/oversea/j/a;

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j/a;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/j/d/b/d$e;->a(Lcom/netease/mpay/oversea/h/k/c;)V

    return-void
.end method
