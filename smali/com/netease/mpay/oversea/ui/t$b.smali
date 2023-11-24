.class Lcom/netease/mpay/oversea/ui/t$b;
.super Ljava/lang/Object;
.source "WebVerifyHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/t;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/t;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/t$b;->a:Lcom/netease/mpay/oversea/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t$b;->a:Lcom/netease/mpay/oversea/ui/t;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/t;->b(Lcom/netease/mpay/oversea/ui/t;)V

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/t$b;->a:Lcom/netease/mpay/oversea/ui/t;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/t;->a(Lcom/netease/mpay/oversea/ui/t;Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/t$b;->a:Lcom/netease/mpay/oversea/ui/t;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/ui/t;->a(Lcom/netease/mpay/oversea/ui/t;Ljava/lang/String;)V

    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/t$b;->a:Lcom/netease/mpay/oversea/ui/t;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ui/t;->a(Lcom/netease/mpay/oversea/ui/t;Ljava/lang/String;)V

    return-void
.end method
