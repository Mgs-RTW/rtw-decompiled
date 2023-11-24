.class Lcom/netease/ntunisdk/SdkGoogleX$8$1;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX$8;->onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX$8;Ljava/util/List;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$1;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 9

    .line 466
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$1;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iget-boolean v0, v0, Lcom/netease/ntunisdk/SdkGoogleX$8;->val$retry:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/games/FriendsResolutionRequiredException;

    if-eqz v0, :cond_0

    .line 467
    check-cast p1, Lcom/google/android/gms/games/FriendsResolutionRequiredException;

    .line 469
    invoke-virtual {p1}, Lcom/google/android/gms/games/FriendsResolutionRequiredException;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$1;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkGoogleX$8;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$1;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iget v1, v1, Lcom/netease/ntunisdk/SdkGoogleX$8;->val$type:I

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$1202(Lcom/netease/ntunisdk/SdkGoogleX;I)I

    .line 472
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$1;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iget-object v0, v0, Lcom/netease/ntunisdk/SdkGoogleX$8;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleX;->access$1400(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 473
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    .line 474
    invoke-static {}, Lcom/netease/ntunisdk/SdkGoogleX;->access$1300()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 472
    invoke-virtual/range {v1 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 482
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$1;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iget-object p1, p1, Lcom/netease/ntunisdk/SdkGoogleX$8;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$1;->val$list:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8$1;->this$1:Lcom/netease/ntunisdk/SdkGoogleX$8;

    iget v1, v1, Lcom/netease/ntunisdk/SdkGoogleX$8;->val$type:I

    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$1500(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/util/List;I)V

    :goto_0
    return-void
.end method
