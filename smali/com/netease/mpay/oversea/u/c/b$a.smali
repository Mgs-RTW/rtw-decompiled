.class Lcom/netease/mpay/oversea/u/c/b$a;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/j$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/b;->b(Lcom/netease/mpay/oversea/ui/z/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/z/e;

.field final synthetic b:Lcom/netease/mpay/oversea/u/c/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/b;Lcom/netease/mpay/oversea/ui/z/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$a;->b:Lcom/netease/mpay/oversea/u/c/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/u/c/b$a;->a:Lcom/netease/mpay/oversea/ui/z/e;

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
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$a;->b:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->O(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/b$a;->a:Lcom/netease/mpay/oversea/ui/z/e;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$a;->b:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->L(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$a;->b:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->M(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$a;->b:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->N(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/u/c/b$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/u/c/b$a$a;-><init>(Lcom/netease/mpay/oversea/u/c/b$a;)V

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
