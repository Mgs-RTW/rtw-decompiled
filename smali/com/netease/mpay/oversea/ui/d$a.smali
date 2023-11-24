.class Lcom/netease/mpay/oversea/ui/d$a;
.super Ljava/lang/Object;
.source "ChannelLoginApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/e;

.field final synthetic b:Lcom/netease/mpay/oversea/h/c;

.field final synthetic c:Lcom/netease/mpay/oversea/t/c/f;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/e;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/t/c/f;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/d$a;->a:Lcom/netease/mpay/oversea/e;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/d$a;->b:Lcom/netease/mpay/oversea/h/c;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/d$a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/d$a;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$a;->a:Lcom/netease/mpay/oversea/e;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/d$a;->b:Lcom/netease/mpay/oversea/h/c;

    iget-object v1, v1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/d$a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget v2, v2, Lcom/netease/mpay/oversea/t/c/f;->n:I

    const/16 v3, 0x3ee

    invoke-interface {v0, v3, v1, v2}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$a;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$a;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
