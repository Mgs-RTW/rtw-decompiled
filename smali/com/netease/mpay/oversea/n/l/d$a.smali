.class Lcom/netease/mpay/oversea/n/l/d$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "LoginHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/d;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/n/l/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/d$a;->d:Lcom/netease/mpay/oversea/n/l/d;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/d$a;->d:Lcom/netease/mpay/oversea/n/l/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/d;->a(Lcom/netease/mpay/oversea/n/l/d;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/d$a;->d:Lcom/netease/mpay/oversea/n/l/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/d;->c(Lcom/netease/mpay/oversea/n/l/d;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/d$a;->d:Lcom/netease/mpay/oversea/n/l/d;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/d;->b(Lcom/netease/mpay/oversea/n/l/d;)Lcom/netease/mpay/oversea/ui/h$g;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    :cond_0
    return-void
.end method
