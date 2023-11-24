.class Lcom/netease/mpay/oversea/ui/h$c$a;
.super Lcom/netease/mpay/oversea/e;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/h$c;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/ui/h$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/h$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/e;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogFinish(Lcom/netease/mpay/oversea/User;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/ui/h$c;->d:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/netease/mpay/oversea/User;->loginType:I

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 2
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v1, p1, Lcom/netease/mpay/oversea/ui/h$c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$c;->c:Lcom/netease/mpay/oversea/e;

    const/16 v3, 0x3e8

    invoke-static {v0, v3, v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;ILjava/lang/String;Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/n/h;)V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$c;->c:Lcom/netease/mpay/oversea/e;

    invoke-static {v1, p1, v2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-boolean v0, p3, Lcom/netease/mpay/oversea/ui/h$c;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v1, p3, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/h$c;->c:Lcom/netease/mpay/oversea/e;

    invoke-static {v0, p1, p2, v1, p3}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;ILjava/lang/String;Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p3, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, p3, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/n/h;)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object p3, p1, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/h$c;->c:Lcom/netease/mpay/oversea/e;

    const/4 v0, 0x0

    invoke-static {p2, v0, p3, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    :goto_0
    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$g;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/n/h;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/h$c;->a:Lcom/netease/mpay/oversea/ui/h$k;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$c;->c:Lcom/netease/mpay/oversea/e;

    invoke-static {v1, p1, v2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Lcom/netease/mpay/oversea/User;Lcom/netease/mpay/oversea/ui/h$k;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method

.method public onUserLogout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$c;->e:Lcom/netease/mpay/oversea/ui/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/h$c$a;->b:Lcom/netease/mpay/oversea/ui/h$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/h$c;->c:Lcom/netease/mpay/oversea/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onUserLogout()V

    :cond_0
    return-void
.end method
