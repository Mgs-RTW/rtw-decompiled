.class Lcom/netease/mpay/oversea/l/d$b$a;
.super Ljava/lang/Object;
.source "InitImpl.java"

# interfaces
.implements Lcom/netease/mpay/oversea/m/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/l/d$b;->a(Lcom/netease/mpay/oversea/h/k/c;)V
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
.field final synthetic a:Lcom/netease/mpay/oversea/l/d$b;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/l/d$b$a;->a:Lcom/netease/mpay/oversea/l/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/l/d$b$a;->a:Lcom/netease/mpay/oversea/l/d$b;

    iget-object v0, v0, Lcom/netease/mpay/oversea/l/d$b;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/m/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/l/d$b$a;->a:Lcom/netease/mpay/oversea/l/d$b;

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/d$b;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/l/d$b$a;->a:Lcom/netease/mpay/oversea/l/d$b;

    iget-object p1, p1, Lcom/netease/mpay/oversea/l/d$b;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/m/e;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/l/d$b$a;->a(Lcom/netease/mpay/oversea/m/e;)V

    return-void
.end method
