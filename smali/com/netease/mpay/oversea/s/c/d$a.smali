.class Lcom/netease/mpay/oversea/s/c/d$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "SecurityInputEmailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/netease/mpay/oversea/s/c/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/d;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$a;->e:Lcom/netease/mpay/oversea/s/c/d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/s/c/d$a;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$a;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->a(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$a;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->b(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$a;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->l(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    const-string v0, "home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$a;->e:Lcom/netease/mpay/oversea/s/c/d;

    .line 2
    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->w(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    const-string v0, "switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$a;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->N(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$a;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/s/c/d;->H(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/d$a;->e:Lcom/netease/mpay/oversea/s/c/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/d;->O(Lcom/netease/mpay/oversea/s/c/d;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    const-string v0, "security_email"

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    .line 7
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/d$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "return"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
