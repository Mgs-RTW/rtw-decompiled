.class public Lcom/netease/mpay/oversea/s/a/a;
.super Lcom/netease/mpay/oversea/h/k/a;
.source "SMRetrieveRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/k/a<",
        "Lcom/netease/mpay/oversea/s/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/users/security_email/restore"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/h/k/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/netease/mpay/oversea/s/a/a;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/s/a/a;->d:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/s/a/a;->e:Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/s/a/a;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/s/a/b;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/s/a/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p1, "user_id"

    .line 1
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdk_token"

    .line 2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    .line 3
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ticket"

    .line 4
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance v2, Lcom/netease/mpay/oversea/s/a/b;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/netease/mpay/oversea/s/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
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

    iget-object v1, p0, Lcom/netease/mpay/oversea/s/a/a;->c:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/s/a/a;->d:Ljava/lang/String;

    const-string v2, "email"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/s/a/a;->e:Ljava/lang/String;

    const-string v2, "verify_code"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
