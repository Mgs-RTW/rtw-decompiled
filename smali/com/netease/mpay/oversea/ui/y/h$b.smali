.class Lcom/netease/mpay/oversea/ui/y/h$b;
.super Lcom/netease/mpay/oversea/widget/d;
.source "QuickLoginItemVH.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/y/h;->a(Landroid/content/Context;IILcom/netease/mpay/oversea/ui/y/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/ui/y/g$a;

.field final synthetic e:I

.field final synthetic f:Lcom/netease/mpay/oversea/ui/y/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/y/h;Lcom/netease/mpay/oversea/ui/y/g$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/y/h$b;->f:Lcom/netease/mpay/oversea/ui/y/h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/y/h$b;->d:Lcom/netease/mpay/oversea/ui/y/g$a;

    iput p3, p0, Lcom/netease/mpay/oversea/ui/y/h$b;->e:I

    invoke-direct {p0}, Lcom/netease/mpay/oversea/widget/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/h$b;->d:Lcom/netease/mpay/oversea/ui/y/g$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/y/g$a;->b:Lcom/netease/mpay/oversea/ui/y/g$c;

    sget-object v1, Lcom/netease/mpay/oversea/ui/y/g$c;->c:Lcom/netease/mpay/oversea/ui/y/g$c;

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/h$b;->f:Lcom/netease/mpay/oversea/ui/y/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/y/h;->b(Lcom/netease/mpay/oversea/ui/y/h;)Lcom/netease/mpay/oversea/ui/y/g$b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/y/h$b;->f:Lcom/netease/mpay/oversea/ui/y/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/y/h;->b(Lcom/netease/mpay/oversea/ui/y/h;)Lcom/netease/mpay/oversea/ui/y/g$b;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/oversea/ui/y/h$b;->e:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/y/h$b;->d:Lcom/netease/mpay/oversea/ui/y/g$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/y/g$a;->a:Lcom/netease/mpay/oversea/t/d/b;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/y/g$b;->a(ILcom/netease/mpay/oversea/t/d/b;)V

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "delete"

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/trackers/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
