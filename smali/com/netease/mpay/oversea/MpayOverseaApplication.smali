.class public Lcom/netease/mpay/oversea/MpayOverseaApplication;
.super Landroid/app/Application;
.source "MpayOverseaApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static initLineGame(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/d;->a()Lcom/netease/mpay/oversea/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/d;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 10

    .line 4
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {p0}, Lcom/netease/mpay/oversea/n/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 12
    invoke-static/range {v1 .. v9}, Lcom/dmm/android/sdk/olgid/DmmOlgId;->initializeSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/dmm/android/sdk/olgid/error/DmmOlgIdInitializeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    invoke-static {p0}, Lcom/netease/mpay/oversea/widget/u/b;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/MpayOverseaApplication;->onCreate(Landroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lcom/netease/mpay/oversea/MpayOverseaApplication;->initLineGame(Landroid/app/Application;)V

    return-void
.end method
