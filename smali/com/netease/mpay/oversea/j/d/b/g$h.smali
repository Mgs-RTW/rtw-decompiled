.class Lcom/netease/mpay/oversea/j/d/b/g$h;
.super Ljava/lang/Object;
.source "PasswordNew.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/b/g;->d(Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/j/d/b/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/b/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    iput-object p2, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/k/c;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/g;->g(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j/a;->i()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/g;->h(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/g;->o(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/g;->i(Lcom/netease/mpay/oversea/j/d/b/g;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    .line 5
    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/g;->j(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {v2}, Lcom/netease/mpay/oversea/j/d/b/g;->k(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    .line 6
    invoke-static {v3}, Lcom/netease/mpay/oversea/j/d/b/g;->m(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/j/d/b/g$h;->b:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {v4}, Lcom/netease/mpay/oversea/j/d/b/g;->n(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v4

    check-cast v4, Lcom/netease/mpay/oversea/j/a;

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/j/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j/a;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/j/d/b/g$h;->a(Lcom/netease/mpay/oversea/h/k/c;)V

    return-void
.end method
