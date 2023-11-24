.class Lcom/netease/mpay/oversea/n/l/e$c;
.super Lcom/netease/mpay/oversea/widget/d;
.source "LoginMore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/n/l/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/e$c;->d:Lcom/netease/mpay/oversea/n/l/e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->S()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/e$c;->d:Lcom/netease/mpay/oversea/n/l/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/e;->f(Lcom/netease/mpay/oversea/n/l/e;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/z/c;->a()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/e$c;->d:Lcom/netease/mpay/oversea/n/l/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/e;->g(Lcom/netease/mpay/oversea/n/l/e;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/e$c;->d:Lcom/netease/mpay/oversea/n/l/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/e;->h(Lcom/netease/mpay/oversea/n/l/e;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/ui/e$c;->a()V

    :cond_1
    :goto_0
    return-void
.end method
