.class public Lcom/netease/mpay/oversea/s/b/b;
.super Lcom/netease/mpay/oversea/h/i;
.source "SMSendCodeTask.java"


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

.field private n:I

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/k/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/n/k/g<",
            "Lcom/netease/mpay/oversea/h/k/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 2
    iput-object p3, p0, Lcom/netease/mpay/oversea/s/b/b;->l:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/netease/mpay/oversea/s/b/b;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/b;->o:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/s/b/b;->n:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/b;->o:Ljava/lang/String;

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/s/b/b;->n:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/b;->o:Ljava/lang/String;

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/s/b/b;->n:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/b;->o:Ljava/lang/String;

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/s/b/b;->n:I

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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/s/b/b;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/h/k/c;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/h/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/s/a/c;

    iget v4, p0, Lcom/netease/mpay/oversea/s/b/b;->n:I

    iget-object v5, p0, Lcom/netease/mpay/oversea/s/b/b;->o:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object p1

    iget-object v6, p1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/s/b/b;->l:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/oversea/s/b/b;->m:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netease/mpay/oversea/s/a/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/h/k/c;

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/netease/mpay/oversea/s/b/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/b/b;->o:Ljava/lang/String;

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/s/b/b;->n:I

    return-object p0
.end method
