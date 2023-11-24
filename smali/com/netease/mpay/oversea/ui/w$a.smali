.class Lcom/netease/mpay/oversea/ui/w$a;
.super Lcom/netease/mpay/oversea/o/b;
.source "WebViewLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/w;->b(Lcom/netease/mpay/oversea/n/i/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/n/i/b/d;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/w;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/w;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/w$a;->c:Lcom/netease/mpay/oversea/ui/w;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/w$a;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/o/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/o/e/d;)V
    .locals 1

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
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$a;->c:Lcom/netease/mpay/oversea/ui/w;

    new-instance p2, Lcom/netease/mpay/oversea/h/c;

    const/16 p3, 0x2711

    const-string v0, ""

    invoke-direct {p2, p3, v0}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/netease/mpay/oversea/ui/w;->a(ILcom/netease/mpay/oversea/h/c;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/w$a;->b:Lcom/netease/mpay/oversea/n/i/b/d;

    iget p2, p3, Lcom/netease/mpay/oversea/o/e/d;->a:I

    iput p2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    .line 8
    iget-object p2, p3, Lcom/netease/mpay/oversea/o/e/d;->b:Ljava/lang/String;

    iput-object p2, p1, Lcom/netease/mpay/oversea/n/i/b/d;->s:Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/w$a;->c:Lcom/netease/mpay/oversea/ui/w;

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/ui/w;->a(Lcom/netease/mpay/oversea/n/i/b/d;)V

    :goto_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/w$a;->c:Lcom/netease/mpay/oversea/ui/w;

    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p1, v0}, Lcom/netease/mpay/oversea/ui/w;->a(ILcom/netease/mpay/oversea/h/c;)V

    return-void
.end method
