.class Lcom/netease/mpay/oversea/ui/w$b;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "WebViewLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/n/i/b/d;ZLcom/netease/mpay/oversea/t/c/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/n/i/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/t/c/f;

.field final synthetic e:Lcom/netease/mpay/oversea/n/i/b/d;

.field final synthetic f:Z

.field final synthetic g:Lcom/netease/mpay/oversea/ui/w;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/w;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b;->g:Lcom/netease/mpay/oversea/ui/w;

    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/w$b;->d:Lcom/netease/mpay/oversea/t/c/f;

    iput-object p6, p0, Lcom/netease/mpay/oversea/ui/w$b;->e:Lcom/netease/mpay/oversea/n/i/b/d;

    iput-boolean p7, p0, Lcom/netease/mpay/oversea/ui/w$b;->f:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b;->g:Lcom/netease/mpay/oversea/ui/w;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w$b;->d:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$b;->e:Lcom/netease/mpay/oversea/n/i/b/d;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/w$b;->f:Z

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n/i/b/e;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$b;->d:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/e;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b;->g:Lcom/netease/mpay/oversea/ui/w;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w$b;->d:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$b;->e:Lcom/netease/mpay/oversea/n/i/b/d;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/w$b;->f:Z

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b;->g:Lcom/netease/mpay/oversea/ui/w;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/w$b;->d:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w$b;->e:Lcom/netease/mpay/oversea/n/i/b/d;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/ui/w$b;->f:Z

    invoke-static {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b;->g:Lcom/netease/mpay/oversea/ui/w;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/w$b;->d:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w$b;->e:Lcom/netease/mpay/oversea/n/i/b/d;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/ui/w$b;->f:Z

    invoke-static {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$b;->g:Lcom/netease/mpay/oversea/ui/w;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/w$b;->d:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/w$b;->e:Lcom/netease/mpay/oversea/n/i/b/d;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/w$b;->f:Z

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/n/i/b/d;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/w$b;->a(Lcom/netease/mpay/oversea/n/i/b/e;)V

    return-void
.end method
