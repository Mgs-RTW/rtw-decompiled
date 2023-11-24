.class public Lcom/netease/mpay/oversea/o/f/b;
.super Lcom/netease/mpay/oversea/h/i;
.source "UploadLVUTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/o/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/o/e/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p6}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/h/i;->h:Z

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/o/f/b;->l:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/o/f/b;->m:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/netease/mpay/oversea/o/f/b;->n:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/netease/mpay/oversea/o/f/b;->o:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/o/f/b;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/o/e/d;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/o/e/d;
    .locals 9
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

    new-instance v1, Lcom/netease/mpay/oversea/o/e/c;

    iget-object v4, p0, Lcom/netease/mpay/oversea/o/f/b;->l:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/o/f/b;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/o/f/b;->o:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/o/f/b;->n:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object p1

    iget-object v8, p1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/netease/mpay/oversea/o/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/o/e/d;

    return-object p1
.end method
