.class Lcom/netease/mpay/oversea/n/l/h$f;
.super Ljava/lang/Object;
.source "PassportLoginHome.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/a0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/h;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/l/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$f;->a:Lcom/netease/mpay/oversea/n/l/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$f;->a:Lcom/netease/mpay/oversea/n/l/h;

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$f;->a:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/h;->k(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/h$f;->a:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/h;->m(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/ui/e$c;->onLogout()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/n/l/h$f;->a:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {p3}, Lcom/netease/mpay/oversea/n/l/h;->i(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/n/l/h$f;->a:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {p3}, Lcom/netease/mpay/oversea/n/l/h;->j(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p3, p1, p2}, Lcom/netease/mpay/oversea/ui/e$c;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/h$f;->a:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/h;->n(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/h$f;->a:Lcom/netease/mpay/oversea/n/l/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/h;->o(Lcom/netease/mpay/oversea/n/l/h;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/e$c;->a(ILcom/netease/mpay/oversea/h/c;)V

    :cond_0
    return-void
.end method
