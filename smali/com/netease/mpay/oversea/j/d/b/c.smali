.class public Lcom/netease/mpay/oversea/j/d/b/c;
.super Lcom/netease/mpay/oversea/j/a;
.source "EmailUCEntrance.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/netease/mpay/oversea/j/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    const-string v1, "hydra_email_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/j/d/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    const-string v1, "hydra_email_register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-class v0, Lcom/netease/mpay/oversea/j/d/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    const-string v1, "hydra_email_password_reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    const-class v0, Lcom/netease/mpay/oversea/j/d/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    const-string v1, "hydra_email_password_new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    const-class v0, Lcom/netease/mpay/oversea/j/d/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    const-string v1, "hydra_email_verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    const-class v0, Lcom/netease/mpay/oversea/j/d/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/d;->a:Ljava/lang/String;

    const-string v1, "hydra_email_result "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    const-class v0, Lcom/netease/mpay/oversea/j/d/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_5
    invoke-super {p0}, Lcom/netease/mpay/oversea/ui/z/d;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
