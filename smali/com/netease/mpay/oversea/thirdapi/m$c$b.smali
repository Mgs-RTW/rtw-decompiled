.class Lcom/netease/mpay/oversea/thirdapi/m$c$b;
.super Ljava/lang/Object;
.source "FacebookApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/m$c;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/AccessToken;

.field final synthetic b:Lcom/netease/mpay/oversea/thirdapi/m$c;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/m$c;Lcom/facebook/AccessToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/m$c$b;->b:Lcom/netease/mpay/oversea/thirdapi/m$c;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/m$c$b;->a:Lcom/facebook/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/m$c$b;->b:Lcom/netease/mpay/oversea/thirdapi/m$c;

    iget-object v1, v0, Lcom/netease/mpay/oversea/thirdapi/m$c;->d:Lcom/netease/mpay/oversea/thirdapi/m;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/m$c$b;->a:Lcom/facebook/AccessToken;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/m$c;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/netease/mpay/oversea/thirdapi/m;->a(Lcom/netease/mpay/oversea/thirdapi/m;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/m$c$b;->b:Lcom/netease/mpay/oversea/thirdapi/m$c;

    iget-object v1, v1, Lcom/netease/mpay/oversea/thirdapi/m$c;->b:Lcom/netease/mpay/oversea/CheckApiAuthCallback;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v2, 0x12c

    goto :goto_1

    :cond_1
    const/16 v2, 0x12d

    .line 4
    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :cond_2
    return-void
.end method
