.class Lcom/netease/mpay/oversea/j/d/b/e$l;
.super Ljava/lang/Object;
.source "EmailVerifyCode.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/b/e;->a(ZLjava/lang/String;Ljava/lang/String;Z)V
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
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/j/d/b/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/b/e;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->d:Lcom/netease/mpay/oversea/j/d/b/e;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->a:Z

    iput-object p3, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->c:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->d:Lcom/netease/mpay/oversea/j/d/b/e;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/k/c;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->d:Lcom/netease/mpay/oversea/j/d/b/e;

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/j/d/b/e;->a(Lcom/netease/mpay/oversea/j/d/b/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->d:Lcom/netease/mpay/oversea/j/d/b/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/e;->m(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->d:Lcom/netease/mpay/oversea/j/d/b/e;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/e;->l(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->d:Lcom/netease/mpay/oversea/j/d/b/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/e;->n(Lcom/netease/mpay/oversea/j/d/b/e;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/e$l;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/h;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/j/d/b/e$l;->a(Lcom/netease/mpay/oversea/h/k/c;)V

    return-void
.end method
