.class Lcom/netease/mpay/oversea/j/d/b/g$i;
.super Ljava/lang/Object;
.source "PasswordNew.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/a0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/b/g;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/j/d/b/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/b/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 10
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/g;->p(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/h;->b(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/g;->q(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget-object p2, Lcom/netease/mpay/oversea/n/h;->x:Lcom/netease/mpay/oversea/n/h;

    if-eq p1, p2, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/b/g;->x(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {p2}, Lcom/netease/mpay/oversea/j/d/b/g;->r(Lcom/netease/mpay/oversea/j/d/b/g;)Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    .line 6
    invoke-static {p3}, Lcom/netease/mpay/oversea/j/d/b/g;->s(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p3

    check-cast p3, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/b/g;->t(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    .line 7
    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/b/g;->u(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-static {v2}, Lcom/netease/mpay/oversea/j/d/b/g;->v(Lcom/netease/mpay/oversea/j/d/b/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/j/a;

    .line 8
    invoke-static {p2, p3, v0, v1, v2}, Lcom/netease/mpay/oversea/j/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j/a;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/b/g$i;->a:Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method
