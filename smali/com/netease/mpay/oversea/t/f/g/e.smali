.class public Lcom/netease/mpay/oversea/t/f/g/e;
.super Lcom/netease/mpay/oversea/t/f/g/b;
.source "ExtraPreference.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "com.netease.mpay.extra."

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/t/f/g/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/t/e/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
