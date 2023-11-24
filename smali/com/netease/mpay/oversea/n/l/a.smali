.class public Lcom/netease/mpay/oversea/n/l/a;
.super Ljava/lang/Object;
.source "ChannelLoginEntryFactory.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;
    .locals 1

    .line 38
    new-instance v0, Lcom/netease/mpay/oversea/n/l/c;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/netease/mpay/oversea/n/l/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 3

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->D()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v0, 0x12f

    const-string v2, "channel_login_all_home"

    .line 5
    invoke-static {v2, v1, v1, v0}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 7
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/r/f;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->j()Lcom/netease/mpay/oversea/r/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/r/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->d()Lcom/netease/mpay/oversea/t/d/a;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/t/d/a;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 11
    invoke-static {p1, v1, p2}, Lcom/netease/mpay/oversea/n/l/a;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/n/l/a;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/ui/z/e;

    move-result-object p0

    goto :goto_0

    .line 16
    :cond_2
    new-instance p0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v0, 0x12c

    const-string v2, "channel_login_home"

    .line 17
    invoke-static {v2, v1, v1, v0}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 19
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x130

    const-string v2, ""

    const-string v3, "single_login"

    .line 2
    invoke-static {v3, v2, v2, v1}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 4

    .line 24
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x132

    const-string v2, ""

    const-string v3, "channel_login_passport_history"

    .line 25
    invoke-static {v3, v2, v2, v1}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 27
    iput-object p1, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    return-object v0
.end method

.method public static a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 4

    .line 20
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x131

    const-string v2, "channel_login_passport_home"

    const-string v3, ""

    .line 21
    invoke-static {v2, p1, v3, v1}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 23
    iput-object p2, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 4

    .line 34
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x133

    const-string v2, "passport_login"

    const-string v3, ""

    .line 35
    invoke-static {v2, p0, v3, v1}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/n/l/c;->a(Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    const/4 p0, 0x1

    .line 37
    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/ui/z/e;->c(Z)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 4

    .line 28
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x12d

    const-string v2, "channel_login_more"

    const-string v3, ""

    .line 29
    invoke-static {v2, p0, v3, v1}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 33
    iput-object p2, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    return-object v0
.end method

.method public static b(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/ui/e$c;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 5

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x12e

    const-string v2, "channel_quick_login"

    const-string v3, "channel_login_home"

    const-string v4, ""

    .line 2
    invoke-static {v2, v3, v4, v1}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    .line 5
    iput-object p1, v0, Lcom/netease/mpay/oversea/ui/z/e;->n:Lcom/netease/mpay/oversea/ui/e$c;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/ui/z/e;
    .locals 4

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/ui/z/e;

    const/16 v1, 0x134

    const-string v2, "passport_web"

    const-string v3, ""

    .line 7
    invoke-static {v2, p0, v3, v1}, Lcom/netease/mpay/oversea/n/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/n/l/c;->a(Lcom/netease/mpay/oversea/thirdapi/h;)Lcom/netease/mpay/oversea/n/l/c;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/netease/mpay/oversea/ui/z/e;-><init>(ILcom/netease/mpay/oversea/ui/z/d;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    const/4 p0, 0x1

    .line 9
    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/ui/z/e;->c(Z)V

    return-object v0
.end method
