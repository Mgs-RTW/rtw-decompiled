.class Lcom/netease/mpay/oversea/n/l/b$a;
.super Lcom/netease/mpay/oversea/widget/d;
.source "LoginAllHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/b;->a(Landroid/view/ViewGroup;)V
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/b$a;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/b$a;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/b;->a(Lcom/netease/mpay/oversea/n/l/b;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/b$a;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/b;->e(Lcom/netease/mpay/oversea/n/l/b;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/b$a;->d:Lcom/netease/mpay/oversea/n/l/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/b;->b(Lcom/netease/mpay/oversea/n/l/b;)Lcom/netease/mpay/oversea/ui/h$g;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/ui/h$g;)V

    :cond_0
    return-void
.end method
