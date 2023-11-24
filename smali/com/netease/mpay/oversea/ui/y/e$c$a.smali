.class Lcom/netease/mpay/oversea/ui/y/e$c$a;
.super Lcom/netease/mpay/oversea/widget/r$b;
.source "PassportHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/y/e$c;->a(Landroid/content/Context;ILcom/netease/mpay/oversea/ui/y/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/netease/mpay/oversea/ui/y/e$a;

.field final synthetic d:Lcom/netease/mpay/oversea/ui/y/e$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/y/e$c;ILcom/netease/mpay/oversea/ui/y/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y/e$c$a;->d:Lcom/netease/mpay/oversea/ui/y/e$c;

    iput p2, p0, Lcom/netease/mpay/oversea/ui/y/e$c$a;->b:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/y/e$c$a;->c:Lcom/netease/mpay/oversea/ui/y/e$a;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/e$c$a;->d:Lcom/netease/mpay/oversea/ui/y/e$c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/y/e$c;->a:Lcom/netease/mpay/oversea/ui/y/e$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/netease/mpay/oversea/ui/y/e$c$a;->b:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y/e$c$a;->c:Lcom/netease/mpay/oversea/ui/y/e$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/y/e$a;->b:Lcom/netease/mpay/oversea/t/d/b;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/y/e$b;->a(ILcom/netease/mpay/oversea/t/d/b;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
