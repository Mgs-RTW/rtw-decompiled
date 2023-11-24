.class Lcom/netease/mpay/oversea/n/l/g$c;
.super Lcom/netease/mpay/oversea/widget/d;
.source "PassportLoginHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/g;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/n/l/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$c;->d:Lcom/netease/mpay/oversea/n/l/g;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$c;->d:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->j(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$c;->d:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->k(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p1}, Lcom/netease/mpay/oversea/ui/e$c;->a()V

    :cond_0
    return-void
.end method
