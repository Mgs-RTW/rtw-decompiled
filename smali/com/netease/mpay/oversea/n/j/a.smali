.class public Lcom/netease/mpay/oversea/n/j/a;
.super Ljava/lang/Object;
.source "ApiRefresh.java"


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/netease/mpay/oversea/t/c/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/j/a;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/a0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/n/j/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/a0/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/a0/a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    .line 4
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v4, "auth_code"

    invoke-direct {v1, v4, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v5, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v7, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v1, v3

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v6

    move v6, v9

    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v13

    .line 10
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v11, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v12, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v10, v1

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 11
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->v:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "account"

    const-string v5, "access_token"

    if-eqz v1, :cond_1

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    move-object/from16 v6, p1

    invoke-direct {v1, v4, v6}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-direct {v1, v5, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v5, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v7, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v1, v3

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v6

    move v6, v9

    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v13

    .line 19
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v11, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v12, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v10, v1

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_0

    .line 20
    :cond_1
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->u:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 22
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v4, "auth_credential"

    invoke-direct {v1, v4, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v5, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v7, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v1, v3

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v6

    move v6, v9

    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v13

    .line 26
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v11, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v12, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v10, v1

    move-object/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 27
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_0

    .line 28
    :cond_2
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->s:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-direct {v1, v5, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v2, "line_ver"

    const-string v3, "v2.1"

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v10, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v12, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v13}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v17

    .line 35
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v15, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v19, p3

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 36
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_0

    .line 37
    :cond_3
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->t:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v3, "line_game_ver"

    const-string v4, "v3.0"

    invoke-direct {v1, v3, v4}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-direct {v1, v5, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v10, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v12, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v13}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v17

    .line 44
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v15, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v19, p3

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 45
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_0

    .line 46
    :cond_4
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->q:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 47
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-direct {v1, v5, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v10, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v12, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v13}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v17

    .line 52
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v15, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v19, p3

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 53
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_0

    .line 54
    :cond_5
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->m:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    const-string v3, "id_token"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v10, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v12, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v13}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v17

    .line 59
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v15, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v19, p3

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 60
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_0

    .line 61
    :cond_6
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->x:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 62
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-direct {v1, v5, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v10, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v12, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v13}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v17

    .line 66
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v15, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v19, p3

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 67
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_0

    .line 68
    :cond_7
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->y:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 69
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 70
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-direct {v1, v5, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v10, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v12, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static/range {v6 .. v13}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v17

    .line 73
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v15, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v14, v1

    move-object/from16 v16, v2

    move-object/from16 v19, p3

    invoke-direct/range {v14 .. v19}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 74
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto :goto_0

    .line 75
    :cond_8
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v5, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 76
    iget-object v1, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 77
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v1, Lcom/netease/mpay/oversea/h/l/a;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v2, v2, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v2, v0, Lcom/netease/mpay/oversea/n/j/a;->a:Landroid/app/Activity;

    iget-object v3, v0, Lcom/netease/mpay/oversea/n/j/a;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v6, v4, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    iget-object v9, v4, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    sget-object v11, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v12}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v9

    const/4 v10, 0x0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 83
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    :cond_a
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/j/a;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/n/j/a$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/n/j/a$a;-><init>(Lcom/netease/mpay/oversea/n/j/a;)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/h/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method
