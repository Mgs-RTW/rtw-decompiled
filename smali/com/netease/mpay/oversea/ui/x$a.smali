.class Lcom/netease/mpay/oversea/ui/x$a;
.super Ljava/lang/Object;
.source "WebViewLoginHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/x;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/x;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/x$a;->a:Lcom/netease/mpay/oversea/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/x$a;->a:Lcom/netease/mpay/oversea/ui/x;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    check-cast v0, Lcom/netease/mpay/oversea/ui/w;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/w;->n()V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/x$a;->a:Lcom/netease/mpay/oversea/ui/x;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/g;

    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/g$a;->b:Lcom/netease/mpay/oversea/thirdapi/g$a;

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/thirdapi/g;-><init>(Lcom/netease/mpay/oversea/thirdapi/g$a;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/m;->a(Lcom/netease/mpay/oversea/thirdapi/g;)V

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/x$a;->a:Lcom/netease/mpay/oversea/ui/x;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    check-cast v0, Lcom/netease/mpay/oversea/ui/w;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/w;->n()V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/x$a;->a:Lcom/netease/mpay/oversea/ui/x;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/oversea/ui/m;->a(ILcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 1

    if-nez p2, :cond_0

    .line 5
    new-instance p1, Lcom/netease/mpay/oversea/h/c;

    const/16 p2, 0x2711

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/netease/mpay/oversea/ui/x$a;->a(ILcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/x$a;->a:Lcom/netease/mpay/oversea/ui/x;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/l;->g:Lcom/netease/mpay/oversea/ui/m;

    check-cast p1, Lcom/netease/mpay/oversea/ui/w;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/n/i/b/d;)V

    :goto_0
    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
