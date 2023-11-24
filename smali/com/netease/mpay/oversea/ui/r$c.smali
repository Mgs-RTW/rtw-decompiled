.class Lcom/netease/mpay/oversea/ui/r$c;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "UserCenterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/r;->a(Lcom/netease/mpay/oversea/t/c/g;)V
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
.field final synthetic d:Lcom/netease/mpay/oversea/t/c/g;

.field final synthetic e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field final synthetic f:Lcom/netease/mpay/oversea/ui/r;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/r;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iput-object p5, p0, Lcom/netease/mpay/oversea/ui/r$c;->d:Lcom/netease/mpay/oversea/t/c/g;

    iput-object p6, p0, Lcom/netease/mpay/oversea/ui/r$c;->e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 14
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 15
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n/i/b/e;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r$c;->d:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/n/i/b/e;->b(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$i;

    invoke-direct {v1, v0}, Lcom/netease/mpay/oversea/ui/h$i;-><init>(Z)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 21
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->d:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    new-instance p1, Lcom/netease/mpay/oversea/ui/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/r$c;->e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v4, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {v4, v2, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v2, v1, v3, v4}, Lcom/netease/mpay/oversea/ui/f;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 28
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto :goto_1

    .line 29
    :cond_3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->d:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    new-instance p1, Lcom/netease/mpay/oversea/ui/n;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v2, v1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/a;->e:Lcom/netease/mpay/oversea/ui/z/c;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/r$c;->e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    new-instance v4, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {v4, v2, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p1, v2, v1, v3, v4}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 31
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto :goto_1

    .line 33
    :cond_4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$c;->d:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/r$c;->e:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p2, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v1, Lcom/netease/mpay/oversea/ui/h$k;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v1, v2, p1, p2}, Lcom/netease/mpay/oversea/ui/h$k;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance p2, Lcom/netease/mpay/oversea/ui/h$i;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/ui/h$i;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 5
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/h;

    new-instance v2, Lcom/netease/mpay/oversea/ui/h$l;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v2, v0, p1}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/r$c;->f:Lcom/netease/mpay/oversea/ui/r;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/r;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 11
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    .line 12
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/r$c;->a(Lcom/netease/mpay/oversea/n/i/b/e;)V

    return-void
.end method
