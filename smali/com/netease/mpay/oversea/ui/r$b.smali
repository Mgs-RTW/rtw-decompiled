.class Lcom/netease/mpay/oversea/ui/r$b;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "UserCenterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/r;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/u/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/ui/r;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/r;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 25
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/u/a/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v1, p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Lcom/netease/mpay/oversea/u/a/e;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "security_email"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "restore_account"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const/4 v4, 0x0

    .line 6
    invoke-static {v3, v2, v4}, Lcom/netease/mpay/oversea/s/c/b;->c(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/z/e$b;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/r;->a(Lcom/netease/mpay/oversea/ui/r;)Lcom/netease/mpay/oversea/k/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/k/l;->a(Lcom/netease/mpay/oversea/u/a/e;)V

    .line 11
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/r;->a(Lcom/netease/mpay/oversea/ui/r;)Lcom/netease/mpay/oversea/k/l;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/z/c;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/k/l;->a(Ljava/util/HashMap;)V

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/r;->l()V

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/a;->d:Lcom/netease/mpay/oversea/k/j;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/r;->a(Lcom/netease/mpay/oversea/ui/r;)Lcom/netease/mpay/oversea/k/l;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/k/j;->b(Lcom/netease/mpay/oversea/k/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 17
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 20
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance p2, Lcom/netease/mpay/oversea/ui/h$i;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/ui/h$i;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 5
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$l;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$b;->d:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 9
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/u/a/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/r$b;->a(Lcom/netease/mpay/oversea/u/a/e;)V

    return-void
.end method
