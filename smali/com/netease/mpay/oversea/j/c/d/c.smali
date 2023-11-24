.class public Lcom/netease/mpay/oversea/j/c/d/c;
.super Lcom/netease/mpay/oversea/h/k/a;
.source "EmailVerifyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/k/a<",
        "Lcom/netease/mpay/oversea/h/k/c;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/netease/mpay/oversea/n/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "/api/users/login/v2/email/verify"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/h/k/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/j/c/d/c;->e:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/j/c/d/c;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/j/c/d/c;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/netease/mpay/oversea/j/c/d/c;->f:I

    .line 6
    iput-object p5, p0, Lcom/netease/mpay/oversea/j/c/d/c;->i:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/netease/mpay/oversea/j/c/d/c;->h:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/netease/mpay/oversea/j/c/d/c;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/netease/mpay/oversea/j/c/d/c;->j:Lcom/netease/mpay/oversea/n/h;

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
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/j/c/d/c;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/h/k/c;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/h/k/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string p1, "ticket"

    .line 1
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/c/d/c;->d:Ljava/lang/String;

    const-string v2, "device_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/c/d/c;->e:Ljava/lang/String;

    const-string v2, "email"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/c/d/c;->i:Ljava/lang/String;

    const-string v2, "verify_code"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget v1, p0, Lcom/netease/mpay/oversea/j/c/d/c;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "op_type"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget v0, p0, Lcom/netease/mpay/oversea/j/c/d/c;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/j/c/d/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/c/d/c;->c:Ljava/lang/String;

    const-string v2, "password"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/c/d/c;->j:Lcom/netease/mpay/oversea/n/h;

    if-eqz v0, :cond_1

    .line 10
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    const-string v2, "scene"

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/j/c/d/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/c/d/c;->h:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/j/c/d/c;->g:Ljava/lang/String;

    const-string v2, "token"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/r/e;->m:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 18
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v2, "game_iso_code"

    invoke-direct {v1, v2, v0}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p1
.end method
