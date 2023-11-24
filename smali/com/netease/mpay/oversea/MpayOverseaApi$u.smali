.class Lcom/netease/mpay/oversea/MpayOverseaApi$u;
.super Lcom/netease/mpay/oversea/n/k/g;
.source "MpayOverseaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->pay(Lcom/netease/mpay/oversea/PaymentRequest;Lcom/netease/mpay/oversea/PaymentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/n/k/g<",
        "Lcom/netease/mpay/oversea/q/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/PaymentCallback;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/PaymentCallback;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$u;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/n/k/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$u;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 p2, 0x7d1

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$u;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 v0, 0x7d4

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/q/c/b;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/q/c/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/g;->a:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/q/c/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$u;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/PaymentCallback;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$u;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 v0, 0x7d1

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$u;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 p2, 0x7d4

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$u;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 p2, 0x7d1

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$u;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 v0, 0x7d4

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/q/c/b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$u;->a(Lcom/netease/mpay/oversea/q/c/b;)V

    return-void
.end method
