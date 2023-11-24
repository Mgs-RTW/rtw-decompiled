.class Lcom/netease/mpay/oversea/ui/m$i$i;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m$i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/m$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$i;->a:Lcom/netease/mpay/oversea/ui/m$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/e;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$i;->a:Lcom/netease/mpay/oversea/ui/m$i;

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m$i;->b()Lcom/netease/mpay/oversea/n/h;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$i;->a:Lcom/netease/mpay/oversea/ui/m$i;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/m$i;->b(Lcom/netease/mpay/oversea/ui/m$i;)V

    goto :goto_1

    .line 7
    :cond_1
    sget-object p1, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m$i$i;->a:Lcom/netease/mpay/oversea/ui/m$i;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/m$i;->b()Lcom/netease/mpay/oversea/n/h;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$i;->a:Lcom/netease/mpay/oversea/ui/m$i;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/m$i;->a(Lcom/netease/mpay/oversea/ui/m$i;)V

    :goto_1
    return-void
.end method
