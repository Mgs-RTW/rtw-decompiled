.class Lcom/netease/mpay/oversea/t/f/c;
.super Lcom/netease/mpay/oversea/t/f/g/g;
.source "LocalAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/t/f/c$b;,
        Lcom/netease/mpay/oversea/t/f/c$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/oversea/t/f/c$a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/t/f/g/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/netease/mpay/oversea/t/f/c$a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    invoke-direct {p2, p1, v0, v1}, Lcom/netease/mpay/oversea/t/f/c$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/t/f/c;->d:Lcom/netease/mpay/oversea/t/f/c$a;

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/e;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/e/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/netease/mpay/oversea/t/f/g/b;->a(Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/netease/mpay/oversea/t/c/e;->a([B)Lcom/netease/mpay/oversea/t/c/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/t/c/e;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/e;->a()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/oversea/t/f/g/b;->b(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "version"

    .line 3
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-static {v0}, Lcom/netease/mpay/oversea/t/e/d;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "account"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    iget v0, p1, Lcom/netease/mpay/oversea/t/c/e;->b:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/c;->d:Lcom/netease/mpay/oversea/t/f/c$a;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/t/f/c$a;->a(Lcom/netease/mpay/oversea/t/c/e;)V

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "======write=======\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/e;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/netease/mpay/oversea/t/c/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/g/b;->b:Landroid/content/SharedPreferences;

    const-string v1, "account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "local account is null"

    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/f/c;->d:Lcom/netease/mpay/oversea/t/f/c$a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/c$a;->e()Lcom/netease/mpay/oversea/t/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/t/f/c;->a(Lcom/netease/mpay/oversea/t/c/e;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/e;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======read sdcard=======\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    return-object v0

    .line 12
    :cond_2
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/f/c;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/c/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/e;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======read internal=======\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    return-object v0
.end method
