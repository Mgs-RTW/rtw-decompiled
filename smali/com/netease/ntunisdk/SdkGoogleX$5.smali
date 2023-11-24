.class Lcom/netease/ntunisdk/SdkGoogleX$5;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->updateAchievement(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;

.field final synthetic val$achievenmentId:Ljava/lang/String;

.field final synthetic val$step:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;ILjava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iput p2, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->val$step:I

    iput-object p3, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->val$achievenmentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "SdkGoogleX"

    const-string v0, "null account"

    .line 336
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->updateAchievementFinished(Z)V

    goto :goto_0

    .line 338
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->val$step:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleX;->access$500(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->val$achievenmentId:Ljava/lang/String;

    iget v2, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->val$step:I

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/games/AchievementsClient;->increment(Ljava/lang/String;I)V

    .line 340
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->updateAchievementFinished(Z)V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleX;->access$600(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getAchievementsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/AchievementsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->val$achievenmentId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/AchievementsClient;->unlock(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$5;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->updateAchievementFinished(Z)V

    :goto_0
    return-void
.end method
