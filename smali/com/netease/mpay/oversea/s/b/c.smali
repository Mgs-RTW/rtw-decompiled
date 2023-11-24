.class public Lcom/netease/mpay/oversea/s/b/c;
.super Lcom/netease/mpay/oversea/h/i;
.source "SMTicketTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/h/k/c;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/h/k/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/c;->l:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/s/b/c;->m:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/s/b/c;->n:Ljava/lang/String;

    return-object p0
.end method

.method protected bridge synthetic d(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s/b/c;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;
    .locals 5
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

    new-instance v1, Lcom/netease/mpay/oversea/s/a/d;

    iget-object v2, p0, Lcom/netease/mpay/oversea/s/b/c;->n:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/s/b/c;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/s/b/c;->m:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/netease/mpay/oversea/s/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    return-object p1
.end method
