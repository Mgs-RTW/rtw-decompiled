.class Lcom/netease/mpay/oversea/ui/j$a;
.super Ljava/lang/Object;
.source "GuestInheritGuidance.java"

# interfaces
.implements Lcom/netease/mpay/oversea/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/h/h<",
        "Lcom/netease/mpay/oversea/n/i/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/j;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/h/c;)V
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/j;->a(Lcom/netease/mpay/oversea/ui/j;Lcom/netease/mpay/oversea/h/c;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n/i/b/b;)V
    .locals 1

    .line 1
    iget-boolean p1, p1, Lcom/netease/mpay/oversea/n/i/b/b;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/j;->a(Lcom/netease/mpay/oversea/ui/j;)V

    goto :goto_1

    .line 4
    :cond_0
    sget-object p1, Lcom/netease/mpay/oversea/n/h;->i:Lcom/netease/mpay/oversea/n/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/j;->b(Lcom/netease/mpay/oversea/ui/j;)Lcom/netease/mpay/oversea/n/h;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/j;->c(Lcom/netease/mpay/oversea/ui/j;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->G()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->E()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/ui/j;

    .line 9
    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/j;->b(Lcom/netease/mpay/oversea/ui/j;)Lcom/netease/mpay/oversea/n/h;

    move-result-object p1

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/j;->c(Lcom/netease/mpay/oversea/ui/j;)V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/j$a;->a:Lcom/netease/mpay/oversea/ui/j;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/j;->d(Lcom/netease/mpay/oversea/ui/j;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/b;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/j$a;->a(Lcom/netease/mpay/oversea/n/i/b/b;)V

    return-void
.end method
