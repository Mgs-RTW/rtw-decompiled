.class Lcom/netease/mpay/oversea/j/d/a/d$i;
.super Ljava/lang/Object;
.source "EmailVerifyCode.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/a/d;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h/h<",
        "Lcom/netease/mpay/oversea/h/k/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/j/d/a/d;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/d$i;->a:Lcom/netease/mpay/oversea/j/d/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/d$i;->a:Lcom/netease/mpay/oversea/j/d/a/d;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/k/c;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/d$i;->a:Lcom/netease/mpay/oversea/j/d/a/d;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/d;->t(Lcom/netease/mpay/oversea/j/d/a/d;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/j/d/a/d$i;->a(Lcom/netease/mpay/oversea/h/k/c;)V

    return-void
.end method
