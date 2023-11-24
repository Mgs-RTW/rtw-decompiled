.class Lcom/netease/mpay/oversea/thirdapi/u$g$b;
.super Ljava/lang/Object;
.source "LineGameApi.java"

# interfaces
.implements Lcom/linecorp/trident/android/binding/CallBackListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/u$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/linecorp/trident/android/binding/CallBackListener2<",
        "Ljava/lang/Boolean;",
        "Lcom/linecorp/trident/android/binding/Error;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/thirdapi/u$g;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/thirdapi/u$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/u$g$b;->a:Lcom/netease/mpay/oversea/thirdapi/u$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;Lcom/linecorp/trident/android/binding/Error;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/u$g$b;->a:Lcom/netease/mpay/oversea/thirdapi/u$g;

    iget-object p1, p1, Lcom/netease/mpay/oversea/thirdapi/u$g;->a:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    const/16 p2, 0xcb

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/linecorp/trident/android/binding/Error;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/thirdapi/u$g$b;->a(Ljava/lang/Boolean;Lcom/linecorp/trident/android/binding/Error;)V

    return-void
.end method
