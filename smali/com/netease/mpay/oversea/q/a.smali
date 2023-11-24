.class public Lcom/netease/mpay/oversea/q/a;
.super Lcom/netease/mpay/oversea/h/i;
.source "InitPaymentTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/q/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:I

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:I

.field u:F

.field v:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/f;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLorg/json/JSONObject;Lcom/netease/mpay/oversea/h/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p13}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/f;)Lcom/netease/mpay/oversea/h/i;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/q/a;->l:Ljava/lang/String;

    .line 4
    iget-object p1, p4, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/q/a;->m:Ljava/lang/String;

    .line 5
    iput p5, p0, Lcom/netease/mpay/oversea/q/a;->n:I

    .line 6
    iget-object p1, p4, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/q/a;->o:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/netease/mpay/oversea/q/a;->p:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/netease/mpay/oversea/q/a;->q:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/netease/mpay/oversea/q/a;->r:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/netease/mpay/oversea/q/a;->s:Ljava/lang/String;

    .line 11
    iput p10, p0, Lcom/netease/mpay/oversea/q/a;->t:I

    .line 12
    iput p11, p0, Lcom/netease/mpay/oversea/q/a;->u:F

    .line 13
    iput-object p12, p0, Lcom/netease/mpay/oversea/q/a;->v:Lorg/json/JSONObject;

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
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/q/a;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/q/c/b;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/q/c/b;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/netease/mpay/oversea/h/g;

    iget-object v2, v0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v3, v0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance v2, Lcom/netease/mpay/oversea/q/c/a;

    iget-object v5, v0, Lcom/netease/mpay/oversea/q/a;->l:Ljava/lang/String;

    iget-object v6, v0, Lcom/netease/mpay/oversea/q/a;->m:Ljava/lang/String;

    iget-object v7, v0, Lcom/netease/mpay/oversea/q/a;->o:Ljava/lang/String;

    iget v8, v0, Lcom/netease/mpay/oversea/q/a;->n:I

    iget-object v9, v0, Lcom/netease/mpay/oversea/q/a;->p:Ljava/lang/String;

    iget-object v10, v0, Lcom/netease/mpay/oversea/q/a;->q:Ljava/lang/String;

    iget-object v11, v0, Lcom/netease/mpay/oversea/q/a;->r:Ljava/lang/String;

    iget-object v12, v0, Lcom/netease/mpay/oversea/q/a;->s:Ljava/lang/String;

    iget v13, v0, Lcom/netease/mpay/oversea/q/a;->t:I

    iget v14, v0, Lcom/netease/mpay/oversea/q/a;->u:F

    iget-object v15, v0, Lcom/netease/mpay/oversea/q/a;->v:Lorg/json/JSONObject;

    move-object v4, v2

    invoke-direct/range {v4 .. v15}, Lcom/netease/mpay/oversea/q/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLorg/json/JSONObject;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/q/c/b;

    return-object v1
.end method
