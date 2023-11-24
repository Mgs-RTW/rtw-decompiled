.class public Lcom/netease/mpay/oversea/ui/b$d;
.super Ljava/lang/Object;
.source "AdapterViewData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/ui/b$d;->a:I

    .line 3
    iput p2, p0, Lcom/netease/mpay/oversea/ui/b$d;->b:I

    .line 4
    iput p3, p0, Lcom/netease/mpay/oversea/ui/b$d;->c:I

    .line 5
    iput p4, p0, Lcom/netease/mpay/oversea/ui/b$d;->d:I

    .line 6
    iput p5, p0, Lcom/netease/mpay/oversea/ui/b$d;->e:I

    return-void
.end method

.method private static a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/b$d;
    .locals 12

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/ui/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 190
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__unknown:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 191
    :pswitch_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_quicklogin_small:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    const/4 v3, -0x1

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 192
    :pswitch_1
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v7, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_more_small:I

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_passport_more:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_more:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_channel_more:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 227
    :pswitch_2
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_discord_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_discord:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__discord:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 228
    :pswitch_3
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_apple_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_apple:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__apple:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 229
    :pswitch_4
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_tiktok_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_tiktok:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__tiktok:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 230
    :pswitch_5
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_email_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_email:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 231
    :pswitch_6
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_transfer:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__inherit:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 232
    :pswitch_7
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_naver_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_naver:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__naver:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 233
    :pswitch_8
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_kakao_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_kakao:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__kakao:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 234
    :pswitch_9
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_huawei_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_huawei:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__huawei:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 235
    :pswitch_a
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_amazon_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_amazon:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__amazon:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 236
    :pswitch_b
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_dmm_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_dmm:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__dmm:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 237
    :pswitch_c
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_wechat_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_wechat:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__wechat:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 238
    :pswitch_d
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_nintendo_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_nintendo:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__nintendo:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 239
    :pswitch_e
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_passport_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_passport:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__ntpassport:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 240
    :pswitch_f
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_psn_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_psn:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__psn:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 241
    :pswitch_10
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_steam_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_steam:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__steam:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 242
    :pswitch_11
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_line_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_line:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__line:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 243
    :pswitch_12
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_twitter_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_twitter:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__twitter:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 244
    :pswitch_13
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_vk_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_vk:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__vk:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 245
    :pswitch_14
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_facebook_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_facebook:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__facebook:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 246
    :pswitch_15
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/r/f;->K()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/r/f;->L()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_google_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_google:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 255
    :cond_1
    :goto_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_playgames_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_playgames:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google_play_games:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 256
    :pswitch_16
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_epic_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_epic:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__epic:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 257
    :pswitch_17
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_gamecenter_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_gamecenter:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__game_center:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 258
    :pswitch_18
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_guest_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_guest:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__guest:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method static synthetic a(Lcom/netease/mpay/oversea/t/c/g;Z)Lcom/netease/mpay/oversea/ui/b$d;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/ui/b$d;->b(Lcom/netease/mpay/oversea/t/c/g;Z)Lcom/netease/mpay/oversea/ui/b$d;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/b$d;
    .locals 12

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/ui/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 176
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__unknown:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 177
    :pswitch_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_discord_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_discord:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__discord:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 178
    :pswitch_1
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_apple_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_apple:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__apple:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 179
    :pswitch_2
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_tiktok_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_tiktok:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__tiktok:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 180
    :pswitch_3
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_email_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_email:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 181
    :pswitch_4
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_transfer:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__inherit:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 182
    :pswitch_5
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_naver_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_naver:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__naver:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 183
    :pswitch_6
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_kakao_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_kakao:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__kakao:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 184
    :pswitch_7
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_huawei_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_huawei:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__huawei:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 185
    :pswitch_8
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_amazon_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_amazon:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__amazon:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 186
    :pswitch_9
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_dmm_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_dmm:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__dmm:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 187
    :pswitch_a
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_wechat_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_wechat:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__wechat:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 188
    :pswitch_b
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_nintendo_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_nintendo:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__nintendo:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 189
    :pswitch_c
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_passport_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_passport:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__ntpassport:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 190
    :pswitch_d
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_psn_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_psn:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__psn:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 191
    :pswitch_e
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_steam_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_steam:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__steam:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 192
    :pswitch_f
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_line_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_line:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__line:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 193
    :pswitch_10
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_twitter_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_twitter:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__twitter:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 194
    :pswitch_11
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_vk_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_vk:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__vk:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 195
    :pswitch_12
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_facebook_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_facebook:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__facebook:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 196
    :pswitch_13
    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/r/f;->K()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/netease/mpay/oversea/r/d;->n()Lcom/netease/mpay/oversea/r/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/r/f;->L()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_google_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_google:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 205
    :cond_1
    :goto_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_playgames_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_playgames:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google_play_games:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 206
    :pswitch_14
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_epic_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_epic:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__epic:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 207
    :pswitch_15
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_gamecenter_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_gamecenter:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__game_center:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 208
    :pswitch_16
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_guest_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_guest:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__guest:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    nop

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
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method private static b(Lcom/netease/mpay/oversea/t/c/g;Z)Lcom/netease/mpay/oversea/ui/b$d;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/ui/b$d;->a(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/b$d;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/ui/b$d;->b(Lcom/netease/mpay/oversea/t/c/g;)Lcom/netease/mpay/oversea/ui/b$d;

    move-result-object p0

    :goto_0
    return-object p0
.end method
