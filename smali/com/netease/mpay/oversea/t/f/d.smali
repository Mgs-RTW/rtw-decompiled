.class public Lcom/netease/mpay/oversea/t/f/d;
.super Lcom/netease/mpay/oversea/t/f/g/g;
.source "Login.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/t/f/d$b;,
        Lcom/netease/mpay/oversea/t/f/d$a;
    }
.end annotation


# static fields
.field private static m:Lcom/netease/mpay/oversea/t/f/d;


# instance fields
.field private d:Lcom/netease/mpay/oversea/t/d/a;

.field private e:Lcom/netease/mpay/oversea/t/c/f;

.field private f:Ljava/lang/String;

.field private g:Lcom/netease/mpay/oversea/t/c/e;

.field private h:Lcom/netease/mpay/oversea/t/c/g;

.field private i:Lcom/netease/mpay/oversea/t/f/c;

.field private j:Lcom/netease/mpay/oversea/t/f/d$a;

.field private k:Lcom/netease/mpay/oversea/t/f/f;

.field private l:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/t/f/g/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/t/f/d;->l:Z

    .line 12
    new-instance v0, Lcom/netease/mpay/oversea/t/f/c;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/t/f/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->i:Lcom/netease/mpay/oversea/t/f/c;

    .line 13
    new-instance v0, Lcom/netease/mpay/oversea/t/f/d$a;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/t/f/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->j:Lcom/netease/mpay/oversea/t/f/d$a;

    .line 14
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/t/f/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/f/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->k:Lcom/netease/mpay/oversea/t/f/f;

    .line 15
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/t/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->d:Lcom/netease/mpay/oversea/t/d/a;

    return-void
.end method

.method private a(Ljava/lang/String;I)Lcom/netease/mpay/oversea/t/c/f;
    .locals 1

    .line 25
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/e/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 29
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/t/f/d;->m:Lcom/netease/mpay/oversea/t/f/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/t/f/g/b;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 30
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/c/f;->a([B)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/f/d;
    .locals 2

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/t/f/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/t/f/d;->m:Lcom/netease/mpay/oversea/t/f/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/t/f/d;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/t/f/d;->m:Lcom/netease/mpay/oversea/t/f/d;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object v1, v1, Lcom/netease/mpay/oversea/t/f/g/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/t/f/d;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/t/f/d;->m:Lcom/netease/mpay/oversea/t/f/d;

    .line 10
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object p1, Lcom/netease/mpay/oversea/t/f/d;->m:Lcom/netease/mpay/oversea/t/f/d;

    invoke-static {p0}, Lcom/netease/mpay/oversea/h/m/c;->c(Landroid/content/Context;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/netease/mpay/oversea/t/f/d;->l:Z

    .line 12
    sget-object p0, Lcom/netease/mpay/oversea/t/f/d;->m:Lcom/netease/mpay/oversea/t/f/d;

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/t/f/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/t/f/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c()Lcom/netease/mpay/oversea/t/f/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/f/d;->m:Lcom/netease/mpay/oversea/t/f/d;

    return-object v0
.end method

.method private c(Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    iget v1, v0, Lcom/netease/mpay/oversea/t/c/e;->b:I

    iget v2, p1, Lcom/netease/mpay/oversea/t/c/f;->n:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/netease/mpay/oversea/t/c/e;->c:I

    iget v1, p1, Lcom/netease/mpay/oversea/t/c/f;->m:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x66

    const/4 v1, 0x2

    .line 19
    iget-object v2, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    if-eqz v2, :cond_2

    .line 20
    iget v0, v2, Lcom/netease/mpay/oversea/t/c/e;->b:I

    .line 21
    iget v1, v2, Lcom/netease/mpay/oversea/t/c/e;->c:I

    .line 23
    :cond_2
    iget-object v2, p1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 24
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->f:Ljava/lang/String;

    .line 25
    iget v0, p1, Lcom/netease/mpay/oversea/t/c/f;->n:I

    .line 26
    iget v1, p1, Lcom/netease/mpay/oversea/t/c/f;->m:I

    :cond_3
    move v6, v0

    move v7, v1

    .line 28
    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    iput-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    .line 30
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v5

    .line 31
    new-instance p1, Lcom/netease/mpay/oversea/t/c/e;

    iget-object v3, p0, Lcom/netease/mpay/oversea/t/f/g/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/t/f/d;->f:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/netease/mpay/oversea/t/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    .line 32
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->i:Lcom/netease/mpay/oversea/t/f/c;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/f/c;->a(Lcom/netease/mpay/oversea/t/c/e;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->f:Ljava/lang/String;

    .line 9
    new-instance p1, Lcom/netease/mpay/oversea/t/c/e;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/f/g/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x66

    const/4 v5, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/t/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    .line 10
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->i:Lcom/netease/mpay/oversea/t/f/c;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/f/c;->a(Lcom/netease/mpay/oversea/t/c/e;)V

    :cond_1
    return-void
.end method

.method private d(Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/oversea/r/e;->g:Z

    if-nez v0, :cond_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->k:Lcom/netease/mpay/oversea/t/f/f;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/f;->c()Lcom/netease/mpay/oversea/t/c/h;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/netease/mpay/oversea/t/c/h;->a:Z

    .line 12
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->e()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/c/h;->a(Z)V

    .line 13
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->k:Lcom/netease/mpay/oversea/t/f/f;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/t/f/f;->a(Lcom/netease/mpay/oversea/t/c/h;)V

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object p1

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/t/c/h;->a:Z

    invoke-virtual {p1, v1}, Lcom/netease/mpay/oversea/r/e;->a(Z)V

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object p1

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/h;->c()Z

    move-result v0

    iput-boolean v0, p1, Lcom/netease/mpay/oversea/r/e;->g:Z

    :cond_1
    return-void
.end method

.method private declared-synchronized h()V
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    const-string v2, "version"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/t/f/d;->l:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->j:Lcom/netease/mpay/oversea/t/f/d$a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d$a;->e()Lcom/netease/mpay/oversea/t/c/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget v1, v0, Lcom/netease/mpay/oversea/t/c/d;->e:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_1

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/t/c/f$b;

    iget-object v4, v0, Lcom/netease/mpay/oversea/t/c/d;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/netease/mpay/oversea/t/c/d;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/netease/mpay/oversea/t/c/d;->f:Lcom/netease/mpay/oversea/t/c/g;

    .line 8
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/netease/mpay/oversea/t/c/f$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    const-string v2, ""

    .line 9
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v1

    iget v2, v0, Lcom/netease/mpay/oversea/t/c/d;->e:I

    .line 10
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->c(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v1

    const-string v2, ""

    .line 11
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v1

    iget v2, v0, Lcom/netease/mpay/oversea/t/c/d;->d:I

    .line 12
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/t/c/f$b;->a(I)Lcom/netease/mpay/oversea/t/c/f$b;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/f$b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    .line 14
    iget-boolean v0, v0, Lcom/netease/mpay/oversea/t/c/d;->g:Z

    iput-boolean v0, v1, Lcom/netease/mpay/oversea/t/c/f;->k:Z

    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/t/f/d;->a(Ljava/lang/String;I)Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    .line 21
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/t/f/d;->i()V

    .line 23
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/f/d;->c(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "loginInfo is null"

    .line 25
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "======read=======\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->i:Lcom/netease/mpay/oversea/t/f/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/c;->c()Lcom/netease/mpay/oversea/t/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/e;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/mpay/oversea/t/f/d;->f:Ljava/lang/String;

    .line 6
    iget v0, v0, Lcom/netease/mpay/oversea/t/c/e;->d:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->h:Lcom/netease/mpay/oversea/t/c/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    .line 18
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data"

    .line 19
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->j:Lcom/netease/mpay/oversea/t/f/d$a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d$a;->g()V

    .line 23
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/f/d;->c(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->d:Lcom/netease/mpay/oversea/t/d/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/d/a;->b(Lcom/netease/mpay/oversea/t/c/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/mpay/oversea/t/c/f;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/t/c/f;

    .line 15
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/t/f/d;->e(Lcom/netease/mpay/oversea/t/c/f;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    iget v1, p1, Lcom/netease/mpay/oversea/t/c/f;->n:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/r/f;->a(I)V

    .line 9
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "save"

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    .line 11
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/t/f/d;->e(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 12
    sget-object v0, Lcom/netease/mpay/oversea/t/f/d;->m:Lcom/netease/mpay/oversea/t/f/d;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->a()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/t/f/g/b;->b(Ljava/lang/String;[B)[B

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version"

    const/4 v2, 0x1

    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/e/d;->a([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->j:Lcom/netease/mpay/oversea/t/f/d$a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/t/f/d$a;->a(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 18
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/t/f/d;->c(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/t/f/d;->d(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "loginInfo is null"

    .line 22
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======write=======\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/t/f/d;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Lcom/netease/mpay/oversea/t/c/f;
    .locals 3

    const-string v0, "get"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/netease/mpay/oversea/t/f/d;->h()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "loginInfo is null"

    .line 7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLogin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    return-object v0
.end method

.method public e()Lcom/netease/mpay/oversea/t/c/f;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/f/d;->d()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/netease/mpay/oversea/t/c/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->d:Lcom/netease/mpay/oversea/t/d/a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/d/a;->a(Lcom/netease/mpay/oversea/t/c/f;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/t/f/d;->h()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->g:Lcom/netease/mpay/oversea/t/c/e;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/t/f/d;->h()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->h:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method

.method public declared-synchronized j()Lcom/netease/mpay/oversea/t/c/f;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "logout"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/f/d;->d()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    sget-object v2, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v3, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v2, v3, :cond_0

    .line 7
    iput-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->c:Ljava/lang/String;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/netease/mpay/oversea/t/c/f;->k:Z

    .line 10
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    goto :goto_0

    .line 12
    :cond_0
    iput-object v1, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    .line 13
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data"

    .line 14
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/f/d;->j:Lcom/netease/mpay/oversea/t/f/d$a;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/d$a;->g()V

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/f;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "loginInfo is null"

    .line 20
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======logout=======\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()V
    .locals 2

    const-string v0, "wipeLoginToken"

    const-string v1, "enter"

    .line 1
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/f/d;->d()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/t/f/d;->b(Lcom/netease/mpay/oversea/t/c/f;)V

    .line 8
    :cond_0
    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/d;->e:Lcom/netease/mpay/oversea/t/c/f;

    return-void
.end method
