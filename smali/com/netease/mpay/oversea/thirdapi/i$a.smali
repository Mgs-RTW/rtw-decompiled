.class Lcom/netease/mpay/oversea/thirdapi/i$a;
.super Ljava/lang/Object;
.source "AppleApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/thirdapi/i0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/i;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/i;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$a;->a:Lcom/netease/mpay/oversea/thirdapi/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i$a;->a:Lcom/netease/mpay/oversea/thirdapi/i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    const/4 v1, -0x2

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/i$a;->a:Lcom/netease/mpay/oversea/thirdapi/i;

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    const/4 v0, -0x3

    const-string v1, "Token is null"

    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/i$a;->a:Lcom/netease/mpay/oversea/thirdapi/i;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v1}, Lcom/netease/mpay/oversea/thirdapi/h;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :goto_0
    return-void
.end method
