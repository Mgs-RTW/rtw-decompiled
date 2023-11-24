.class Lcom/netease/mpay/oversea/ui/y/b$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "ChannelLoginAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/y/b;->a(ILandroid/view/ViewGroup;II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/t/c/g;

.field final synthetic e:Landroid/view/ViewGroup;

.field final synthetic f:Lcom/netease/mpay/oversea/ui/y/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/y/b;Lcom/netease/mpay/oversea/t/c/g;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y/b$a;->f:Lcom/netease/mpay/oversea/ui/y/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/y/b$a;->d:Lcom/netease/mpay/oversea/t/c/g;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/y/b$a;->e:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y/b$a;->f:Lcom/netease/mpay/oversea/ui/y/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/y/b;->a(Lcom/netease/mpay/oversea/ui/y/b;)Lcom/netease/mpay/oversea/ui/e$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y/b$a;->f:Lcom/netease/mpay/oversea/ui/y/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/y/b;->a(Lcom/netease/mpay/oversea/ui/y/b;)Lcom/netease/mpay/oversea/ui/e$c;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/b$a;->d:Lcom/netease/mpay/oversea/t/c/g;

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/t/c/g;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/y/b$a;->e:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/b$a;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/y/b$a;->d:Lcom/netease/mpay/oversea/t/c/g;

    invoke-static {v1}, Lcom/netease/mpay/oversea/trackers/b;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
