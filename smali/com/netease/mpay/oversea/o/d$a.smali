.class Lcom/netease/mpay/oversea/o/d$a;
.super Ljava/lang/Object;
.source "LVUHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h/h<",
        "Lcom/netease/mpay/oversea/o/e/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/o/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/d$a;->b:Lcom/netease/mpay/oversea/o/d;

    iput-object p2, p0, Lcom/netease/mpay/oversea/o/d$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/d$a;->b:Lcom/netease/mpay/oversea/o/d;

    iget-object p1, p1, Lcom/netease/mpay/oversea/o/d;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    iget v0, p2, Lcom/netease/mpay/oversea/h/c;->a:I

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    const/16 v1, 0x12c

    invoke-interface {p1, v0, p2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 11
    iget-object p2, p0, Lcom/netease/mpay/oversea/o/d$a;->b:Lcom/netease/mpay/oversea/o/d;

    invoke-static {p2}, Lcom/netease/mpay/oversea/o/d;->a(Lcom/netease/mpay/oversea/o/d;)Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/d$a;->b:Lcom/netease/mpay/oversea/o/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/d;->b(Lcom/netease/mpay/oversea/o/d;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/o/e/b;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/o/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->c(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/mpay/oversea/o/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/mpay/oversea/o/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/util/ArrayList;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/d$a;->b:Lcom/netease/mpay/oversea/o/d;

    iget-object v0, p0, Lcom/netease/mpay/oversea/o/d$a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/o/d;->a(Lcom/netease/mpay/oversea/o/d;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/o/e/b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/o/d$a;->a(Lcom/netease/mpay/oversea/o/e/b;)V

    return-void
.end method
