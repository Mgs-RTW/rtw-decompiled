.class Lcom/netease/mpay/oversea/n/l/b$d;
.super Lcom/netease/mpay/oversea/widget/d;
.source "LoginAllHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/b;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/n/l/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/b$d;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/b$d;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/b;->k(Lcom/netease/mpay/oversea/n/l/b;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/b$d;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/b;->c(Lcom/netease/mpay/oversea/n/l/b;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/b$d;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/b;->l(Lcom/netease/mpay/oversea/n/l/b;)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/t/c/g;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/b$d;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/b;->d(Lcom/netease/mpay/oversea/n/l/b;)Landroid/app/Activity;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/b$d;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/l/b;->l(Lcom/netease/mpay/oversea/n/l/b;)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->K:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/trackers/b$b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "last_login"

    .line 6
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
