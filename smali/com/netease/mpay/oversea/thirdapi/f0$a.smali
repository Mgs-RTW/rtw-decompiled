.class Lcom/netease/mpay/oversea/thirdapi/f0$a;
.super Ljava/lang/Object;
.source "VkApi.java"

# interfaces
.implements Lcom/vk/sdk/VKCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/f0;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/sdk/VKCallback<",
        "Lcom/vk/sdk/VKAccessToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/f0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/f0$a;->a:Lcom/netease/mpay/oversea/thirdapi/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vk/sdk/VKAccessToken;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/f0$a;->a:Lcom/netease/mpay/oversea/thirdapi/f0;

    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/f0;->a(Lcom/netease/mpay/oversea/thirdapi/f0;)V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/f0$a;->a:Lcom/netease/mpay/oversea/thirdapi/f0;

    iget-object v0, v0, Lcom/netease/mpay/oversea/thirdapi/d;->c:Lcom/netease/mpay/oversea/thirdapi/h;

    iget v1, p1, Lcom/vk/sdk/api/VKError;->errorCode:I

    iget-object p1, p1, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/oversea/thirdapi/h;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/vk/sdk/VKAccessToken;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/f0$a;->a(Lcom/vk/sdk/VKAccessToken;)V

    return-void
.end method
