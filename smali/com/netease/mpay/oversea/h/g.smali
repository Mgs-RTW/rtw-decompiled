.class public Lcom/netease/mpay/oversea/h/g;
.super Ljava/lang/Object;
.source "ServerApi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Lcom/netease/mpay/oversea/h/i$f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/h/g;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/h/g;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/h/g;->c:Lcom/netease/mpay/oversea/h/i$f;

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/h/k/a<",
            "TResponse;>;)TResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/g;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/h/k/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/g;->c:Lcom/netease/mpay/oversea/h/i$f;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/netease/mpay/oversea/h/i$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/k/a;->b()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/k/a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/h/g;->a:Landroid/app/Activity;

    .line 8
    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/h/k/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/mpay/oversea/h/g;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/netease/mpay/oversea/h/g;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0, v4}, Lcom/netease/mpay/oversea/h/k/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    sget v6, Lcom/netease/mpay/oversea/h/l/f;->b:I

    sget v7, Lcom/netease/mpay/oversea/h/l/f;->a:I

    .line 10
    invoke-static/range {v1 .. v7}, Lcom/netease/mpay/oversea/h/l/b;->a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/netease/mpay/oversea/h/l/b$b;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/netease/mpay/oversea/h/g;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/h/k/a;->b(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/l/b$b;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/netease/mpay/oversea/h/l/b$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 19
    :catch_0
    new-instance p1, Lcom/netease/mpay/oversea/h/b$a;

    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    const/16 v1, 0x2714

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/netease/mpay/oversea/h/b$a;-><init>(Lcom/netease/mpay/oversea/h/c;)V

    throw p1
.end method
