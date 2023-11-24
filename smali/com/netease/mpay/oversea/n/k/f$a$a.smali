.class Lcom/netease/mpay/oversea/n/k/f$a$a;
.super Lcom/netease/mpay/oversea/o/b;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n/k/f$a;->b(Lcom/netease/mpay/oversea/n/i/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/n/i/b/d;

.field final synthetic c:Lcom/netease/mpay/oversea/n/k/f$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n/k/f$a;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a$a;->c:Lcom/netease/mpay/oversea/n/k/f$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/k/f$a$a;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/o/e/d;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v0

    iput-object p2, v0, Lcom/netease/mpay/oversea/r/c;->b:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object p2

    iput-object p1, p2, Lcom/netease/mpay/oversea/r/c;->a:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a$a;->c:Lcom/netease/mpay/oversea/n/k/f$a;

    iget-object p2, p1, Lcom/netease/mpay/oversea/n/k/f$a;->d:Lcom/netease/mpay/oversea/h/e;

    iget p2, p2, Lcom/netease/mpay/oversea/h/e;->c:I

    new-instance p3, Lcom/netease/mpay/oversea/h/c;

    const/16 v0, 0x2711

    const-string v1, ""

    invoke-direct {p3, v0, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/netease/mpay/oversea/n/k/f$a;->b(ILcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/n/k/f$a$a;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    iget p2, p3, Lcom/netease/mpay/oversea/o/e/d;->a:I

    iput p2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    .line 7
    iget-object p2, p3, Lcom/netease/mpay/oversea/o/e/d;->b:Ljava/lang/String;

    iput-object p2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->s:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/netease/mpay/oversea/n/k/f$a$a;->c:Lcom/netease/mpay/oversea/n/k/f$a;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/n/k/f$a;->a(Lcom/netease/mpay/oversea/n/k/f$a;Lcom/netease/mpay/oversea/n/i/b/d;)V

    :goto_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/n/k/f$a$a;->c:Lcom/netease/mpay/oversea/n/k/f$a;

    iget-object v0, p3, Lcom/netease/mpay/oversea/n/k/f$a;->d:Lcom/netease/mpay/oversea/h/e;

    iget v0, v0, Lcom/netease/mpay/oversea/h/e;->c:I

    new-instance v1, Lcom/netease/mpay/oversea/h/c;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Lcom/netease/mpay/oversea/n/k/f$a;->b(ILcom/netease/mpay/oversea/h/c;)V

    return-void
.end method
