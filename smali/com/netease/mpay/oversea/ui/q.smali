.class public Lcom/netease/mpay/oversea/ui/q;
.super Lcom/netease/mpay/oversea/ui/m;
.source "TokenLogin.java"


# instance fields
.field private r:Lcom/netease/mpay/oversea/t/c/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V
    .locals 6

    .line 1
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/m;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/q;->n()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->r:Lcom/netease/mpay/oversea/t/c/f;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/q;)Lcom/netease/mpay/oversea/t/c/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/q;->r:Lcom/netease/mpay/oversea/t/c/f;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/q;Lcom/netease/mpay/oversea/t/c/f;)Lcom/netease/mpay/oversea/t/c/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->r:Lcom/netease/mpay/oversea/t/c/f;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 3

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method private n()Lcom/netease/mpay/oversea/t/c/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/d/b;->a()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->r:Lcom/netease/mpay/oversea/t/c/f;

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->k:Lcom/netease/mpay/oversea/ui/h;

    new-instance p2, Lcom/netease/mpay/oversea/ui/h$h;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    new-instance v1, Lcom/netease/mpay/oversea/h/c;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/h/c;-><init>()V

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/ui/h$h;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/h/c;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 11
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/e;

    move-result-object v0

    .line 12
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h$g;Lcom/netease/mpay/oversea/e;)V

    return-void

    .line 17
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance p1, Lcom/netease/mpay/oversea/h/l/a;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/q;->r:Lcom/netease/mpay/oversea/t/c/f;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    const-string v0, "user_id"

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance p1, Lcom/netease/mpay/oversea/h/l/a;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/q;->r:Lcom/netease/mpay/oversea/t/c/f;

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    const-string v0, "token"

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance p1, Lcom/netease/mpay/oversea/h/l/a;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/oversea/r/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "support_account_types"

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/q;->r:Lcom/netease/mpay/oversea/t/c/f;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object p2, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p1, p2, :cond_1

    .line 22
    new-instance p1, Lcom/netease/mpay/oversea/h/l/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/q;->r:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v0, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "account_type"

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->J:Lcom/netease/mpay/oversea/t/c/g;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/q;->r:Lcom/netease/mpay/oversea/t/c/f;

    iget-object v5, v2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v7, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v4

    new-instance v6, Lcom/netease/mpay/oversea/ui/q$a;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/ui/q$a;-><init>(Lcom/netease/mpay/oversea/ui/q;)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 120
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/thirdapi/g;)Lcom/netease/mpay/oversea/h/c;
    .locals 0

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/h/c;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/h/c;-><init>()V

    return-object p1
.end method
