.class Lcom/netease/mpay/oversea/s/c/a$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "SecurityEmailHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/s/c/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/netease/mpay/oversea/s/c/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/s/c/a;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/c/a$a;->e:Lcom/netease/mpay/oversea/s/c/a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/s/c/a$a;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/s/c/a$a;->e:Lcom/netease/mpay/oversea/s/c/a;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s/c/a;->a(Lcom/netease/mpay/oversea/s/c/a;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/z/c;->a()V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/s/c/a$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "return"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
