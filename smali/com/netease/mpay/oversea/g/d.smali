.class public Lcom/netease/mpay/oversea/g/d;
.super Lcom/netease/mpay/oversea/h/i;
.source "UploadEmailTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/h/i<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p6}, Lcom/netease/mpay/oversea/h/i;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/h/h;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/widget/m;->b()Lcom/netease/mpay/oversea/widget/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/widget/m;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/h/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/h/i;->a(Lcom/netease/mpay/oversea/h/f;)Lcom/netease/mpay/oversea/h/i;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/g/d;->l:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/g/d;->m:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/netease/mpay/oversea/g/d;->n:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/MpayFeedbackResult;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_REQUIRE_LOGIN:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 7
    :cond_1
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->b()Lcom/netease/mpay/oversea/t/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/f/b;->d()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 10
    iget-object v3, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    .line 11
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    :try_start_0
    new-instance p2, Lcom/netease/mpay/oversea/h/g;

    const/4 v3, 0x0

    invoke-direct {p2, p0, p1, v3}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance p0, Lcom/netease/mpay/oversea/g/f/a;

    iget-object p1, v1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v1, v2, Lcom/netease/mpay/oversea/t/c/f;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/netease/mpay/oversea/t/c/f;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/netease/mpay/oversea/g/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, p0}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;

    .line 17
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->SUCCESS:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/netease/mpay/oversea/h/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/h/b;->a()Lcom/netease/mpay/oversea/h/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/c;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 21
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_NETWORK:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 22
    :cond_3
    instance-of p2, p0, Lcom/netease/mpay/oversea/n/e;

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/netease/mpay/oversea/h/b;->a:I

    .line 23
    invoke-static {p2}, Lcom/netease/mpay/oversea/n/e;->h(I)Z

    move-result p2

    if-nez p2, :cond_4

    iget p0, p0, Lcom/netease/mpay/oversea/h/b;->a:I

    .line 24
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/e;->d(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 25
    :cond_4
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_LOGIN_FAILED:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 27
    :cond_5
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p2, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_SERVER_ERROR:I

    if-eqz p1, :cond_6

    .line 28
    iget-object v0, p1, Lcom/netease/mpay/oversea/h/c;->b:Ljava/lang/String;

    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 29
    :cond_7
    :goto_0
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_REQUIRE_LOGIN:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 30
    :cond_8
    :goto_1
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_INVALID_PARAMS:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic d(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/g/d;->e(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/h/i$f;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/h/b;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/h/g;

    iget-object v1, p0, Lcom/netease/mpay/oversea/h/i;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/h/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/h/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/h/i$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/g/f/a;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/i$f;->a()Lcom/netease/mpay/oversea/t/c/c;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/g/d;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/g/d;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/g/d;->n:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/netease/mpay/oversea/g/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/h/g;->a(Lcom/netease/mpay/oversea/h/k/a;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/netease/mpay/oversea/h/b; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/h/b;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h/b;->a()Lcom/netease/mpay/oversea/h/c;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/h/b;-><init>(Lcom/netease/mpay/oversea/h/c;)V

    throw v0
.end method
