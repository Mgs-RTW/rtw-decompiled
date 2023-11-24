.class Lcom/netease/mpay/oversea/MpayOverseaApi$i$a;
.super Lcom/netease/mpay/oversea/n/k/b$a;
.source "MpayOverseaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi$i;->a(Lcom/netease/mpay/oversea/m/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi$i;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/b$a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/n/i/b/e;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lcom/netease/mpay/oversea/n/i/b/e;->f:Lcom/netease/mpay/oversea/n/i/b/e$a;

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/i/b/e$a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/n/i/b/e;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lcom/netease/mpay/oversea/n/i/b/e;->f:Lcom/netease/mpay/oversea/n/i/b/e$a;

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/i/b/e$a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$i$a;->b(Lcom/netease/mpay/oversea/n/i/b/e;)V

    return-void
.end method
