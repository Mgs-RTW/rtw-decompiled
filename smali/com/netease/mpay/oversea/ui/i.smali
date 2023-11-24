.class public Lcom/netease/mpay/oversea/ui/i;
.super Lcom/netease/mpay/oversea/ui/m;
.source "GoogleLogin.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V
    .locals 6

    .line 1
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/m;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/z/c;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/h;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 77
    new-instance v0, Lcom/netease/mpay/oversea/ui/i$a;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/ui/i$a;-><init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/h/c;)V

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/ui/i$b;-><init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/h/c;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/h/c;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/h/c;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    .line 78
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 79
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 80
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    iget-object v3, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private b(Lcom/netease/mpay/oversea/h/c;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/i$c;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/ui/i$c;-><init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/h/c;)V

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$d;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/ui/i$d;-><init>(Lcom/netease/mpay/oversea/ui/i;Lcom/netease/mpay/oversea/h/c;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/h/c;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/netease/mpay/oversea/thirdapi/g;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/m;->b(Lcom/netease/mpay/oversea/thirdapi/g;)Lcom/netease/mpay/oversea/h/c;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Lcom/netease/mpay/oversea/thirdapi/g;)I

    move-result v1

    .line 3
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ui/m;->h:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/netease/mpay/oversea/thirdapi/g$a;->a:Lcom/netease/mpay/oversea/thirdapi/g$a;

    iget-object v3, p1, Lcom/netease/mpay/oversea/thirdapi/g;->a:Lcom/netease/mpay/oversea/thirdapi/g$a;

    if-ne v2, v3, :cond_2

    .line 4
    sget-object v2, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/netease/mpay/oversea/n/h;->g:Lcom/netease/mpay/oversea/n/h;

    if-eq v2, v3, :cond_2

    .line 5
    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/g;->b:Ljava/lang/Integer;

    const/16 v2, 0x2717

    if-ne v1, v2, :cond_0

    .line 7
    new-instance v2, Lcom/netease/mpay/oversea/n/g$b;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/n/g$b;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_google_unsupported:I

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/netease/mpay/oversea/n/g$b;->a(Landroid/app/Activity;I)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 10
    invoke-virtual {v2, v3, p1}, Lcom/netease/mpay/oversea/n/g$b;->a(Landroid/app/Activity;Ljava/lang/Integer;)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g$b;->a()Lcom/netease/mpay/oversea/n/g;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mpay/oversea/h/c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v2, 0x2719

    if-ne v1, v2, :cond_1

    .line 15
    new-instance v1, Lcom/netease/mpay/oversea/n/g$b;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/n/g$b;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_google_service_disabled:I

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/n/g$b;->a(Landroid/app/Activity;I)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 18
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/n/g$b;->a(Landroid/app/Activity;Ljava/lang/Integer;)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g$b;->a()Lcom/netease/mpay/oversea/n/g;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mpay/oversea/h/c;->c:Ljava/lang/String;

    .line 22
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/h/c;)V

    return-void

    :cond_1
    const/16 v2, 0x2718

    if-ne v1, v2, :cond_2

    .line 25
    new-instance v1, Lcom/netease/mpay/oversea/n/g$b;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netease/mpay/oversea/n/g$b;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_google_service_need_update:I

    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/oversea/n/g$b;->a(Landroid/app/Activity;I)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    .line 28
    invoke-virtual {v1, v2, p1}, Lcom/netease/mpay/oversea/n/g$b;->a(Landroid/app/Activity;Ljava/lang/Integer;)Lcom/netease/mpay/oversea/n/g$b;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g$b;->a()Lcom/netease/mpay/oversea/n/g;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n/g;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/mpay/oversea/h/c;->c:Ljava/lang/String;

    .line 32
    invoke-direct {p0, v0}, Lcom/netease/mpay/oversea/ui/i;->b(Lcom/netease/mpay/oversea/h/c;)V

    return-void

    .line 37
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    if-eqz p1, :cond_3

    .line 38
    invoke-interface {p1, v1, v0}, Lcom/netease/mpay/oversea/ui/a0/a;->a(ILcom/netease/mpay/oversea/h/c;)V

    :cond_3
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 39
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 40
    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/m;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 41
    sget-object v3, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 42
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v7, v2

    :goto_1
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    .line 43
    invoke-interface {v1}, Lcom/netease/mpay/oversea/ui/a0/b;->b()Lcom/netease/mpay/oversea/n/h;

    move-result-object v9

    const/4 v8, 0x0

    move-object/from16 v4, p2

    .line 44
    invoke-static/range {v3 .. v10}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v14

    .line 47
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v12, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    const/4 v15, 0x1

    move-object v11, v1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 48
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    goto/16 :goto_8

    .line 52
    :cond_2
    iget-boolean v1, v0, Lcom/netease/mpay/oversea/ui/m;->i:Z

    if-eqz v1, :cond_6

    .line 53
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object v1

    iget-object v3, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/netease/mpay/oversea/t/d/a;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/t/d/b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 56
    iget-object v3, v1, Lcom/netease/mpay/oversea/t/d/b;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 57
    iget-object v1, v1, Lcom/netease/mpay/oversea/t/d/b;->d:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v6, v2

    goto :goto_4

    .line 59
    :cond_5
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v1, :cond_6

    .line 60
    iget-object v3, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    .line 61
    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    :goto_3
    move-object v6, v1

    :goto_4
    move-object v5, v3

    goto :goto_5

    :cond_6
    move-object v5, v2

    move-object v6, v5

    .line 65
    :goto_5
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->g:Lcom/netease/mpay/oversea/thirdapi/d;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/thirdapi/d;->g()Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v3

    .line 67
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/n/h;

    invoke-static {v1}, Lcom/netease/mpay/oversea/n/h;->e(Lcom/netease/mpay/oversea/n/h;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    :goto_6
    move-object v7, v1

    goto :goto_7

    :cond_7
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->c:Lcom/netease/mpay/oversea/t/c/f;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object v7, v2

    :goto_7
    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    .line 69
    invoke-interface {v1}, Lcom/netease/mpay/oversea/ui/a0/b;->b()Lcom/netease/mpay/oversea/n/h;

    move-result-object v9

    const/4 v8, 0x1

    move-object/from16 v4, p2

    .line 70
    invoke-static/range {v3 .. v10}, Lcom/netease/mpay/oversea/n/d;->a(Lcom/netease/mpay/oversea/t/c/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/n/h;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/n/d;

    move-result-object v14

    .line 75
    new-instance v1, Lcom/netease/mpay/oversea/n/k/f;

    iget-object v12, v0, Lcom/netease/mpay/oversea/ui/m;->j:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/netease/mpay/oversea/ui/m;->d:Lcom/netease/mpay/oversea/ui/a0/b;

    const/4 v15, 0x1

    move-object v11, v1

    move-object/from16 v16, v2

    invoke-direct/range {v11 .. v16}, Lcom/netease/mpay/oversea/n/k/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/n/d;ZLcom/netease/mpay/oversea/ui/a0/a;)V

    .line 76
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/h/i;->b()V

    :goto_8
    return-void
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/g;

    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/g$a;->b:Lcom/netease/mpay/oversea/thirdapi/g$a;

    invoke-direct {v0, v1}, Lcom/netease/mpay/oversea/thirdapi/g;-><init>(Lcom/netease/mpay/oversea/thirdapi/g$a;)V

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/thirdapi/g;)V

    return-void
.end method

.method protected g()Lcom/netease/mpay/oversea/thirdapi/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/o;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/o;-><init>()V

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/m/d;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/m/d;-><init>()V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    return-object v0
.end method
