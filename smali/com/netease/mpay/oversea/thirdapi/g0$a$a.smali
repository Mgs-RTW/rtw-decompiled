.class Lcom/netease/mpay/oversea/thirdapi/g0$a$a;
.super Ljava/lang/Object;
.source "WeChatApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/g0$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/g0$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/g0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/g0$a$a;->a:Lcom/netease/mpay/oversea/thirdapi/g0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/g0$a$a;->a:Lcom/netease/mpay/oversea/thirdapi/g0$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/g0$a;->a:Lcom/netease/mpay/oversea/thirdapi/g0;

    iget-boolean v1, v0, Lcom/netease/mpay/oversea/thirdapi/g0;->d:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/netease/mpay/oversea/thirdapi/g0;->d:Z

    .line 3
    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    return-void
.end method
