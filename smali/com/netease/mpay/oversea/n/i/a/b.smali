.class public Lcom/netease/mpay/oversea/n/i/a/b;
.super Lcom/netease/mpay/oversea/h/k/a;
.source "GenInheritCodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/k/a<",
        "Lcom/netease/mpay/oversea/h/k/c;",
        ">;"
    }
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/users/migrate/v2/guest_generate_code"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/h/k/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/i/a/b;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/n/i/a/b;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/n/i/a/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/n/i/a/b;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/h/k/c;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/h/k/c;
    .locals 0

    const-string p1, "migrate_code"

    .line 1
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/h/k/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/netease/mpay/oversea/h/k/c;

    invoke-direct {p2, p1}, Lcom/netease/mpay/oversea/h/k/c;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method protected c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/i/a/b;->c:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/i/a/b;->d:Ljava/lang/String;

    const-string v2, "account"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/i/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/t/e/d;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/t/e/d;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v2, "passwd"

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
