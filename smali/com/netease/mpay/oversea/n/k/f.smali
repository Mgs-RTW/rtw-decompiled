.class public Lcom/netease/mpay/oversea/n/k/f;
.super Lcom/netease/mpay/oversea/h/i;
.source "LoginTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Lcom/netease/mpay/oversea/n/i/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected l:Lcom/netease/mpay/oversea/ui/a0/a;

.field protected m:Lcom/netease/mpay/oversea/n/h;

.field private n:Ljava/lang/String;

.field private o:Lcom/netease/mpay/oversea/n/d;

.field private p:Lcom/netease/mpay/oversea/t/c/f;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V
    .locals 2

    .line 1
    iget-object v0, p3, Lcom/netease/mpay/oversea/n/d;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 2
    iget-boolean p2, p3, Lcom/netease/mpay/oversea/n/d;->j:Z

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    .line 4
    iget-object p2, p3, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/n/k/f;->m:Lcom/netease/mpay/oversea/n/h;

    .line 5
    iput-object p5, p0, Lcom/netease/mpay/oversea/n/k/f;->l:Lcom/netease/mpay/oversea/ui/a0/a;

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    iget-object p3, p3, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p2, p3}, Lcom/netease/mpay/oversea/r/f;->f(Lcom/netease/mpay/oversea/t/c/g;)V

    if-eqz p4, :cond_0

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/h/i;->f:Lcom/netease/mpay/oversea/h/f;

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Event:LoginTask:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/n/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    return-object p0
.end method

.method private a(Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/h/c;",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/n/i/b/d;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/c;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/c;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "bind_ticket"

    .line 84
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/r/c;->a(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->F:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/n/k/f;->m:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, v3, Lcom/netease/mpay/oversea/n/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/n/h;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/n/h;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/n/k/f$b;

    invoke-direct {v3, p0, p2}, Lcom/netease/mpay/oversea/n/k/f$b;-><init>(Lcom/netease/mpay/oversea/n/k/f;Lcom/netease/mpay/oversea/h/h;)V

    const/4 p2, 0x1

    .line 116
    invoke-virtual {v3, p2}, Lcom/netease/mpay/oversea/e;->a(Z)Lcom/netease/mpay/oversea/e;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->E:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 118
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/a;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/n/i/b/d;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 7
    iget-object v2, v0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    iget-boolean v3, v2, Lcom/netease/mpay/oversea/n/d;->f:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/netease/mpay/oversea/n/i/b/d;->j:I

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/netease/mpay/oversea/n/k/f;->q:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    .line 10
    iget-object v2, v2, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v2}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    new-instance v2, Lcom/netease/mpay/oversea/t/b;

    iget-object v6, v0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v7, v0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v2

    iget-object v6, v0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    iget-object v6, v6, Lcom/netease/mpay/oversea/n/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/d/b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v3

    goto :goto_1

    .line 17
    :cond_1
    new-instance v2, Lcom/netease/mpay/oversea/t/b;

    iget-object v3, v0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v6, v0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v6}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v3

    .line 19
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    iget-object v2, v2, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v3, :cond_4

    .line 20
    iget-object v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    iget-object v7, v3, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 21
    sget-object v6, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v6, v2, :cond_3

    .line 22
    iget-object v2, v3, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    .line 24
    :cond_3
    iget-object v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->o:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 25
    iget-object v6, v3, Lcom/netease/mpay/oversea/t/c/f;->q:Ljava/lang/String;

    iput-object v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->o:Ljava/lang/String;

    .line 29
    :cond_4
    new-instance v6, Lcom/netease/mpay/oversea/t/c/f$b;

    iget-object v8, v1, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    iget-object v9, v1, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    iget-object v10, v1, Lcom/netease/mpay/oversea/n/i/b/d;->c:Ljava/lang/String;

    iget-object v11, v1, Lcom/netease/mpay/oversea/n/i/b/d;->b:Ljava/lang/String;

    iget-object v13, v1, Lcom/netease/mpay/oversea/n/i/b/d;->g:Ljava/lang/String;

    iget-object v14, v1, Lcom/netease/mpay/oversea/n/i/b/d;->f:Ljava/util/ArrayList;

    iget-boolean v7, v1, Lcom/netease/mpay/oversea/n/i/b/d;->k:Z

    .line 32
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object v7, v6

    move-object v12, v2

    invoke-direct/range {v7 .. v15}, Lcom/netease/mpay/oversea/t/c/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    .line 33
    invoke-virtual {v6, v3}, Lcom/netease/mpay/oversea/t/c/f$b;->b(Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v3

    iget-object v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->o:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v6}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v3

    iget-object v6, v0, Lcom/netease/mpay/oversea/n/k/f;->m:Lcom/netease/mpay/oversea/n/h;

    .line 35
    invoke-virtual {v3, v6}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v3

    iget-object v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->l:Ljava/lang/String;

    .line 36
    invoke-virtual {v3, v6}, Lcom/netease/mpay/oversea/t/c/f$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v3

    iget v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->n:I

    .line 37
    invoke-virtual {v3, v6}, Lcom/netease/mpay/oversea/t/c/f$b;->a(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v3

    iget v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->m:I

    .line 38
    invoke-virtual {v3, v6}, Lcom/netease/mpay/oversea/t/c/f$b;->c(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v3

    iget-object v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->s:Ljava/lang/String;

    .line 39
    invoke-virtual {v3, v6}, Lcom/netease/mpay/oversea/t/c/f$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v3

    iget v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->q:I

    .line 40
    invoke-virtual {v3, v6}, Lcom/netease/mpay/oversea/t/c/f$b;->b(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/t/c/f$b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/mpay/oversea/n/k/f;->p:Lcom/netease/mpay/oversea/t/c/f;

    .line 42
    iget-object v6, v3, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 44
    iget-object v3, v3, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    .line 45
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 46
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v3

    iget-object v6, v0, Lcom/netease/mpay/oversea/n/k/f;->p:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v7, v6, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v3, v7, v6}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v3

    .line 48
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 51
    :try_start_0
    iget v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->j:I

    if-eq v6, v5, :cond_6

    iget v5, v1, Lcom/netease/mpay/oversea/n/i/b/d;->p:I

    if-eq v5, v4, :cond_6

    if-eqz v3, :cond_7

    .line 52
    :cond_6
    new-instance v3, Lcom/netease/mpay/oversea/h/g;

    iget-object v4, v0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v5, v0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    move-object/from16 v6, p1

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance v4, Lcom/netease/mpay/oversea/n/i/a/i;

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/netease/mpay/oversea/n/i/b/d;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/netease/mpay/oversea/n/i/b/d;->d:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v1}, Lcom/netease/mpay/oversea/n/i/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/n/i/b/e;

    .line 54
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v3

    iget-object v4, v0, Lcom/netease/mpay/oversea/n/k/f;->p:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v4, v4, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/netease/mpay/oversea/r/f;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/n/i/b/e;)V

    .line 55
    iget-object v3, v0, Lcom/netease/mpay/oversea/n/k/f;->p:Lcom/netease/mpay/oversea/t/c/f;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/n/i/b/e;->a(Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/n/k/f;)Lcom/netease/mpay/oversea/t/c/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/k/f;->p:Lcom/netease/mpay/oversea/t/c/f;

    return-object p0
.end method

.method private b(ILcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/h;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netease/mpay/oversea/h/c;",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/n/i/b/d;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__go_bind:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__force_bind_email_account_hint:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/h/c;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->o()Lcom/netease/mpay/oversea/r/c;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/h/c;->b()Lorg/json/JSONObject;

    move-result-object p2

    const/4 v1, 0x0

    const-string v2, "bind_ticket"

    .line 7
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/r/c;->a(Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    new-instance v5, Lcom/netease/mpay/oversea/n/k/f$c;

    invoke-direct {v5, p0, v3, p3}, Lcom/netease/mpay/oversea/n/k/f$c;-><init>(Lcom/netease/mpay/oversea/n/k/f;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    new-instance v7, Lcom/netease/mpay/oversea/n/k/f$d;

    invoke-direct {v7, p0, p3, p1}, Lcom/netease/mpay/oversea/n/k/f$d;-><init>(Lcom/netease/mpay/oversea/n/k/f;Lcom/netease/mpay/oversea/h/h;I)V

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/n/k/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/n/k/f;->q:Z

    return p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/n/k/f;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/n/k/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/n/k/f;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/i$f;)V
    .locals 5

    .line 56
    iget p1, p1, Lcom/netease/mpay/oversea/h/c;->a:I

    const/16 v0, 0x271d

    if-ne v0, p1, :cond_4

    .line 57
    iget-object p1, p2, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->d()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    iget-object v1, v1, Lcom/netease/mpay/oversea/n/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/h/l/e;

    .line 60
    invoke-interface {v2}, Lcom/netease/mpay/oversea/h/l/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-interface {v2}, Lcom/netease/mpay/oversea/h/l/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object p2, p2, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/t/f/d;->a(Lcom/netease/mpay/oversea/t/c/f;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    iget-object v1, v0, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_3

    .line 69
    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    iget-object p2, p2, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/t/f/d;->a(Lcom/netease/mpay/oversea/t/c/f;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object p1, p2, Lcom/netease/mpay/oversea/h/i$f;->a:Lcom/netease/mpay/oversea/t/b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    iget-object p2, p2, Lcom/netease/mpay/oversea/n/d;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/t/f/d;->b(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected final a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/h/e<",
            "Lcom/netease/mpay/oversea/n/i/b/d;",
            ">;",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/n/i/b/d;",
            ">;)V"
        }
    .end annotation

    .line 73
    new-instance p2, Lcom/netease/mpay/oversea/n/k/f$a;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/n/k/f;->m:Lcom/netease/mpay/oversea/n/h;

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/n/k/f$a;-><init>(Lcom/netease/mpay/oversea/n/k/f;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/e;)V

    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/e;Lcom/netease/mpay/oversea/h/h;)V

    return-void
.end method

.method protected a(Lcom/netease/mpay/oversea/n/d;Lcom/netease/mpay/oversea/h/i$f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 2
    iget-object p2, p1, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p2}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    sget-object p2, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v0, p1, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p2, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p2

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceTokenVerifyStart(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p2

    iget-object v0, p1, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenStart(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(ILcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/h;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netease/mpay/oversea/h/c;",
            "Lcom/netease/mpay/oversea/h/h<",
            "Lcom/netease/mpay/oversea/n/i/b/d;",
            ">;)Z"
        }
    .end annotation

    .line 74
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/h/c;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/n/k/f;->b(ILcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/h;)V

    return v1

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/h/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/h;)V

    return v1

    .line 81
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/h/i;->a(ILcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/h/h;)Z

    move-result p1

    return p1
.end method

.method protected c(I)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->a(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->e:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n/d;->a:Lcom/netease/mpay/oversea/t/c/g;

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    const/4 v7, 0x0

    const-string v4, ""

    move v6, p1

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceGetTokenDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic d(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/n/k/f;->g(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/n/i/b/d;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/n/i/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/n/d;Lcom/netease/mpay/oversea/h/i$f;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/n/k/f;->f(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/n/i/b/d;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/n/k/f;->a(Lcom/netease/mpay/oversea/h/i$f;Lcom/netease/mpay/oversea/n/i/b/d;)V

    return-object v0
.end method

.method protected f(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/n/i/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/h/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance p1, Lcom/netease/mpay/oversea/n/i/a/f;

    iget-object v1, p0, Lcom/netease/mpay/oversea/n/k/f;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/n/k/f;->o:Lcom/netease/mpay/oversea/n/d;

    invoke-direct {p1, v1, v2}, Lcom/netease/mpay/oversea/n/i/a/f;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mpay/oversea/n/i/b/d;

    return-object p1
.end method

.method protected final g(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/n/i/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/n/k/f;->n:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/n/k/f;->e(Lcom/netease/mpay/oversea/h/i$f;)Lcom/netease/mpay/oversea/n/i/b/d;

    move-result-object p1

    return-object p1
.end method
