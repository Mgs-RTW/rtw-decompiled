.class Lcom/netease/mpay/oversea/j/d/a/g$d;
.super Ljava/lang/Object;
.source "RegisterHome.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/j/d/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/j/d/a/g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/j/d/a/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->b:Lcom/netease/mpay/oversea/j/d/a/g;

    iput-object p2, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 11
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->b:Lcom/netease/mpay/oversea/j/d/a/g;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/ui/z/a;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/h/k/c;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/m;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->b:Lcom/netease/mpay/oversea/j/d/a/g;

    invoke-static {p1}, Lcom/netease/mpay/oversea/j/d/a/g;->x(Lcom/netease/mpay/oversea/j/d/a/g;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->b:Lcom/netease/mpay/oversea/j/d/a/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/a/g;->y(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->b:Lcom/netease/mpay/oversea/j/d/a/g;

    .line 3
    invoke-static {v1}, Lcom/netease/mpay/oversea/j/d/a/g;->z(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/j/a;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->b:Lcom/netease/mpay/oversea/j/d/a/g;

    .line 4
    invoke-static {v3}, Lcom/netease/mpay/oversea/j/d/a/g;->A(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v4, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->b:Lcom/netease/mpay/oversea/j/d/a/g;

    invoke-static {v5}, Lcom/netease/mpay/oversea/j/d/a/g;->B(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    iget-object v3, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->b:Lcom/netease/mpay/oversea/j/d/a/g;

    .line 5
    invoke-static {v3}, Lcom/netease/mpay/oversea/j/d/a/g;->C(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v3

    check-cast v3, Lcom/netease/mpay/oversea/j/a;

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lcom/netease/mpay/oversea/j/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j/a;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/d/a/g$d;->b:Lcom/netease/mpay/oversea/j/d/a/g;

    invoke-static {v0}, Lcom/netease/mpay/oversea/j/d/a/g;->D(Lcom/netease/mpay/oversea/j/d/a/g;)Lcom/netease/mpay/oversea/ui/z/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ui/z/c;->b(Lcom/netease/mpay/oversea/ui/z/e;)Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/j/d/a/g$d;->a(Lcom/netease/mpay/oversea/h/k/c;)V

    return-void
.end method
