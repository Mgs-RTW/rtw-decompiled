.class Lcom/netease/mpay/oversea/t/e/a;
.super Ljava/lang/Object;
.source "AndroidID.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/t/e/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "device3247353318869876128"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/t/e/d;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/t/e/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/t/e/a;->a:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/netease/mpay/oversea/t/e/a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/t/e/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "device3247353318869876128"

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    .line 4
    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/t/e/a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/netease/mpay/oversea/t/e/c;->d([BLjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 12
    invoke-static {v2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 13
    invoke-static {v2}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mpay3247353318869876128"

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 6

    const-string v0, "device3247353318869876128"

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 6
    new-array v3, v3, [B

    .line 7
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 8
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/t/e/a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/netease/mpay/oversea/t/e/c;->b([BLjava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 9
    :try_start_1
    new-instance v1, Lcom/netease/mpay/oversea/t/e/a$a;

    iget-object v3, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/mpay/oversea/t/e/a;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v4}, Lcom/netease/mpay/oversea/t/e/a$a;-><init>(Lcom/netease/mpay/oversea/t/e/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/t/e/a$a;->a(Lcom/netease/mpay/oversea/t/e/a$a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 22
    :goto_0
    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 23
    :goto_1
    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 24
    :goto_2
    invoke-static {v1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_6
    nop

    .line 25
    new-instance v1, Lcom/netease/mpay/oversea/t/e/a$a;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/mpay/oversea/t/e/a;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/mpay/oversea/t/e/a$a;-><init>(Lcom/netease/mpay/oversea/t/e/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/mpay/oversea/t/e/a$a;->a(Lcom/netease/mpay/oversea/t/e/a$a;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/netease/mpay/oversea/t/e/a;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 29
    :cond_0
    invoke-direct {p0, v2}, Lcom/netease/mpay/oversea/t/e/a;->a(Ljava/lang/String;)V

    .line 38
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/mpay/oversea/t/e/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mpay3247353318869876128"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-direct {p0, v2}, Lcom/netease/mpay/oversea/t/e/a;->a(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/netease/mpay/oversea/t/e/a$a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/mpay/oversea/t/e/a;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3}, Lcom/netease/mpay/oversea/t/e/a$a;-><init>(Lcom/netease/mpay/oversea/t/e/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/t/e/a$a;->a(Lcom/netease/mpay/oversea/t/e/a$a;Ljava/lang/String;)V

    .line 44
    :cond_1
    sput-object v2, Lcom/netease/mpay/oversea/t/e/e;->b:Ljava/lang/String;

    return-object v2
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device3247353318869876128_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lcom/netease/mpay/oversea/t/f/g/d$a;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "device3247353318869876128"

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/mpay/oversea/t/e/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/t/e/a;->a(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/t/e/a$a;

    iget-object v2, p0, Lcom/netease/mpay/oversea/t/e/a;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/netease/mpay/oversea/t/e/a;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/mpay/oversea/t/e/a$a;-><init>(Lcom/netease/mpay/oversea/t/e/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/t/e/a$a;->a(Lcom/netease/mpay/oversea/t/e/a$a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/t/e/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
