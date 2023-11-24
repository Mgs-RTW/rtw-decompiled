.class Lcom/netease/mpay/oversea/o/g/c$i;
.super Ljava/lang/Object;
.source "LVUPersonInfoView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/o/g/c;->i()V
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
.field final synthetic a:Lcom/netease/mpay/oversea/o/g/c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/o/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$i;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$i;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->i(Lcom/netease/mpay/oversea/o/g/c;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object p1

    iget v0, p2, Lcom/netease/mpay/oversea/h/c;->a:I

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    const/16 v1, 0x12c

    invoke-interface {p1, v0, p2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/o/g/c$i;->a:Lcom/netease/mpay/oversea/o/g/c;

    invoke-static {p1}, Lcom/netease/mpay/oversea/o/g/c;->j(Lcom/netease/mpay/oversea/o/g/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/o/e/b;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/mpay/oversea/o/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/util/ArrayList;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/o/e/b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/o/g/c$i;->a(Lcom/netease/mpay/oversea/o/e/b;)V

    return-void
.end method
