.class public Lcom/netease/mpay/oversea/thirdapi/f;
.super Ljava/lang/Object;
.source "ApiManager.java"


# static fields
.field private static final a:[Lcom/netease/mpay/oversea/t/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netease/mpay/oversea/t/c/g;

    .line 1
    sget-object v1, Lcom/netease/mpay/oversea/t/c/g;->t:Lcom/netease/mpay/oversea/t/c/g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/mpay/oversea/thirdapi/f;->a:[Lcom/netease/mpay/oversea/t/c/g;

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/thirdapi/d;
    .locals 1

    .line 359
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/f$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 401
    :pswitch_1
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/y;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/y;-><init>()V

    return-object p0

    .line 402
    :pswitch_2
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/d0;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/d0;-><init>()V

    return-object p0

    .line 403
    :pswitch_3
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/q;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/q;-><init>()V

    return-object p0

    .line 419
    :pswitch_4
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/m/b;->c()Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p0

    return-object p0

    .line 420
    :pswitch_5
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/j;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/j;-><init>()V

    return-object p0

    .line 421
    :pswitch_6
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/i;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i;-><init>()V

    return-object p0

    .line 422
    :pswitch_7
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/c0;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/c0;-><init>()V

    return-object p0

    .line 423
    :pswitch_8
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/v;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/v;-><init>()V

    return-object p0

    .line 424
    :pswitch_9
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/s;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/s;-><init>()V

    return-object p0

    .line 425
    :pswitch_a
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/k;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/k;-><init>()V

    return-object p0

    .line 426
    :pswitch_b
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/g0;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/g0;-><init>()V

    return-object p0

    .line 427
    :pswitch_c
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/w;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/w;-><init>()V

    return-object p0

    .line 428
    :pswitch_d
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/u;-><init>()V

    return-object p0

    .line 429
    :pswitch_e
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/t;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/t;-><init>()V

    return-object p0

    .line 430
    :pswitch_f
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/r;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/r;-><init>()V

    return-object p0

    .line 431
    :pswitch_10
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/e0;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/e0;-><init>()V

    return-object p0

    .line 432
    :pswitch_11
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/z;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/z;-><init>()V

    return-object p0

    .line 433
    :pswitch_12
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/a0;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/a0;-><init>()V

    return-object p0

    .line 434
    :pswitch_13
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/p;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/p;-><init>()V

    return-object p0

    .line 435
    :pswitch_14
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/a;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/a;-><init>()V

    return-object p0

    .line 436
    :pswitch_15
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/f0;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/f0;-><init>()V

    return-object p0

    .line 437
    :pswitch_16
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/m;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/m;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;)Ljava/lang/String;
    .locals 1

    .line 282
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/f$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 333
    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/oversea/m/b;->b()Lcom/netease/mpay/oversea/m/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/m/b;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 334
    :pswitch_1
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__discord:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 335
    :pswitch_2
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__epic:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 336
    :pswitch_3
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__game_center:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 337
    :pswitch_4
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__apple:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 338
    :pswitch_5
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__tiktok:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    :pswitch_6
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_account:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 340
    :pswitch_7
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__naver:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 341
    :pswitch_8
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__kakao:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 342
    :pswitch_9
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__dmm:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 343
    :pswitch_a
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__wechat:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 344
    :pswitch_b
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__nintendo:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 345
    :pswitch_c
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__line:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :pswitch_d
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__inherit:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 347
    :pswitch_e
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__twitter:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 348
    :pswitch_f
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__ntpassport:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 349
    :pswitch_10
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__psn:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 350
    :pswitch_11
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__steam:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :pswitch_12
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__guest:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 352
    :pswitch_13
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__amazon:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 353
    :pswitch_14
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__vk:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 354
    :pswitch_15
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__facebook:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 355
    :pswitch_16
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google_play_games:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 358
    :cond_0
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/f;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    if-eqz p0, :cond_7

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 157
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    invoke-static {p2}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    .line 161
    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    if-ne p2, p1, :cond_4

    .line 166
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->m(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 167
    invoke-static {}, Lcom/netease/mpay/oversea/d;->a()Lcom/netease/mpay/oversea/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/d;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_3
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :cond_4
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 173
    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_6
    :goto_1
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 175
    :cond_7
    :goto_2
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 178
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "{\"id\":\"0\"}"

    return-object p0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/n/f;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 439
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/f0;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/f0;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/f0;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 440
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/n/f;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 441
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/m;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/m;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/m;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 442
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->K()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 443
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/o;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/o;-><init>()V

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v1}, Lcom/netease/mpay/oversea/thirdapi/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 444
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->L()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 445
    new-instance p1, Lcom/netease/mpay/oversea/m/d;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/m/d;-><init>()V

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v1}, Lcom/netease/mpay/oversea/m/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 447
    :cond_4
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    sget-object v1, Lcom/netease/mpay/oversea/n/h;->h:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v1}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/f;Lcom/netease/mpay/oversea/thirdapi/e;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/t/c/f;->f:Lcom/netease/mpay/oversea/t/c/g;

    .line 6
    invoke-static {p0, v0, p2}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/e;)V

    .line 8
    sget-object p2, Lcom/netease/mpay/oversea/thirdapi/f;->a:[Lcom/netease/mpay/oversea/t/c/g;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    if-ne v3, v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v4, p1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 11
    invoke-static {p0, v3, v4}, Lcom/netease/mpay/oversea/thirdapi/f;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_3
    :goto_2
    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/t/c/g;Lcom/netease/mpay/oversea/thirdapi/e;)V
    .locals 2

    .line 12
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->z:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r/f;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/o;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/o;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/o;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto/16 :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto/16 :goto_0

    .line 18
    :cond_1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->v:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/m;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/m;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto/16 :goto_0

    .line 21
    :cond_2
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->w:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/f0;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/f0;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/f0;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto/16 :goto_0

    .line 24
    :cond_3
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->u:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/e0;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/e0;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto/16 :goto_0

    .line 27
    :cond_4
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->s:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 28
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/t;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/t;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto/16 :goto_0

    .line 30
    :cond_5
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->t:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/u;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto/16 :goto_0

    .line 33
    :cond_6
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->q:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/a;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/a;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto/16 :goto_0

    .line 36
    :cond_7
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->m:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 37
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/q;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/q;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto :goto_0

    .line 39
    :cond_8
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->x:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 40
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/s;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/s;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/s;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto :goto_0

    .line 42
    :cond_9
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->y:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 43
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/r/f;->e(Lcom/netease/mpay/oversea/t/c/g;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/v;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/v;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/n/h;->o:Lcom/netease/mpay/oversea/n/h;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/n/h;)Lcom/netease/mpay/oversea/thirdapi/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto :goto_0

    .line 45
    :cond_a
    sget-object p0, Lcom/netease/mpay/oversea/t/c/g;->j:Lcom/netease/mpay/oversea/t/c/g;

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    if-eqz p2, :cond_c

    const/4 p0, 0x0

    .line 47
    invoke-interface {p2, p0, p0, p0}, Lcom/netease/mpay/oversea/thirdapi/e;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_b
    if-eqz p2, :cond_c

    .line 51
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/g;

    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/g$a;->a:Lcom/netease/mpay/oversea/thirdapi/g$a;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/g;-><init>(Lcom/netease/mpay/oversea/thirdapi/g$a;)V

    invoke-interface {p2, p0}, Lcom/netease/mpay/oversea/thirdapi/e;->a(Lcom/netease/mpay/oversea/thirdapi/g;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_f

    if-nez p3, :cond_0

    goto/16 :goto_7

    .line 53
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    .line 55
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    .line 59
    :cond_1
    invoke-static {p2}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v2

    .line 60
    iget-object v3, p1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 61
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v2, 0x4

    const/16 v3, 0x130

    if-eq p2, v2, :cond_b

    const/4 v2, 0x5

    if-eq p2, v2, :cond_9

    const/16 v2, 0xa

    if-eq p2, v2, :cond_7

    const/16 v2, 0x11

    if-eq p2, v2, :cond_5

    const/16 v2, 0x12

    if-eq p2, v2, :cond_3

    .line 108
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    return v1

    .line 109
    :cond_3
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->k(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/q;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/q;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_0

    .line 113
    :cond_4
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_0
    return v1

    .line 114
    :cond_5
    invoke-static {}, Lcom/netease/mpay/oversea/n/f;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/f0;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/f0;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/f0;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_1

    .line 118
    :cond_6
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_1
    return v1

    .line 119
    :cond_7
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 120
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/u;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/u;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_2

    .line 123
    :cond_8
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_2
    return v1

    .line 143
    :cond_9
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->q(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 144
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/e0;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/e0;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/e0;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_3

    .line 147
    :cond_a
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_3
    return v1

    .line 148
    :cond_b
    invoke-static {}, Lcom/netease/mpay/oversea/n/f;->c()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 149
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/m;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/m;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/m;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_4

    .line 152
    :cond_c
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_4
    return v1

    :cond_d
    :goto_5
    const/16 p0, 0x12e

    .line 153
    invoke-interface {p3, p0, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    return v1

    :cond_e
    :goto_6
    const/16 p0, 0x12d

    .line 154
    invoke-interface {p3, p0, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    return v1

    :cond_f
    :goto_7
    return v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 3

    if-eqz p0, :cond_f

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 181
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/t/b;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_e

    .line 183
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 187
    :cond_1
    invoke-static {p2}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v1

    .line 188
    iget-object v2, p1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    .line 189
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x4

    const/16 v2, 0xcd

    if-eq p2, v1, :cond_b

    const/4 v1, 0x5

    if-eq p2, v1, :cond_9

    const/16 v1, 0xa

    if-eq p2, v1, :cond_7

    const/16 v1, 0x11

    if-eq p2, v1, :cond_5

    const/16 v1, 0x12

    if-eq p2, v1, :cond_3

    .line 235
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto/16 :goto_0

    .line 236
    :cond_3
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->k(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/q;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/thirdapi/q;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto :goto_0

    .line 240
    :cond_4
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 241
    :cond_5
    invoke-static {}, Lcom/netease/mpay/oversea/n/f;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/f0;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/thirdapi/f0;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/f0;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto :goto_0

    .line 245
    :cond_6
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 246
    :cond_7
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 247
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/thirdapi/u;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/u;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto :goto_0

    .line 250
    :cond_8
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 270
    :cond_9
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->q(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 271
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/e0;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/thirdapi/e0;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/e0;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto :goto_0

    .line 274
    :cond_a
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 275
    :cond_b
    invoke-static {}, Lcom/netease/mpay/oversea/n/f;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 276
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/m;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/thirdapi/m;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/m;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto :goto_0

    .line 279
    :cond_c
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :goto_0
    return v0

    :cond_d
    :goto_1
    const/16 p0, 0xca

    .line 280
    invoke-interface {p3, p0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return v0

    :cond_e
    :goto_2
    const/16 p0, 0xc9

    .line 281
    invoke-interface {p3, p0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return v0

    :cond_f
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p3, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/t/b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/t/b;->c()Lcom/netease/mpay/oversea/t/f/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/f/d;->e()Lcom/netease/mpay/oversea/t/c/f;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/t/c/f;->b()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-static {p2}, Lcom/netease/mpay/oversea/t/c/g;->a(I)Lcom/netease/mpay/oversea/t/c/g;

    move-result-object v2

    .line 9
    iget-object v3, p1, Lcom/netease/mpay/oversea/t/c/f;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p1, Lcom/netease/mpay/oversea/t/c/f;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/t/c/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xa

    const/16 v3, 0xcd

    if-eq p2, v2, :cond_3

    .line 39
    invoke-interface {p3, v3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 40
    :cond_3
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->m(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 41
    new-instance p2, Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/thirdapi/u;-><init>()V

    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/f$a;

    invoke-direct {v2, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/f$a;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    invoke-virtual {p2, p0, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;ZLcom/netease/mpay/oversea/thirdapi/e;)V

    goto :goto_0

    .line 57
    :cond_4
    invoke-interface {p3, v3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :goto_0
    return v1

    :cond_5
    :goto_1
    const/16 p0, 0xca

    .line 58
    invoke-interface {p3, p0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return v1

    :cond_6
    :goto_2
    const/16 p0, 0xc9

    .line 59
    invoke-interface {p3, p0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return v1

    :cond_7
    :goto_3
    return v0
.end method
