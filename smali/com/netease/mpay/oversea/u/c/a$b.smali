.class Lcom/netease/mpay/oversea/u/c/a$b;
.super Lcom/netease/mpay/oversea/widget/d;
.source "BindView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/a;->b(ZZLcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/n/i/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Lcom/netease/mpay/oversea/u/c/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$b;->e:Lcom/netease/mpay/oversea/u/c/a;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/u/c/a$b;->d:Z

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/u/c/a$b;->d:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$b;->e:Lcom/netease/mpay/oversea/u/c/a;

    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->H:Lcom/netease/mpay/oversea/t/c/g;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/u/c/a;->b(Lcom/netease/mpay/oversea/u/c/a;Lcom/netease/mpay/oversea/t/c/g;)V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$b;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->u(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "update_account"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/a$b;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/a;->v(Lcom/netease/mpay/oversea/u/c/a;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$b;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->x(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/r;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/a$b;->e:Lcom/netease/mpay/oversea/u/c/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/a;->y(Lcom/netease/mpay/oversea/u/c/a;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "reset_password"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
