.class Lcom/netease/ntunisdk/util/BillingManager$4$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/util/BillingManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/util/BillingManager$4;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/util/BillingManager$4;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/netease/ntunisdk/util/BillingManager$4$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/netease/ntunisdk/util/BillingManager$4$1;->this$1:Lcom/netease/ntunisdk/util/BillingManager$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/util/BillingManager$4;->this$0:Lcom/netease/ntunisdk/util/BillingManager;

    invoke-static {v0}, Lcom/netease/ntunisdk/util/BillingManager;->access$100(Lcom/netease/ntunisdk/util/BillingManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/util/BillingManager$4$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/ntunisdk/util/BillingManager$4$1$1;-><init>(Lcom/netease/ntunisdk/util/BillingManager$4$1;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
