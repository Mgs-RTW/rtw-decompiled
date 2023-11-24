.class Lcom/netease/mpay/oversea/s/c/a$f;
.super Ljava/lang/Object;
.source "SecurityEmailHome.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/j$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/a;->c(Lcom/netease/mpay/oversea/ui/z/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/z/e;

.field final synthetic b:Lcom/netease/mpay/oversea/s/c/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/a;Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/a$f;->b:Lcom/netease/mpay/oversea/s/c/a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/s/c/a$f;->a:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a$f;->b:Lcom/netease/mpay/oversea/s/c/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/s/c/a$f;->a:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/s/c/a;->a(Lcom/netease/mpay/oversea/s/c/a;Lcom/netease/mpay/oversea/ui/z/e;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a$f;->b:Lcom/netease/mpay/oversea/s/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/a;->b(Lcom/netease/mpay/oversea/s/c/a;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a$f;->b:Lcom/netease/mpay/oversea/s/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/a;->c(Lcom/netease/mpay/oversea/s/c/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a$f;->b:Lcom/netease/mpay/oversea/s/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/a;->d(Lcom/netease/mpay/oversea/s/c/a;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/s/c/a$f$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/s/c/a$f$a;-><init>(Lcom/netease/mpay/oversea/s/c/a$f;)V

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    return-void
.end method
