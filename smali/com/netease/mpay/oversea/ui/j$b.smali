.class Lcom/netease/mpay/oversea/ui/j$b;
.super Ljava/lang/Object;
.source "GuestInheritGuidance.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/h$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/widget/h$j;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/j;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/j;Lcom/netease/mpay/oversea/widget/h$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/j$b;->a:Lcom/netease/mpay/oversea/widget/h$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->i:Lcom/netease/mpay/oversea/n/h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {v1}, Lcom/netease/mpay/oversea/ui/j;->b(Lcom/netease/mpay/oversea/ui/j;)Lcom/netease/mpay/oversea/n/h;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/j;->c(Lcom/netease/mpay/oversea/ui/j;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->G()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/j;->b(Lcom/netease/mpay/oversea/ui/j;)Lcom/netease/mpay/oversea/n/h;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/j;->c(Lcom/netease/mpay/oversea/ui/j;)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/j;->d(Lcom/netease/mpay/oversea/ui/j;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/j$b;->a:Lcom/netease/mpay/oversea/widget/h$j;

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/ui/j;->a(Lcom/netease/mpay/oversea/ui/j;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/h$k;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j$b;->b:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/j;->e(Lcom/netease/mpay/oversea/ui/j;)V

    return-void
.end method
