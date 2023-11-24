.class public Lcom/netease/mpay/oversea/ui/z/d;
.super Ljava/lang/Object;
.source "Entrance.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    .line 3
    iput-object p8, p0, Lcom/netease/mpay/oversea/ui/z/d;->b:Ljava/lang/String;

    .line 4
    iput-object p9, p0, Lcom/netease/mpay/oversea/ui/z/d;->c:Ljava/lang/String;

    .line 5
    iput-object p11, p0, Lcom/netease/mpay/oversea/ui/z/d;->d:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/netease/mpay/oversea/ui/z/d;->e:I

    .line 7
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    .line 8
    iput p5, p0, Lcom/netease/mpay/oversea/ui/z/d;->f:I

    .line 9
    iput-object p4, p0, Lcom/netease/mpay/oversea/ui/z/d;->g:Ljava/lang/String;

    .line 10
    iput-object p10, p0, Lcom/netease/mpay/oversea/ui/z/d;->i:Ljava/lang/String;

    .line 11
    iput-boolean p12, p0, Lcom/netease/mpay/oversea/ui/z/d;->j:Z

    .line 12
    iput p6, p0, Lcom/netease/mpay/oversea/ui/z/d;->k:I

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/d;->n:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ui/z/d;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/z/d;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/ui/z/d;",
            ">;)",
            "Lcom/netease/mpay/oversea/ui/z/d;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-string v3, "icon"

    .line 1
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;)V

    const-string v3, "icon_pressed"

    .line 3
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;)V

    const-string v3, "icon_disabled"

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;)V

    const-string v3, "url"

    .line 7
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "status"

    .line 8
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v3, "type"

    .line 9
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x2

    const-string v4, "open_method"

    .line 10
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "key"

    .line 11
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    .line 12
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "unable_prompt"

    .line 13
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x1

    const-string v5, "force_show"

    .line 14
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    .line 16
    :cond_1
    new-instance v6, Lcom/netease/mpay/oversea/ui/z/d;

    move-object v4, v6

    move-object v5, v3

    move-object v2, v6

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v16}, Lcom/netease/mpay/oversea/ui/z/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    const-string v4, "entrance"

    .line 19
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 23
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v3, v6, v1}, Lcom/netease/mpay/oversea/ui/z/d;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 25
    iget-object v7, v2, Lcom/netease/mpay/oversea/ui/z/d;->m:Ljava/lang/String;

    iput-object v7, v6, Lcom/netease/mpay/oversea/ui/z/d;->m:Ljava/lang/String;

    .line 26
    iget-object v7, v2, Lcom/netease/mpay/oversea/ui/z/d;->n:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    return-object v3

    .line 34
    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hydra_email_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c()Lcom/netease/mpay/oversea/ui/z/d;
    .locals 14

    .line 1
    new-instance v13, Lcom/netease/mpay/oversea/ui/z/d;

    const-string v1, "loading"

    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x1

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/netease/mpay/oversea/ui/z/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v13
.end method

.method public static d()Lcom/netease/mpay/oversea/ui/z/d;
    .locals 14

    .line 1
    new-instance v13, Lcom/netease/mpay/oversea/ui/z/d;

    const-string v1, "navigation"

    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x1

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/netease/mpay/oversea/ui/z/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v13
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mpay/oversea/ui/z/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    const-string v1, "home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->l:Ljava/lang/String;

    const-string v1, "home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    const-string v1, "logout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    const-string v1, "quick_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
