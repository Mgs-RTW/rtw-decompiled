.class Lcom/netease/mpay/oversea/n/l/g$f;
.super Lcom/netease/mpay/oversea/widget/r$b;
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
.field final synthetic b:Lcom/netease/mpay/oversea/n/l/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$f;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$f;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->p(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$f;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->c(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/g;->a(Lcom/netease/mpay/oversea/n/l/g;I)I

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$f;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->c(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/g;->a(Lcom/netease/mpay/oversea/n/l/g;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/g$f;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/g;->e(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/g$f;->b:Lcom/netease/mpay/oversea/n/l/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/g;->c(Lcom/netease/mpay/oversea/n/l/g;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/t/d/b;)V

    :cond_0
    return-void
.end method
