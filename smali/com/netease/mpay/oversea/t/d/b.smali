.class public Lcom/netease/mpay/oversea/t/d/b;
.super Ljava/lang/Object;
.source "QuickLoginInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/t/d/b$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/t/d/b;->o:Z

    .line 5
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/t/d/b;->o:Z

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/t/d/b;->o:Z

    .line 14
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/netease/mpay/oversea/t/d/b;->a:J

    .line 15
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->b:Ljava/lang/String;

    const/16 v2, -0x63

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/mpay/oversea/t/d/b;->b:I

    .line 16
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    .line 17
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    .line 18
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->e:Ljava/lang/String;

    const-string v3, "--"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->e:Ljava/lang/String;

    .line 19
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->f:Ljava/lang/String;

    .line 20
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->g:Ljava/lang/String;

    .line 21
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->h:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->h:Ljava/lang/String;

    .line 22
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->i:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->i:Ljava/lang/String;

    .line 23
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->j:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/mpay/oversea/t/d/b;->k:Z

    .line 24
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->k:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/mpay/oversea/t/d/b;->m:I

    .line 25
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->l:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netease/mpay/oversea/t/d/b;->n:I

    .line 26
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->m:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/t/d/b;->j:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/netease/mpay/oversea/t/d/b;->b:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/t/d/b;->o:Z

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/d/b;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/t/d/b;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/t/d/b;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v2

    iput v2, v1, Lcom/netease/mpay/oversea/t/d/b;->b:I

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iput-object v3, v1, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    iput-object v3, v1, Lcom/netease/mpay/oversea/t/d/b;->g:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    iput-object v3, v1, Lcom/netease/mpay/oversea/t/d/b;->h:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    iput-object v3, v1, Lcom/netease/mpay/oversea/t/d/b;->i:Ljava/lang/String;

    .line 9
    iput-object v2, v1, Lcom/netease/mpay/oversea/t/d/b;->l:Ljava/lang/String;

    .line 10
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/t/c/f;->o:Z

    iput-boolean v2, v1, Lcom/netease/mpay/oversea/t/d/b;->k:Z

    .line 11
    iget v2, p0, Lcom/netease/mpay/oversea/t/c/f;->m:I

    iput v2, v1, Lcom/netease/mpay/oversea/t/d/b;->m:I

    .line 12
    iget-object v2, p0, Lcom/netease/mpay/oversea/t/c/f;->q:Ljava/lang/String;

    iput-object v2, v1, Lcom/netease/mpay/oversea/t/d/b;->j:Ljava/lang/String;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netease/mpay/oversea/t/d/b;->a:J

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v1, Lcom/netease/mpay/oversea/t/d/b;->o:Z

    .line 15
    iget p0, p0, Lcom/netease/mpay/oversea/t/c/f;->s:I

    iput p0, v1, Lcom/netease/mpay/oversea/t/d/b;->n:I

    .line 16
    invoke-virtual {v1, v0, v0}, Lcom/netease/mpay/oversea/t/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;
    .locals 2

    .line 17
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/t/d/b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/t/d/b;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 19
    :catch_0
    new-instance p0, Lcom/netease/mpay/oversea/t/d/b;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/t/d/b;-><init>()V

    return-object p0
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/t/c/f;
    .locals 10

    .line 20
    new-instance v9, Lcom/netease/mpay/oversea/t/c/f$b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/t/d/b;->i:Ljava/lang/String;

    iget v0, p0, Lcom/netease/mpay/oversea/t/d/b;->b:I

    .line 21
    invoke-static {v0}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/mpay/oversea/t/d/b;->h:Ljava/lang/String;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/oversea/t/c/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/d/b;->j:Ljava/lang/String;

    .line 22
    invoke-virtual {v9, v0}, Lcom/netease/mpay/oversea/t/c/f$b;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/oversea/t/d/b;->n:I

    .line 23
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->b(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->g:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/c/f$b;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f$b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "--"

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    iput-object p2, p0, Lcom/netease/mpay/oversea/t/d/b;->e:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p1, v1

    :cond_1
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/d/b;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 2
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/oversea/t/d/b;->b:I

    .line 5
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->f()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    .line 12
    :cond_2
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/d/b;->h:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/d/b;->i:Ljava/lang/String;

    .line 16
    :cond_3
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/d/b;->g:Ljava/lang/String;

    .line 19
    :cond_4
    iget-boolean v0, p1, Lcom/netease/mpay/oversea/t/c/f;->o:Z

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/t/d/b;->k:Z

    .line 20
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/d/b;->j:Ljava/lang/String;

    .line 21
    iget p1, p1, Lcom/netease/mpay/oversea/t/c/f;->s:I

    iput p1, p0, Lcom/netease/mpay/oversea/t/d/b;->n:I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mpay/oversea/t/d/b;->a:J

    :cond_5
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/t/d/b;->o:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/d/b;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->b:Ljava/lang/String;

    iget v2, p0, Lcom/netease/mpay/oversea/t/d/b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/netease/mpay/oversea/t/d/b;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->j:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/netease/mpay/oversea/t/d/b;->k:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->k:Ljava/lang/String;

    iget v2, p0, Lcom/netease/mpay/oversea/t/d/b;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->l:Ljava/lang/String;

    iget v2, p0, Lcom/netease/mpay/oversea/t/d/b;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    sget-object v1, Lcom/netease/mpay/oversea/t/d/b$a;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/d/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
