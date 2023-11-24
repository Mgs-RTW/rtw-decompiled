.class Lcom/netease/mpay/oversea/n/l/i$a;
.super Ljava/lang/Object;
.source "PassportWebView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/l/i;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n/l/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/l/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/l/i$a;->a:Lcom/netease/mpay/oversea/n/l/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/l/i$a;->a:Lcom/netease/mpay/oversea/n/l/i;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/l/i;->c(Lcom/netease/mpay/oversea/n/l/i;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/l/i$a;->a:Lcom/netease/mpay/oversea/n/l/i;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/l/i;->b(Lcom/netease/mpay/oversea/n/l/i;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/i$a;->a:Lcom/netease/mpay/oversea/n/l/i;

    iget-object p2, p2, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/i$a;->a:Lcom/netease/mpay/oversea/n/l/i;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/i;->e(Lcom/netease/mpay/oversea/n/l/i;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/n/l/i$a;->a:Lcom/netease/mpay/oversea/n/l/i;

    invoke-static {p2}, Lcom/netease/mpay/oversea/n/l/i;->d(Lcom/netease/mpay/oversea/n/l/i;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/z/e;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/c;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 4

    if-nez p2, :cond_0

    .line 4
    new-instance p1, Lcom/netease/mpay/oversea/h/c;

    const/16 p2, 0x2711

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/netease/mpay/oversea/n/l/i$a;->a(ILcom/netease/mpay/oversea/h/c;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/r/f;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    .line 8
    iget p1, p2, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/i$a;->a:Lcom/netease/mpay/oversea/n/l/i;

    invoke-static {p1}, Lcom/netease/mpay/oversea/n/l/i;->f(Lcom/netease/mpay/oversea/n/l/i;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {v0}, Lcom/netease/mpay/oversea/o/c;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->C:Lcom/netease/mpay/oversea/n/h;

    new-instance v3, Lcom/netease/mpay/oversea/n/l/i$a$a;

    invoke-direct {v3, p0, p2}, Lcom/netease/mpay/oversea/n/l/i$a$a;-><init>(Lcom/netease/mpay/oversea/n/l/i$a;Lcom/netease/mpay/oversea/n/i/b/d;)V

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    const/4 p2, 0x1

    .line 32
    invoke-virtual {v1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 33
    invoke-static {p1, v0, p2}, Lcom/netease/mpay/oversea/a;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/l/i$a;->a:Lcom/netease/mpay/oversea/n/l/i;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/n/l/i;->b(Lcom/netease/mpay/oversea/n/i/b/d;)V

    :goto_0
    return-void
.end method

.method public onVerify(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
