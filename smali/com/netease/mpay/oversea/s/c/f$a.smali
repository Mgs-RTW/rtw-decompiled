.class Lcom/netease/mpay/oversea/s/c/f$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "SecurityResultView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/Button;

.field final synthetic e:Lcom/netease/mpay/oversea/s/c/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/f;Landroid/widget/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/f$a;->e:Lcom/netease/mpay/oversea/s/c/f;

    iput-object p2, p0, Lcom/netease/mpay/oversea/s/c/f$a;->d:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/f$a;->e:Lcom/netease/mpay/oversea/s/c/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/f;->a(Lcom/netease/mpay/oversea/s/c/f;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    const-string v0, "security_email"

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/f$a;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "confirm"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
