.class Lcom/netease/ntunisdk/SdkGoogleX$11;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->checkAccount(Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;

.field final synthetic val$callback:Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$11;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleX$11;->val$callback:Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    .line 650
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 653
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$11;->val$callback:Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;

    if-eqz v0, :cond_1

    .line 654
    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;->onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_0

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$11;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$2000(Lcom/netease/ntunisdk/SdkGoogleX;)Ljava/util/LinkedList;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$11;->val$callback:Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$11;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {p1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$2100(Lcom/netease/ntunisdk/SdkGoogleX;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    .line 664
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$11;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleX;->access$2300(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/netease/ntunisdk/SdkGoogleX;->access$2200()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method
