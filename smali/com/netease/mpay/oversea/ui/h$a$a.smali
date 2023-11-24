.class Lcom/netease/mpay/oversea/ui/h$a$a;
.super Lcom/netease/mpay/oversea/e;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/h$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/ui/h$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogFinish(Lcom/netease/mpay/oversea/User;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->d:Z

    if-eqz v1, :cond_1

    .line 2
    iget-object p1, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v2, Lcom/netease/mpay/oversea/h/c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->b:Ljava/lang/String;

    const/16 v3, 0x2713

    invoke-direct {v2, v3, v0}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1, v2}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->c:Lcom/netease/mpay/oversea/e;

    const/16 v2, 0x66

    invoke-static {v1, p1, v2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/n/h;)V

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->c:Lcom/netease/mpay/oversea/e;

    invoke-static {v1, p1, v2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->d:Z

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v2, Lcom/netease/mpay/oversea/h/c;

    invoke-direct {v2, p1, p2}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$a;->c:Lcom/netease/mpay/oversea/e;

    invoke-static {p2, v0, p3, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/ui/h$j;ILcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/n/h;)V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$a;->c:Lcom/netease/mpay/oversea/e;

    const/4 v0, 0x0

    invoke-static {p2, v0, p3, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/n/h;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->c:Lcom/netease/mpay/oversea/e;

    invoke-static {v1, p1, v2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method public onUserLogout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/h$a;->d:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->e:Lcom/netease/mpay/oversea/ui/h;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/h;->a()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$a$a;->b:Lcom/netease/mpay/oversea/ui/h$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$a;->c:Lcom/netease/mpay/oversea/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onUserLogout()V

    :cond_1
    return-void
.end method
