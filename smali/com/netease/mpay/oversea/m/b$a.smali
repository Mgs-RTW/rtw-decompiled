.class Lcom/netease/mpay/oversea/m/b$a;
.super Ljava/lang/Object;
.source "LinkAccountService.java"

# interfaces
.implements Lcom/netease/mpay/oversea/m/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/m/b;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/m/a;

.field final synthetic c:Lcom/netease/mpay/oversea/m/b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/m/b;Landroid/app/Activity;Lcom/netease/mpay/oversea/m/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/m/b$a;->c:Lcom/netease/mpay/oversea/m/b;

    iput-object p2, p0, Lcom/netease/mpay/oversea/m/b$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/m/b$a;->b:Lcom/netease/mpay/oversea/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "LinkAccount# PGS login skip"

    .line 28
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$a;->c:Lcom/netease/mpay/oversea/m/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/m/b;->b(Z)V

    .line 30
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$a;->b:Lcom/netease/mpay/oversea/m/a;

    invoke-interface {v0}, Lcom/netease/mpay/oversea/m/a;->a()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/m/e;)V
    .locals 4

    const-string v0, "LinkAccount# PGS Login Success"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$a;->c:Lcom/netease/mpay/oversea/m/b;

    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/m/b;->a(Lcom/netease/mpay/oversea/m/b;Lcom/netease/mpay/oversea/m/e;)V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/m/g/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/m/b$a;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/m/b$a$a;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/m/b$a$a;-><init>(Lcom/netease/mpay/oversea/m/b$a;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/netease/mpay/oversea/m/g/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/m/e;Lcom/netease/mpay/oversea/h/h;)V

    .line 27
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 2

    const-string v0, "LinkAccount# PGS login failed"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$a;->c:Lcom/netease/mpay/oversea/m/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/m/b;->b(Z)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/m/b$a;->b:Lcom/netease/mpay/oversea/m/a;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/m/a;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/m/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/m/b$a;->a(Lcom/netease/mpay/oversea/m/e;)V

    return-void
.end method
