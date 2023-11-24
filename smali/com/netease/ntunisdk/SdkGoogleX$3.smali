.class Lcom/netease/ntunisdk/SdkGoogleX$3;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->updateRank(Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$score:D


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/lang/String;D)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->val$id:Ljava/lang/String;

    iput-wide p3, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->val$score:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "SdkGoogleX"

    const-string v0, "null account"

    .line 275
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->updateRankFinished(Z)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleX;->access$100(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->val$id:Ljava/lang/String;

    iget-wide v1, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->val$score:D

    double-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/LeaderboardsClient;->submitScore(Ljava/lang/String;J)V

    .line 279
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$3;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->updateRankFinished(Z)V

    :cond_1
    :goto_0
    return-void
.end method
