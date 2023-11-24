.class Lcom/netease/mpay/oversea/MpayOverseaApi$r;
.super Lcom/netease/mpay/oversea/o/b;
.source "MpayOverseaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->openLVU(Lcom/netease/mpay/oversea/OnLVUCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/OnLVUCallback;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/OnLVUCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$r;->b:Lcom/netease/mpay/oversea/OnLVUCallback;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/o/e/d;)V
    .locals 1

    const-string p3, "openLVU"

    const-string v0, "success!"

    .line 1
    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$r;->b:Lcom/netease/mpay/oversea/OnLVUCallback;

    invoke-interface {p3, p1, p2}, Lcom/netease/mpay/oversea/OnLVUCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 1

    const-string p3, "openLVU"

    const-string v0, "failed"

    .line 1
    invoke-static {p3, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$r;->b:Lcom/netease/mpay/oversea/OnLVUCallback;

    invoke-interface {p3, p1, p2}, Lcom/netease/mpay/oversea/OnLVUCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method
