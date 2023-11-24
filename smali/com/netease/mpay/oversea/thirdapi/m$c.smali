.class Lcom/netease/mpay/oversea/thirdapi/m$c;
.super Ljava/lang/Object;
.source "FacebookApi.java"

# interfaces
.implements Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/m;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/thirdapi/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/m;Landroid/app/Activity;Lcom/netease/mpay/oversea/CheckApiAuthCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/m$c;->d:Lcom/netease/mpay/oversea/thirdapi/m;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/m$c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/m$c;->b:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    iput-object p4, p0, Lcom/netease/mpay/oversea/thirdapi/m$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/m$c;->b:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    if-eqz p1, :cond_0

    const/16 v0, 0x12f

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :cond_0
    return-void
.end method

.method public OnTokenRefreshed(Lcom/facebook/AccessToken;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/l/d;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/l/d;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/m$c;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/m$c$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/thirdapi/m$c$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/m$c;)V

    new-instance v3, Lcom/netease/mpay/oversea/thirdapi/m$c$b;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/thirdapi/m$c$b;-><init>(Lcom/netease/mpay/oversea/thirdapi/m$c;Lcom/facebook/AccessToken;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/l/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/r/d$a;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 20
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/m$c;->b:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    if-eqz p1, :cond_0

    const/16 v0, 0x12f

    const/4 v1, 0x0

    .line 21
    invoke-interface {p1, v0, v1}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :cond_0
    :goto_0
    return-void
.end method
