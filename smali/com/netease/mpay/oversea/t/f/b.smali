.class public Lcom/netease/mpay/oversea/t/f/b;
.super Lcom/netease/mpay/oversea/t/f/g/g;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/t/f/b$b;,
        Lcom/netease/mpay/oversea/t/f/b$a;
    }
.end annotation


# static fields
.field private static g:Lcom/netease/mpay/oversea/t/f/b;


# instance fields
.field private d:Lcom/netease/mpay/oversea/t/c/c;

.field private e:Lcom/netease/mpay/oversea/t/f/b$a;

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/t/f/g/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/netease/mpay/oversea/t/f/b;->f:Z

    .line 6
    new-instance p2, Lcom/netease/mpay/oversea/t/f/b$a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/c;->a:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lcom/netease/mpay/oversea/t/f/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/t/f/b;->e:Lcom/netease/mpay/oversea/t/f/b$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/t/f/b;
    .locals 2

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/t/f/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/t/f/b;->g:Lcom/netease/mpay/oversea/t/f/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/t/f/b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/f/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/t/f/b;->g:Lcom/netease/mpay/oversea/t/f/b;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object v1, v1, Lcom/netease/mpay/oversea/t/f/g/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Lcom/netease/mpay/oversea/t/f/b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/f/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/t/f/b;->g:Lcom/netease/mpay/oversea/t/f/b;

    .line 10
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-object p1, Lcom/netease/mpay/oversea/t/f/b;->g:Lcom/netease/mpay/oversea/t/f/b;

    invoke-static {p0}, Lcom/netease/mpay/oversea/h/m/c;->c(Landroid/content/Context;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/netease/mpay/oversea/t/f/b;->f:Z

    .line 12
    sget-object p0, Lcom/netease/mpay/oversea/t/f/b;->g:Lcom/netease/mpay/oversea/t/f/b;

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

.method static synthetic a(Lcom/netease/mpay/oversea/t/f/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/c;
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/netease/mpay/oversea/t/c/c;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/t/c/c;-><init>()V

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/e/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/t/f/g/b;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/netease/mpay/oversea/t/c/c;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/t/c/c;-><init>()V

    return-object p1

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/c/c;->a([B)Lcom/netease/mpay/oversea/t/c/c;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/c;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/netease/mpay/oversea/t/c/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/t/f/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c()Lcom/netease/mpay/oversea/t/f/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/f/b;->g:Lcom/netease/mpay/oversea/t/f/b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/netease/mpay/oversea/t/c/c;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/f/b;->d:Lcom/netease/mpay/oversea/t/c/c;

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/c;->a()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/oversea/t/f/g/b;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "version"

    const/4 v3, 0x1

    .line 18
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-static {v0}, Lcom/netease/mpay/oversea/t/e/d;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dev"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/c;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/netease/mpay/oversea/t/c/c;->b:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/b;->e:Lcom/netease/mpay/oversea/t/f/b$a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/f/b$a;->a(Lcom/netease/mpay/oversea/t/c/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d()Lcom/netease/mpay/oversea/t/c/c;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->h()Lcom/netease/mpay/oversea/r/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->C()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/b;->d:Lcom/netease/mpay/oversea/t/c/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "dev"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/t/f/b;->f:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/b;->e:Lcom/netease/mpay/oversea/t/f/b$a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b$a;->e()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/b;->d:Lcom/netease/mpay/oversea/t/c/c;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/t/f/b;->a(Lcom/netease/mpay/oversea/t/c/c;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/f/b;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/b;->d:Lcom/netease/mpay/oversea/t/c/c;

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/b;->d:Lcom/netease/mpay/oversea/t/c/c;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/b;->c()Lcom/netease/mpay/oversea/trackers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/f/b;->d:Lcom/netease/mpay/oversea/t/c/c;

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/trackers/b;->f(Ljava/lang/String;)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/b;->d:Lcom/netease/mpay/oversea/t/c/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Wipe Device Enter"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/t/c/c;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/t/c/c;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/f/b;->d:Lcom/netease/mpay/oversea/t/c/c;

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dev"

    .line 4
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/b;->e:Lcom/netease/mpay/oversea/t/f/b$a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/b$a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
