.class Lcom/netease/mpay/oversea/h/i$a;
.super Lcom/netease/mpay/oversea/o/b;
.source "ServerApiTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/h/h;

.field final synthetic c:Lcom/netease/mpay/oversea/h/e;

.field final synthetic d:Lcom/netease/mpay/oversea/h/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/h/i;Lcom/netease/mpay/oversea/h/h;Lcom/netease/mpay/oversea/h/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i$a;->d:Lcom/netease/mpay/oversea/h/i;

    iput-object p2, p0, Lcom/netease/mpay/oversea/h/i$a;->b:Lcom/netease/mpay/oversea/h/h;

    iput-object p3, p0, Lcom/netease/mpay/oversea/h/i$a;->c:Lcom/netease/mpay/oversea/h/e;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/o/e/d;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/o/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/o/e/d;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object p3

    iput-object p2, p3, Lcom/netease/mpay/oversea/r/c;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object p2

    iput-object p1, p2, Lcom/netease/mpay/oversea/r/c;->a:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/h/i$a;->d:Lcom/netease/mpay/oversea/h/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/h/i$a;->b:Lcom/netease/mpay/oversea/h/h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i$a;->c:Lcom/netease/mpay/oversea/h/e;

    iget v0, v0, Lcom/netease/mpay/oversea/h/e;->c:I

    new-instance v1, Lcom/netease/mpay/oversea/h/c;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0, v1}, Lcom/netease/mpay/oversea/h/h;->a(ILcom/netease/mpay/oversea/h/c;)V

    return-void
.end method
