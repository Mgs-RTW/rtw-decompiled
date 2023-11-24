.class Lcom/netease/mpay/oversea/l/d$b;
.super Ljava/lang/Object;
.source "InitImpl.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/l/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/netease/mpay/oversea/r/d$a;

.field final synthetic d:Lcom/netease/mpay/oversea/l/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l/d;Landroid/app/Activity;Ljava/lang/Runnable;Lcom/netease/mpay/oversea/r/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/l/d$b;->d:Lcom/netease/mpay/oversea/l/d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/l/d$b;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/l/d$b;->b:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/netease/mpay/oversea/l/d$b;->c:Lcom/netease/mpay/oversea/r/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/d$b;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/l/d$b$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/oversea/l/d$b$b;-><init>(Lcom/netease/mpay/oversea/l/d$b;ILcom/netease/mpay/oversea/h/c;)V

    invoke-static {v0, p2, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/k/c;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/m/b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/l/d$b;->a:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/l/d$b$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/l/d$b$a;-><init>(Lcom/netease/mpay/oversea/l/d$b;)V

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/m/b;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/l/d$b;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 27
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/l/d$b;->d:Lcom/netease/mpay/oversea/l/d;

    iget-object v0, p0, Lcom/netease/mpay/oversea/l/d$b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/l/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/l/d$b;->a(Lcom/netease/mpay/oversea/h/k/c;)V

    return-void
.end method
