.class Lcom/netease/mpay/oversea/n/l/j$b;
.super Ljava/lang/Object;
.source "QuickLogin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/y/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/j;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/l/j;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$b;->a:Lcom/netease/mpay/oversea/n/l/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/t/d/b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$b;->a:Lcom/netease/mpay/oversea/n/l/j;

    iget v0, p2, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/j;->a(Lcom/netease/mpay/oversea/n/l/j;I)I

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$b;->a:Lcom/netease/mpay/oversea/n/l/j;

    iget-object v0, p2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/j;->b(Lcom/netease/mpay/oversea/n/l/j;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$b;->a:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/n/l/j;->a(Lcom/netease/mpay/oversea/n/l/j;Lcom/netease/mpay/oversea/t/d/b;)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/t/d/b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$b;->a:Lcom/netease/mpay/oversea/n/l/j;

    iget v0, p2, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/j;->a(Lcom/netease/mpay/oversea/n/l/j;I)I

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$b;->a:Lcom/netease/mpay/oversea/n/l/j;

    iget-object v0, p2, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/n/l/j;->b(Lcom/netease/mpay/oversea/n/l/j;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$b;->a:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/j;->f(Lcom/netease/mpay/oversea/n/l/j;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/j$b;->a:Lcom/netease/mpay/oversea/n/l/j;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/j;->g(Lcom/netease/mpay/oversea/n/l/j;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/t/d/b;)V

    :cond_0
    return-void
.end method
