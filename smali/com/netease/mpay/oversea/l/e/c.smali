.class public Lcom/netease/mpay/oversea/l/e/c;
.super Lcom/netease/mpay/oversea/h/k/a;
.source "GameConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/k/a<",
        "Lcom/netease/mpay/oversea/l/e/d;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "/api/games/config"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/h/k/a;-><init>(ILjava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/l/e/c;->c:Landroid/app/Activity;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/l/e/f;
    .locals 7

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/l/e/f;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/l/e/f;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    const-string v2, "minor_area_enable"

    .line 4
    invoke-static {p1, v2, v1}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/l/e/f;->a:Z

    .line 5
    new-instance v1, Lcom/netease/mpay/oversea/l/e/h;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/l/e/h;-><init>()V

    const-string v2, "terms"

    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "url"

    const-string v4, "text"

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v6, Lcom/netease/mpay/oversea/l/e/e;

    invoke-direct {v6, v5, v2}, Lcom/netease/mpay/oversea/l/e/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v1, Lcom/netease/mpay/oversea/l/e/h;->a:Lcom/netease/mpay/oversea/l/e/e;

    :cond_0
    const-string v2, "privacy"

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v3, Lcom/netease/mpay/oversea/l/e/e;

    invoke-direct {v3, v2, p1}, Lcom/netease/mpay/oversea/l/e/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/netease/mpay/oversea/l/e/h;->b:Lcom/netease/mpay/oversea/l/e/e;

    :cond_1
    return-object v0
.end method

.method private a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V
    .locals 23

    move-object/from16 v0, p2

    move-object/from16 v11, p3

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const-string v2, "api_type"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v4, v12

    const-string v2, "enable"

    .line 20
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v13, p0

    if-eqz v2, :cond_0

    iget-object v2, v13, Lcom/netease/mpay/oversea/l/e/c;->c:Landroid/app/Activity;

    .line 21
    invoke-static {v2, v11, v4}, Lcom/netease/mpay/oversea/n/f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 22
    :goto_0
    aget-object v7, v4, v12

    const-string v2, "url"

    .line 23
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const-string v6, "priority"

    .line 24
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v5, "login_priority"

    .line 25
    invoke-virtual {v0, v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v5, "icon"

    .line 26
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "channel_icon"

    .line 27
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v10, "small"

    const-string v14, "color"

    const-string v15, "background"

    const-string v12, "text"

    if-eqz v5, :cond_1

    .line 30
    new-instance v22, Lcom/netease/mpay/oversea/l/e/d$g;

    .line 31
    invoke-virtual {v5, v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 32
    invoke-virtual {v5, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 33
    invoke-virtual {v5, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v13, "bind_text"

    .line 34
    invoke-virtual {v5, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 35
    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v21}, Lcom/netease/mpay/oversea/l/e/d$g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v22

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    if-eqz v6, :cond_2

    .line 39
    new-instance v13, Lcom/netease/mpay/oversea/l/e/d$d;

    .line 40
    invoke-virtual {v6, v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 41
    invoke-virtual {v6, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 42
    invoke-virtual {v6, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 43
    invoke-virtual {v6, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v15, v14, v11, v1}, Lcom/netease/mpay/oversea/l/e/d$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v13

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 45
    :goto_2
    new-instance v10, Lcom/netease/mpay/oversea/l/e/h;

    invoke-direct {v10}, Lcom/netease/mpay/oversea/l/e/h;-><init>()V

    const-string v1, "terms"

    .line 47
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v13, Lcom/netease/mpay/oversea/l/e/e;

    invoke-direct {v13, v11, v1}, Lcom/netease/mpay/oversea/l/e/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v10, Lcom/netease/mpay/oversea/l/e/h;->a:Lcom/netease/mpay/oversea/l/e/e;

    :cond_3
    const-string v1, "privacy"

    .line 53
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 55
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 56
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Lcom/netease/mpay/oversea/l/e/e;

    invoke-direct {v2, v11, v1}, Lcom/netease/mpay/oversea/l/e/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v10, Lcom/netease/mpay/oversea/l/e/h;->b:Lcom/netease/mpay/oversea/l/e/e;

    .line 60
    :cond_4
    new-instance v11, Lcom/netease/mpay/oversea/l/e/d$f;

    move-object v1, v11

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v10}, Lcom/netease/mpay/oversea/l/e/d$f;-><init>(Lcom/netease/mpay/oversea/t/c/g;ZLjava/lang/String;Lcom/netease/mpay/oversea/l/e/d$g;Lcom/netease/mpay/oversea/l/e/d$d;Ljava/lang/String;IILcom/netease/mpay/oversea/l/e/h;)V

    const-string v1, "permissions"

    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 65
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_6

    .line 67
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    .line 69
    :cond_5
    invoke-virtual {v11, v3}, Lcom/netease/mpay/oversea/l/e/d$f;->a(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 72
    invoke-virtual {v0, v1, v11}, Lcom/netease/mpay/oversea/l/e/d;->a(Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/l/e/d$f;)V

    :cond_7
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
    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/l/e/c;->b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/l/e/d;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/l/e/d;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "game_config"

    move-object/from16 v2, p2

    .line 5
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "text"

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string v4, "account_type"

    .line 7
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const-string v5, "server_list"

    .line 8
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v1, :cond_3

    const-string v6, "quick_login"

    .line 9
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v1, :cond_4

    const-string v7, "security_email"

    .line 10
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    if-eqz v1, :cond_5

    const-string v8, "jsbridge_whitelist"

    .line 11
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    if-eqz v1, :cond_6

    const-string v9, "urlscheme_whitelist"

    .line 12
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    if-eqz v1, :cond_7

    const-string v10, "hydra"

    .line 13
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    :goto_7
    if-eqz v1, :cond_8

    const-string v11, "login_config"

    .line 14
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    .line 15
    :goto_8
    new-instance v12, Lcom/netease/mpay/oversea/l/e/d;

    invoke-direct {v12}, Lcom/netease/mpay/oversea/l/e/d;-><init>()V

    const/4 v13, 0x0

    const-string v14, "debug_mode"

    .line 16
    invoke-static {v1, v14, v13}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v12, Lcom/netease/mpay/oversea/l/e/d;->b:Z

    const/4 v14, 0x1

    const-string v15, "verify_status"

    .line 17
    invoke-static {v1, v15, v14}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v12, Lcom/netease/mpay/oversea/l/e/d;->c:Z

    const-string v15, "api_logout"

    .line 18
    invoke-static {v1, v15, v13}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v12, Lcom/netease/mpay/oversea/l/e/d;->d:Z

    const-string v15, "login_style"

    .line 19
    invoke-static {v1, v15, v14}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v15

    iput v15, v12, Lcom/netease/mpay/oversea/l/e/d;->q:I

    const-string v15, "login_page_style_v2"

    .line 21
    invoke-static {v1, v15, v14}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v15

    iput v15, v12, Lcom/netease/mpay/oversea/l/e/d;->r:I

    const-string v15, "persistence"

    .line 23
    invoke-static {v1, v15, v14}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v15

    iput v15, v12, Lcom/netease/mpay/oversea/l/e/d;->s:I

    const-string v15, "filepicker_upload_url"

    .line 24
    invoke-static {v1, v15}, Lcom/netease/mpay/oversea/h/k/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    const-string v15, "force_bind_email_enable"

    .line 25
    invoke-static {v1, v15}, Lcom/netease/mpay/oversea/h/k/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v12, Lcom/netease/mpay/oversea/l/e/d;->y:Z

    if-eqz v1, :cond_a

    const-string v15, "platform_cross"

    .line 26
    invoke-virtual {v1, v15, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_9

    goto :goto_9

    :cond_9
    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v15, 0x1

    :goto_a
    iput-boolean v15, v12, Lcom/netease/mpay/oversea/l/e/d;->A:Z

    if-eqz v1, :cond_b

    const-string v15, "link_account"

    .line 28
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    goto :goto_b

    :cond_b
    const/4 v15, 0x0

    :goto_b
    const-string v2, "channel_auto_login"

    .line 30
    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/h/k/a;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_d

    const/4 v14, 0x5

    const-string v13, "guest_login_countdown"

    .line 32
    invoke-static {v2, v13, v14}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v13

    .line 33
    iget-object v14, v12, Lcom/netease/mpay/oversea/l/e/d;->D:Lcom/netease/mpay/oversea/l/e/d$c;

    invoke-virtual {v14, v13}, Lcom/netease/mpay/oversea/l/e/d$c;->a(I)V

    const-string v13, "show_close_button"

    const/4 v14, 0x0

    .line 34
    invoke-static {v2, v13, v14}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    .line 35
    :goto_c
    iget-object v13, v12, Lcom/netease/mpay/oversea/l/e/d;->D:Lcom/netease/mpay/oversea/l/e/d$c;

    invoke-virtual {v13, v2}, Lcom/netease/mpay/oversea/l/e/d$c;->a(Z)V

    :cond_d
    const-string v2, "enable"

    if-eqz v15, :cond_e

    .line 38
    invoke-static {v15, v2}, Lcom/netease/mpay/oversea/h/k/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/netease/mpay/oversea/l/e/d;->z:Z

    :cond_e
    const/4 v13, 0x0

    if-eqz v7, :cond_f

    .line 41
    invoke-static {v7, v2, v13}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v12, Lcom/netease/mpay/oversea/l/e/d;->g:Z

    const-string v14, "restore_type"

    const/4 v15, 0x1

    .line 42
    invoke-static {v7, v14, v15}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    iput v7, v12, Lcom/netease/mpay/oversea/l/e/d;->h:I

    goto :goto_d

    :cond_f
    const/4 v15, 0x1

    .line 44
    :goto_d
    iput-boolean v13, v12, Lcom/netease/mpay/oversea/l/e/d;->f:Z

    if-eqz v10, :cond_11

    const-string v7, ""

    const-string v14, "api_key"

    .line 46
    invoke-static {v10, v14, v7}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/netease/mpay/oversea/l/e/d;->v:Ljava/lang/String;

    const-string v14, "host"

    .line 47
    invoke-static {v10, v14, v7}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lcom/netease/mpay/oversea/l/e/d;->w:Ljava/lang/String;

    .line 48
    invoke-static {v10, v2, v13}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, v12, Lcom/netease/mpay/oversea/l/e/d;->v:Ljava/lang/String;

    .line 49
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v12, Lcom/netease/mpay/oversea/l/e/d;->w:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_e

    :cond_10
    const/4 v15, 0x0

    :goto_e
    iput-boolean v15, v12, Lcom/netease/mpay/oversea/l/e/d;->x:Z

    :cond_11
    if-eqz v11, :cond_12

    const-string v7, "bc_session"

    const/4 v10, 0x0

    .line 52
    invoke-static {v11, v7, v10}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v12, Lcom/netease/mpay/oversea/l/e/d;->B:Z

    const-string v7, "show_all_bound_accounts"

    .line 53
    invoke-static {v11, v7, v10}, Lcom/netease/mpay/oversea/h/k/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v12, Lcom/netease/mpay/oversea/l/e/d;->C:Z

    :cond_12
    if-eqz v3, :cond_13

    .line 56
    new-instance v7, Lcom/netease/mpay/oversea/l/e/d$e;

    const-string v10, "bind_user_description"

    .line 57
    invoke-static {v3, v10}, Lcom/netease/mpay/oversea/h/k/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v10, "switch_account_description"

    .line 58
    invoke-static {v3, v10}, Lcom/netease/mpay/oversea/h/k/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v10, "load_user_confirm"

    .line 59
    invoke-static {v3, v10}, Lcom/netease/mpay/oversea/h/k/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v10, "switch_other_accounts"

    .line 60
    invoke-static {v3, v10}, Lcom/netease/mpay/oversea/h/k/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v10, "switch_recent_accounts"

    .line 61
    invoke-static {v3, v10}, Lcom/netease/mpay/oversea/h/k/a;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v21}, Lcom/netease/mpay/oversea/l/e/d$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v12, Lcom/netease/mpay/oversea/l/e/d;->a:Lcom/netease/mpay/oversea/l/e/d$e;

    :cond_13
    if-eqz v1, :cond_14

    const-string v3, "minor_config"

    .line 64
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_f

    :cond_14
    const/4 v3, 0x0

    :goto_f
    invoke-direct {v0, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/l/e/f;

    move-result-object v3

    iput-object v3, v12, Lcom/netease/mpay/oversea/l/e/d;->j:Lcom/netease/mpay/oversea/l/e/f;

    if-eqz v1, :cond_15

    const-string v3, "minor_v2_config"

    .line 65
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_10

    :cond_15
    const/4 v1, 0x0

    :goto_10
    invoke-static {v1}, Lcom/netease/mpay/oversea/l/e/g;->a(Lorg/json/JSONObject;)Lcom/netease/mpay/oversea/l/e/g;

    move-result-object v1

    iput-object v1, v12, Lcom/netease/mpay/oversea/l/e/d;->k:Lcom/netease/mpay/oversea/l/e/g;

    if-eqz v4, :cond_16

    const-string v1, "google"

    .line 68
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 69
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "facebook"

    .line 71
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->v:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "vk"

    .line 74
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 75
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->w:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "twitter"

    .line 77
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 78
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->u:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "line"

    .line 80
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 81
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->s:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "line_v1"

    .line 83
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 84
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->t:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "steam"

    .line 86
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->r:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "psn"

    .line 89
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->o:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "nt_passport"

    .line 92
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 93
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "nintendo"

    .line 95
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 96
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->n:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "apple"

    .line 98
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 99
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->C:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "discord"

    .line 101
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->D:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "dmm"

    .line 105
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 106
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->p:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "amazon"

    .line 108
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 109
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->q:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "wechat"

    .line 111
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 112
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->l:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "huawei"

    .line 114
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 115
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->m:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "kakao"

    .line 117
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 118
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->x:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "naver"

    .line 120
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 121
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->y:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "tiktok"

    .line 123
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 124
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->A:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "guest"

    .line 126
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "gamecenter"

    .line 128
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 129
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->k:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "epic"

    .line 131
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 132
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->F:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "migrate_code"

    .line 134
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 135
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->i:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "nt_email"

    .line 137
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 138
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->B:Lcom/netease/mpay/oversea/t/c/g;

    invoke-direct {v0, v12, v1, v3}, Lcom/netease/mpay/oversea/l/e/c;->a(Lcom/netease/mpay/oversea/l/e/d;Lorg/json/JSONObject;Lcom/netease/mpay/oversea/t/c/g;)V

    const-string v1, "unbind_account"

    .line 140
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v3, 0x0

    .line 142
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v12, Lcom/netease/mpay/oversea/l/e/d;->e:Z

    .line 145
    :cond_16
    invoke-virtual {v12}, Lcom/netease/mpay/oversea/l/e/d;->b()V

    if-eqz v5, :cond_18

    .line 147
    iget-object v1, v12, Lcom/netease/mpay/oversea/l/e/d;->l:Lcom/netease/mpay/oversea/l/e/b;

    const-string v3, "expire"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/netease/mpay/oversea/l/e/b;->b:J

    .line 148
    iget-object v1, v12, Lcom/netease/mpay/oversea/l/e/d;->l:Lcom/netease/mpay/oversea/l/e/b;

    const-string v3, "version"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/netease/mpay/oversea/l/e/b;->c:Ljava/lang/String;

    const-string v1, "domains"

    .line 149
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 151
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_18

    .line 153
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_12

    .line 155
    :cond_17
    iget-object v7, v12, Lcom/netease/mpay/oversea/l/e/d;->l:Lcom/netease/mpay/oversea/l/e/b;

    iget-object v7, v7, Lcom/netease/mpay/oversea/l/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_18
    if-eqz v8, :cond_1a

    .line 161
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_1a

    .line 163
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_14

    .line 165
    :cond_19
    iget-object v5, v12, Lcom/netease/mpay/oversea/l/e/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1a
    if-eqz v9, :cond_1d

    .line 170
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_1c

    .line 172
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_16

    .line 174
    :cond_1b
    iget-object v5, v12, Lcom/netease/mpay/oversea/l/e/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 176
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheme whitelist:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/netease/mpay/oversea/l/e/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    :cond_1d
    if-eqz v6, :cond_1e

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "show_role"

    .line 182
    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 183
    new-instance v3, Lcom/netease/mpay/oversea/l/e/d$h;

    invoke-direct {v3, v2, v1}, Lcom/netease/mpay/oversea/l/e/d$h;-><init>(ZZ)V

    iput-object v3, v12, Lcom/netease/mpay/oversea/l/e/d;->i:Lcom/netease/mpay/oversea/l/e/d$h;

    :cond_1e
    return-object v12
.end method

.method public b(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/h/k/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->c()Lcom/netease/mpay/oversea/r/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/b;->a()Lcom/netease/mpay/oversea/h/l/e;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/netease/mpay/oversea/h/l/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/netease/mpay/oversea/h/l/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
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

    .line 3
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "google_login_version"

    :try_start_1
    invoke-static {}, Lcom/netease/mpay/oversea/n/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 6
    :catchall_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
