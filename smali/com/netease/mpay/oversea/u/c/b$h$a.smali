.class Lcom/netease/mpay/oversea/u/c/b$h$a;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/b$h;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/u/c/b$h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/b$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$h$a;->a:Lcom/netease/mpay/oversea/u/c/b$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/trackers/b;->b(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    const-string v0, "account_center"

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/trackers/b;->e(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance p1, Lcom/netease/mpay/oversea/t/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$h$a;->a:Lcom/netease/mpay/oversea/u/c/b$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/u/c/b$h;->d:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->x(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->j()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/t/c/g;

    .line 7
    iget v2, p1, Lcom/netease/mpay/oversea/t/c/f;->l:I

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/t/c/g;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/netease/mpay/oversea/u/c/b$h$a;->a:Lcom/netease/mpay/oversea/u/c/b$h;

    iget-object v2, v2, Lcom/netease/mpay/oversea/u/c/b$h;->d:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v2}, Lcom/netease/mpay/oversea/u/c/b;->y(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    invoke-static {v2, v1}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$h$a;->a:Lcom/netease/mpay/oversea/u/c/b$h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/u/c/b$h;->d:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/b;->A(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/h;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/ui/h$l;

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    new-instance v2, Lcom/netease/mpay/oversea/h/c;

    const/16 v3, 0x2715

    invoke-direct {v2, v3, p2}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/h$l;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object p2, p0, Lcom/netease/mpay/oversea/u/c/b$h$a;->a:Lcom/netease/mpay/oversea/u/c/b$h;

    iget-object p2, p2, Lcom/netease/mpay/oversea/u/c/b$h;->d:Lcom/netease/mpay/oversea/u/c/b;

    .line 14
    invoke-static {p2}, Lcom/netease/mpay/oversea/u/c/b;->z(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p2

    .line 15
    invoke-virtual {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void
.end method
