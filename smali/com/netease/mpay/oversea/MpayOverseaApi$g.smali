.class Lcom/netease/mpay/oversea/MpayOverseaApi$g;
.super Ljava/lang/Object;
.source "MpayOverseaApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/widget/a$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->openBindCenter(Lcom/netease/mpay/oversea/MpayLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/MpayLoginCallback;

.field final synthetic b:Lcom/netease/mpay/oversea/h/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/MpayLoginCallback;Lcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$g;->a:Lcom/netease/mpay/oversea/MpayLoginCallback;

    iput-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$g;->b:Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$g;->a:Lcom/netease/mpay/oversea/MpayLoginCallback;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$g;->b:Lcom/netease/mpay/oversea/h/c;

    iget-object v1, v1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    const/16 v2, 0x3eb

    const/16 v3, 0x66

    invoke-interface {v0, v2, v1, v3}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    return-void
.end method
