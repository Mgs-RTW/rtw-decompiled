.class Lcom/netease/mpay/oversea/u/c/f$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/u/c/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/u/c/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/u/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/u/c/f$a;->d:Lcom/netease/mpay/oversea/u/c/f;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/u/c/f$a;->d:Lcom/netease/mpay/oversea/u/c/f;

    invoke-static {p1}, Lcom/netease/mpay/oversea/u/c/f;->a(Lcom/netease/mpay/oversea/u/c/f;)Lcom/netease/mpay/oversea/k/f;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/k/b;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/k/b;-><init>()V

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/k/f;->c(Lcom/netease/mpay/oversea/k/c;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/u/c/f$a;->d:Lcom/netease/mpay/oversea/u/c/f;

    invoke-static {v0}, Lcom/netease/mpay/oversea/u/c/f;->b(Lcom/netease/mpay/oversea/u/c/f;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
