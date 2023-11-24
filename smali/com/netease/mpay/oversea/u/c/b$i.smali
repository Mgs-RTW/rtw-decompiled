.class Lcom/netease/mpay/oversea/u/c/b$i;
.super Lcom/netease/mpay/oversea/widget/d;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/b;->c(Lcom/netease/mpay/oversea/ui/z/e;)Lcom/netease/mpay/oversea/ui/z/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/u/c/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/b$i;->d:Lcom/netease/mpay/oversea/u/c/b;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$i;->d:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->q(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/u/c/b$i;->d:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v1}, Lcom/netease/mpay/oversea/u/c/b;->B(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/b$i;->d:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/b;->q(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/t/c/f;->o:Z

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/c/b$i;->d:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v2}, Lcom/netease/mpay/oversea/u/c/b;->C(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v3, "quick_login_off"

    goto :goto_0

    :cond_1
    const-string v3, "quick_login_on"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/netease/mpay/oversea/u/b/b;

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/c/b$i;->d:Lcom/netease/mpay/oversea/u/c/b;

    .line 7
    invoke-static {v2}, Lcom/netease/mpay/oversea/u/c/b;->D(Lcom/netease/mpay/oversea/u/c/b;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/c/b$i;->d:Lcom/netease/mpay/oversea/u/c/b;

    .line 8
    invoke-static {v2}, Lcom/netease/mpay/oversea/u/c/b;->q(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v2

    iget-object v7, v2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/u/c/b$i;->d:Lcom/netease/mpay/oversea/u/c/b;

    invoke-static {v2}, Lcom/netease/mpay/oversea/u/c/b;->q(Lcom/netease/mpay/oversea/u/c/b;)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v2

    iget-object v8, v2, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    xor-int/lit8 v9, v0, 0x1

    new-instance v10, Lcom/netease/mpay/oversea/u/c/b$i$a;

    invoke-direct {v10, p0, p1, v0}, Lcom/netease/mpay/oversea/u/c/b$i$a;-><init>(Lcom/netease/mpay/oversea/u/c/b$i;Landroid/view/View;Z)V

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/netease/mpay/oversea/u/b/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/h/h;)V

    .line 38
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method
