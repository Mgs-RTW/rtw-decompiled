.class Lcom/netease/mpay/oversea/MpayOverseaApi$i;
.super Ljava/lang/Object;
.source "MpayOverseaApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/m/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/n/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/m/a<",
        "Lcom/netease/mpay/oversea/m/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/h;

.field final synthetic b:Lcom/netease/mpay/oversea/t/c/f;

.field final synthetic c:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->a:Lcom/netease/mpay/oversea/n/h;

    iput-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->b:Lcom/netease/mpay/oversea/t/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 25
    new-instance v9, Lcom/netease/mpay/oversea/n/k/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->b:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v4, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/oversea/n/k/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;ZLcom/netease/mpay/oversea/n/k/g;)V

    .line 27
    invoke-virtual {v9}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/m/e;)V
    .locals 11

    .line 1
    new-instance v10, Lcom/netease/mpay/oversea/n/k/b;

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->b:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v4, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    new-instance v9, Lcom/netease/mpay/oversea/MpayOverseaApi$i$a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->a:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {v9, p0, v0, v7, v8}, Lcom/netease/mpay/oversea/MpayOverseaApi$i$a;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi$i;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V

    const/4 v8, 0x0

    move-object v0, v10

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/oversea/n/k/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/m/e;ZLcom/netease/mpay/oversea/n/k/g;)V

    .line 24
    invoke-virtual {v10}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 9

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/n/k/b;

    iget-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {p2}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->a:Lcom/netease/mpay/oversea/n/h;

    iget-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->b:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v4, p2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v5, p2, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iget-object v6, p2, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/oversea/n/k/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;ZLcom/netease/mpay/oversea/n/k/g;)V

    .line 3
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/m/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$i;->a(Lcom/netease/mpay/oversea/m/e;)V

    return-void
.end method
