.class public Lcom/netease/mpay/oversea/j/b;
.super Ljava/lang/Object;
.source "EmailEntryFactory.java"


# direct methods
.method public static a(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/j/a;
    .locals 10

    move-object v0, p0

    .line 41
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/h;->d(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->d:Lcom/netease/mpay/oversea/n/h;

    if-eq v1, v0, :cond_1

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->B:Lcom/netease/mpay/oversea/n/h;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/j/d/a/a;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move-object v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/netease/mpay/oversea/j/d/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)V

    return-object v0

    .line 45
    :cond_1
    :goto_0
    new-instance v0, Lcom/netease/mpay/oversea/j/d/b/c;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/netease/mpay/oversea/j/d/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j/a;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 2
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j/a;->l()Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__register_email_title:I

    .line 3
    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j/a;->j()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v6

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object v7

    const-string v1, "hydra_email_register"

    const-string v2, "hydra_email_login"

    const/16 v5, 0x1f5

    .line 5
    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/j/b;->a(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/j/a;

    move-result-object p0

    .line 9
    new-instance p2, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v0, 0x1f5

    invoke-direct {p2, v0, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 8

    .line 10
    iget-object v0, p4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_account:I

    .line 11
    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "hydra_email_register"

    const/16 v5, 0x1f5

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p5

    .line 12
    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/j/b;->a(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/j/a;

    move-result-object p0

    .line 14
    new-instance p1, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 p2, 0x1f5

    invoke-direct {p1, p2, p0, p4}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 8

    .line 15
    iget-object v0, p4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__verify_email_title:I

    .line 17
    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "hydra_email_verify"

    const/16 v5, 0x1f6

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p5

    .line 18
    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/j/b;->a(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/j/a;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p6, p7}, Lcom/netease/mpay/oversea/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 p2, 0x1f6

    invoke-direct {p1, p2, p0, p4}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j/a;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 8

    .line 26
    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    .line 28
    invoke-static {v0}, Lcom/netease/mpay/oversea/n/h;->c(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_account:I

    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_0
    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__reset_password:I

    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v4, p0

    .line 31
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->j()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v6

    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object v7

    const/16 v5, 0x1f8

    const-string v1, "hydra_email_password_new"

    move-object v2, p1

    move-object v3, p2

    .line 32
    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/j/b;->a(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/j/a;

    move-result-object p0

    .line 38
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/j/a;->b(Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 p2, 0x1f8

    invoke-direct {p1, p2, p0, p3}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 9

    .line 24
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v1, p4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    const-string v2, "email_update"

    const/16 v6, 0x1fa

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v7, p2

    move-object v8, p5

    .line 25
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/j/b;->a(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/j/a;

    move-result-object p0

    const/16 p1, 0x1fa

    invoke-direct {v0, p1, p0, p4}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 9

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v1, p4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_email_title:I

    .line 4
    invoke-static {p0, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "hydra_email_login"

    const/16 v6, 0x1f4

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p5

    .line 5
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/j/b;->a(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/j/a;

    move-result-object p0

    const/16 p1, 0x1f4

    invoke-direct {v0, p1, p0, p4}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j/a;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 8

    .line 6
    iget-object v0, p3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    iget-object v4, p4, Lcom/netease/mpay/oversea/ui/z/d;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->j()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v6

    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object v7

    const-string v1, "hydra_email_result "

    const/16 v5, 0x1f9

    move-object v2, p1

    move-object v3, p2

    .line 9
    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/j/b;->a(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/j/a;

    move-result-object p0

    .line 12
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/j/a;->b(Ljava/lang/String;)V

    .line 14
    new-instance p1, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 p2, 0x1f9

    invoke-direct {p1, p2, p0, p3}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object p1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 9

    .line 5
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    iget-object v1, p4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__reset_password:I

    .line 7
    invoke-static {p0, v2}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "hydra_email_password_reset"

    const/16 v6, 0x1f7

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, p5

    .line 8
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/j/b;->a(Lcom/netease/mpay/oversea/n/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/j/a;

    move-result-object p0

    const/16 p1, 0x1f7

    invoke-direct {v0, p1, p0, p4}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j/a;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 8

    .line 1
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->j()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v3

    .line 3
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->h()Lcom/netease/mpay/oversea/thirdapi/h;

    move-result-object v5

    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Lcom/netease/mpay/oversea/j/a;->k()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 4
    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/oversea/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p0

    return-object p0
.end method
