.class public Lcom/netease/mpay/oversea/thirdapi/c0;
.super Lcom/netease/mpay/oversea/thirdapi/d;
.source "TikTokApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/thirdapi/c0$b;,
        Lcom/netease/mpay/oversea/thirdapi/c0$c;,
        Lcom/netease/mpay/oversea/thirdapi/c0$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/h/l/e;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 5
    new-instance v0, Lcom/netease/mpay/oversea/h/l/a;

    const-string v1, "code"

    invoke-direct {v0, v1, p2}, Lcom/netease/mpay/oversea/h/l/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/f;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/thirdapi/c0$c;->a()Lcom/netease/mpay/oversea/thirdapi/c0$c;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/c0$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/thirdapi/c0$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/c0;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/netease/mpay/oversea/thirdapi/c0$c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/thirdapi/c0$d;)Z

    return-void
.end method

.method public b(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/netease/mpay/oversea/n/f;->p(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public g()Lcom/netease/mpay/oversea/t/c/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/t/c/g;->A:Lcom/netease/mpay/oversea/t/c/g;

    return-object v0
.end method
