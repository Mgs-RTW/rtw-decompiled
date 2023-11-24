.class Lcom/netease/mpay/oversea/m/b$f;
.super Ljava/lang/Object;
.source "LinkAccountService.java"

# interfaces
.implements Lcom/netease/mpay/oversea/m/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/m/b;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V
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
.field final synthetic a:Lcom/netease/mpay/oversea/m/a;

.field final synthetic b:Lcom/netease/mpay/oversea/m/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/m/b;Lcom/netease/mpay/oversea/m/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/m/b$f;->b:Lcom/netease/mpay/oversea/m/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/m/b$f;->a:Lcom/netease/mpay/oversea/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$f;->a:Lcom/netease/mpay/oversea/m/a;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/m/a;->a()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/m/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$f;->b:Lcom/netease/mpay/oversea/m/b;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/m/b;->a(Lcom/netease/mpay/oversea/m/b;Lcom/netease/mpay/oversea/m/e;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/m/b$f;->a:Lcom/netease/mpay/oversea/m/a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$f;->b:Lcom/netease/mpay/oversea/m/b;

    invoke-static {v0}, Lcom/netease/mpay/oversea/m/b;->a(Lcom/netease/mpay/oversea/m/b;)Lcom/netease/mpay/oversea/m/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/m/a;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$f;->a:Lcom/netease/mpay/oversea/m/a;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/m/a;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/m/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/m/b$f;->a(Lcom/netease/mpay/oversea/m/e;)V

    return-void
.end method
