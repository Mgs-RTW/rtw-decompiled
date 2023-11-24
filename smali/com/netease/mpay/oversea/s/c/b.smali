.class public Lcom/netease/mpay/oversea/s/c/b;
.super Ljava/lang/Object;
.source "SecurityEntryFactory.java"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "security_email"

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x64

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "restore_account"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x79

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 3

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_edit:I

    .line 6
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "modify"

    const-string v1, "security_email"

    const/16 v2, 0x6f

    .line 7
    invoke-static {v0, v1, p0, v2}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 14

    .line 8
    new-instance v13, Lcom/netease/mpay/oversea/ui/z/d;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x1

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v12}, Lcom/netease/mpay/oversea/ui/z/d;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v13
.end method

.method static a(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/z/e$b;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/s/c/b;->c(Landroid/content/Context;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    const/16 v1, 0x65

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 3
    iput-object p2, v0, Lcom/netease/mpay/oversea/ui/z/e;->m:Lcom/netease/mpay/oversea/ui/z/e$b;

    return-object v0
.end method

.method static a(Lcom/netease/mpay/oversea/ui/z/e;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 7

    .line 9
    iget v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->o:I

    const/16 v1, 0x66

    const-string v2, "security_input_code"

    const/4 v3, 0x0

    const/16 v4, 0x65

    if-eq v0, v4, :cond_5

    const-string v4, "security_result"

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x79

    const/16 v6, 0x7a

    if-eq v0, v1, :cond_3

    if-eq v0, v6, :cond_2

    const/16 v1, 0x83

    const/16 v6, 0x84

    if-eq v0, v1, :cond_1

    if-eq v0, v6, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 36
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-static {v4, v0, p0, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 37
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x73

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-static {v2, v0, p0, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 39
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x72

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 40
    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    const-string v1, "security_input_mail"

    invoke-static {v1, v0, p0, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 41
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x71

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 42
    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-static {v2, v0, p0, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 43
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x70

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 68
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-static {v4, v0, p0, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 69
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x85

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-static {v2, v0, p0, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 71
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    invoke-direct {v0, v6, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 78
    :cond_2
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    const/16 v0, 0x7b

    const-string v1, "restore_set_pwd"

    const-string v2, "security_email"

    invoke-static {v1, v2, p0, v0}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 80
    new-instance v1, Lcom/netease/mpay/oversea/ui/z/e;

    invoke-direct {v1, v0, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v1

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-static {v2, v0, p0, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 82
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    invoke-direct {v0, v6, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 83
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netease/mpay/oversea/r/f;->a(Z)V

    .line 84
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-static {v4, v0, p0, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 85
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/z/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/z/e;->c:Ljava/lang/String;

    invoke-static {v2, v0, p0, v3}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    .line 87
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x79
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x83
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 3

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_retrieving:I

    .line 6
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "restore_account"

    const-string v1, "security_email"

    const/16 v2, 0x79

    .line 7
    invoke-static {v0, v1, p0, v2}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/z/e$b;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/s/c/b;->a(Landroid/content/Context;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    const/16 v1, 0x6f

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 3
    iput-object p2, v0, Lcom/netease/mpay/oversea/ui/z/e;->m:Lcom/netease/mpay/oversea/ui/z/e$b;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 3

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_setting:I

    .line 6
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "setting"

    const-string v1, "security_email"

    const/16 v2, 0x65

    .line 7
    invoke-static {v0, v1, p0, v2}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/z/e$b;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/s/c/b;->b(Landroid/content/Context;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    const/16 v1, 0x79

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 3
    iput-object p2, v0, Lcom/netease/mpay/oversea/ui/z/e;->m:Lcom/netease/mpay/oversea/ui/z/e$b;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Lcom/netease/mpay/oversea/ui/z/d;
    .locals 3

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__safe_mail_unbind:I

    .line 6
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "unbind"

    const-string v1, "security_email"

    const/16 v2, 0x79

    .line 7
    invoke-static {v0, v1, p0, v2}, Lcom/netease/mpay/oversea/s/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/content/Context;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/z/e$b;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/s/c/b;->d(Landroid/content/Context;)Lcom/netease/mpay/oversea/ui/z/d;

    move-result-object p0

    const/16 v1, 0x83

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 3
    iput-object p2, v0, Lcom/netease/mpay/oversea/ui/z/e;->m:Lcom/netease/mpay/oversea/ui/z/e$b;

    return-object v0
.end method
