.class public Lcom/netease/mpay/oversea/ui/d;
.super Ljava/lang/Object;
.source "ChannelLoginApi.java"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 207
    invoke-static {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/e;)V
    .locals 1

    .line 60
    :try_start_0
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->p:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_channel_not_support:I

    .line 63
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3eb

    const/16 p2, 0x66

    .line 64
    invoke-interface {p3, p1, p0, p2}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Ljava/lang/String;ILcom/netease/mpay/oversea/MpayBindCallback;)V
    .locals 2

    .line 65
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    invoke-direct {v0, p0, p2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 67
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v1, :cond_3

    iget-object p2, p2, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 68
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-static {p3}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object p2

    .line 73
    sget-object p3, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p3, p2, :cond_2

    sget-object p3, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-ne p3, p2, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    sget-object p3, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    new-instance v0, Lcom/netease/mpay/oversea/ui/d$b;

    invoke-direct {v0, p4}, Lcom/netease/mpay/oversea/ui/d$b;-><init>(Lcom/netease/mpay/oversea/MpayBindCallback;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)Z

    return-void

    :cond_2
    :goto_0
    const/16 p0, 0x3ef

    .line 78
    invoke-interface {p4, p0, v0}, Lcom/netease/mpay/oversea/MpayBindCallback;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const/16 p0, 0x3ee

    .line 79
    invoke-interface {p4, p0, v0}, Lcom/netease/mpay/oversea/MpayBindCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 199
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->j()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/t/c/g;

    .line 203
    iget v2, p1, Lcom/netease/mpay/oversea/t/c/f;->l:I

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/t/c/g;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result v1

    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/UnBindCallback;)V
    .locals 14

    move-object v7, p0

    move-object/from16 v4, p3

    .line 106
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    move-object v8, p1

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v9

    .line 115
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v1, v9, :cond_2

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq v1, v9, :cond_2

    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->B:Lcom/netease/mpay/oversea/t/c/g;

    if-ne v1, v9, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    new-instance v10, Lcom/netease/mpay/oversea/u/b/c;

    iget-object v11, v0, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v12, v0, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    new-instance v13, Lcom/netease/mpay/oversea/ui/d$c;

    sget-object v3, Lcom/netease/mpay/oversea/n/h;->c:Lcom/netease/mpay/oversea/n/h;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/ui/d$c;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/UnBindCallback;Landroid/app/Activity;Ljava/lang/String;)V

    move-object v0, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v9

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/oversea/u/b/c;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/n/k/g;)V

    .line 196
    invoke-virtual {v10}, Lcom/netease/mpay/oversea/h/i;->b()V

    return-void

    .line 197
    :cond_2
    :goto_0
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__unbind_not_support:I

    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xbbc

    invoke-interface {v4, v1, v0}, Lcom/netease/mpay/oversea/UnBindCallback;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const/16 v0, 0xbbb

    const/4 v1, 0x0

    .line 198
    invoke-interface {v4, v0, v1}, Lcom/netease/mpay/oversea/UnBindCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/e;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\naccount:"

    const-string v2, "\ntype:"

    const-string v3, "\ntoken:"

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->h()V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new LoginInfo:\nuid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    .line 15
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    :try_start_0
    iget-object v1, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    invoke-static {p0, v0, v1, v2, p2}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)Z

    if-eqz p0, :cond_4

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 26
    :catch_0
    new-instance v0, Lcom/netease/mpay/oversea/h/c;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_expired:I

    .line 27
    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2722

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/h/c;-><init>(ILjava/lang/String;)V

    .line 28
    new-instance v1, Lcom/netease/mpay/oversea/ui/d$a;

    invoke-direct {v1, p2, v0, p1, p0}, Lcom/netease/mpay/oversea/ui/d$a;-><init>(Lcom/netease/mpay/oversea/e;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/t/c/f;Landroid/app/Activity;)V

    invoke-static {p0, v0, v1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/h/c;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_2

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoginInfo:\nuid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/String;)V

    .line 52
    new-instance p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->f:Lcom/netease/mpay/oversea/n/h;

    invoke-direct {p1, v0, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    if-eqz p0, :cond_4

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_2
    :goto_0
    const/16 v0, 0x3ee

    if-eqz p1, :cond_3

    .line 55
    iget p1, p1, Lcom/netease/mpay/oversea/t/c/f;->n:I

    goto :goto_1

    :cond_3
    const/16 p1, 0x66

    :goto_1
    const-string v1, ""

    .line 56
    invoke-interface {p2, v0, v1, p1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    if-eqz p0, :cond_4

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_2
    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->h:Lcom/netease/mpay/oversea/t/c/g;

    if-eq p2, v0, :cond_6

    .line 83
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-direct {v0, p3, p4}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/n/h;Lcom/netease/mpay/oversea/e;)V

    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p4

    .line 84
    sget-object v0, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    const/4 v1, 0x1

    if-eq v0, p3, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->B:Lcom/netease/mpay/oversea/n/h;

    if-ne v0, p3, :cond_1

    .line 85
    :cond_0
    invoke-virtual {p4, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 87
    :cond_1
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/c/g;->f()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 88
    instance-of p3, p0, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz p3, :cond_2

    .line 89
    new-instance p2, Lcom/netease/mpay/oversea/ui/f;

    new-instance p3, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {p3, p0, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/netease/mpay/oversea/ui/f;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 90
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p4, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 93
    invoke-static {p0, p4}, Lcom/netease/mpay/oversea/a;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/c/g;->g()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 96
    instance-of p3, p0, Lcom/netease/mpay/oversea/MpayActivity;

    if-eqz p3, :cond_4

    .line 97
    new-instance p2, Lcom/netease/mpay/oversea/ui/n;

    new-instance p3, Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {p3, p0, v0}, Lcom/netease/mpay/oversea/ui/h;-><init>(Landroid/app/Activity;Z)V

    invoke-direct {p2, p0, p1, p4, p3}, Lcom/netease/mpay/oversea/ui/n;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    .line 98
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/m;->m()Z

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p4, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 101
    invoke-static {p0, p4}, Lcom/netease/mpay/oversea/a;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/t/c/g;->i()I

    move-result p1

    invoke-static {p0, p1, p4}, Lcom/netease/mpay/oversea/a;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    :goto_0
    return v1

    .line 105
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z
    .locals 0

    .line 205
    invoke-static {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 0

    .line 206
    invoke-static {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/c/f;->d()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p0

    iget-object p0, p0, Lcom/netease/mpay/oversea/r/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/m/b;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 8
    :cond_3
    :goto_2
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/m/b;->e()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 0

    .line 9
    invoke-static {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/thirdapi/f;->b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z

    move-result p0

    return p0
.end method
