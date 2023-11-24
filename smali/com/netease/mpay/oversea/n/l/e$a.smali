.class Lcom/netease/mpay/oversea/n/l/e$a;
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
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/e$a;->d:Lcom/netease/mpay/oversea/n/l/e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/e$a;->d:Lcom/netease/mpay/oversea/n/l/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/e;->a(Lcom/netease/mpay/oversea/n/l/e;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/e$a;->d:Lcom/netease/mpay/oversea/n/l/e;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/e;->b(Lcom/netease/mpay/oversea/n/l/e;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/ui/e$c;->b()V

    :cond_0
    return-void
.end method
