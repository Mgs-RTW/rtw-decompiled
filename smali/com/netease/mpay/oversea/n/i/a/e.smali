.class public Lcom/netease/mpay/oversea/n/i/a/e;
.super Lcom/netease/mpay/oversea/h/k/a;
.source "LoginCodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/k/a<",
        "Lcom/netease/mpay/oversea/n/i/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field d:Lcom/netease/mpay/oversea/t/c/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/users/login/v2/login_code/generate"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/h/k/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/i/a/e;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/n/i/a/e;->d:Lcom/netease/mpay/oversea/t/c/g;

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
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/n/i/a/e;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/n/i/b/c;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/n/i/b/c;
    .locals 1

    const-string p1, "login_code"

    .line 1
    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/h/k/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "login_url"

    .line 2
    invoke-static {p2, v0}, Lcom/netease/mpay/oversea/h/k/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/n/i/b/c;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/n/i/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/i/a/e;->c:Ljava/lang/String;

    const-string v3, "device_id"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "package_name"

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/netease/mpay/oversea/h/l/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/i/a/e;->d:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-direct {p1, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
