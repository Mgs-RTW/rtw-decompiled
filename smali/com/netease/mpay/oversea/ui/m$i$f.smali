.class Lcom/netease/mpay/oversea/ui/m$i$f;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/m$i;->a(ZZLcom/netease/mpay/oversea/h/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/netease/mpay/oversea/ui/m$i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/m$i;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$f;->c:Lcom/netease/mpay/oversea/ui/m$i;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/ui/m$i$f;->a:Z

    iput-boolean p3, p0, Lcom/netease/mpay/oversea/ui/m$i$f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/ui/m$i$f;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$f;->c:Lcom/netease/mpay/oversea/ui/m$i;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/m$i;->b(Lcom/netease/mpay/oversea/ui/m$i;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean p2, p0, Lcom/netease/mpay/oversea/ui/m$i$f;->b:Z

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m$i$f;->c:Lcom/netease/mpay/oversea/ui/m$i;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/m$i;->a(Lcom/netease/mpay/oversea/ui/m$i;)V

    :goto_0
    return-void
.end method
