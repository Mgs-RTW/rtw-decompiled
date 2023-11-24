.class public Lcom/netease/ntunisdk/permissionkit/LanguageProxy;
.super Ljava/lang/Object;
.source "LanguageProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-static {p0, p1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLanguageCode(Ljava/lang/String;)V
    .locals 11

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "ZH_HANS"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "FR"

    const-string v2, "IN"

    const-string v3, "TR"

    const-string v4, "TH"

    const-string v5, "ES"

    const-string v6, "DE"

    const-string v7, "RU"

    const-string v8, "PT"

    const/4 v9, 0x0

    const-string v10, "zh"

    if-nez v0, :cond_12

    const-string v0, "ZH_CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "ZH_HANT"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "ZH_HK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v0, "ZH_TW"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "TW"

    goto/16 :goto_2

    :cond_3
    const-string v0, "EN"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v9, "en"

    const-string v1, "US"

    goto/16 :goto_3

    :cond_4
    const-string v0, "JA"

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v9, "ja"

    const-string v1, "JP"

    goto/16 :goto_3

    :cond_5
    const-string v0, "KO"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v9, "ko"

    const-string v1, "KR"

    goto/16 :goto_3

    .line 38
    :cond_6
    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v9, "pt"

    move-object v1, v8

    goto/16 :goto_3

    .line 42
    :cond_7
    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v9, "ru"

    move-object v1, v7

    goto/16 :goto_3

    .line 46
    :cond_8
    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v9, "de"

    move-object v1, v6

    goto :goto_3

    .line 50
    :cond_9
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v9, "es"

    move-object v1, v5

    goto :goto_3

    .line 54
    :cond_a
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v9, "th"

    move-object v1, v4

    goto :goto_3

    :cond_b
    const-string v0, "VI"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v9, "vi"

    const-string v1, "VN"

    goto :goto_3

    .line 62
    :cond_c
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v9, "tr"

    move-object v1, v3

    goto :goto_3

    :cond_d
    const-string v0, "HI"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v9, "hi"

    move-object v1, v2

    goto :goto_3

    .line 70
    :cond_e
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v9, "in"

    const-string v1, "ID"

    goto :goto_3

    .line 74
    :cond_f
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string v9, "fr"

    goto :goto_3

    :cond_10
    move-object v1, v9

    goto :goto_3

    :cond_11
    :goto_0
    const-string v1, "HK"

    goto :goto_2

    :cond_12
    :goto_1
    const-string v1, "CN"

    :goto_2
    move-object v9, v10

    .line 79
    :goto_3
    invoke-static {v9, v1}, Lcom/netease/ntunisdk/modules/permission/utils/PermissionTextUtils;->setLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
