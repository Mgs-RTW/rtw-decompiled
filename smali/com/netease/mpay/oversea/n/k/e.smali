.class public Lcom/netease/mpay/oversea/n/k/e;
.super Lcom/netease/mpay/oversea/h/i;
.source "InheritGuideTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/n/i/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/f;)Lcom/netease/mpay/oversea/h/i;

    .line 3
    iput-object p4, p0, Lcom/netease/mpay/oversea/n/k/e;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/n/k/e;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/n/i/b/b;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/n/i/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/h/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/n/i/a/c;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/k/e;->l:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/netease/mpay/oversea/n/i/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/b;

    return-object p1
.end method
