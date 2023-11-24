.class Lcom/netease/ntunisdk/SdkGoogleX$4;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->displayLeaderboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;

.field final synthetic val$leaderboardId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$4;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iput-object p2, p0, Lcom/netease/ntunisdk/SdkGoogleX$4;->val$leaderboardId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$4;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v0}, Lcom/netease/ntunisdk/SdkGoogleX;->access$400(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/games/Games;->getLeaderboardsClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX$4;->val$leaderboardId:Ljava/lang/String;

    .line 304
    invoke-interface {p1, v0}, Lcom/google/android/gms/games/LeaderboardsClient;->getLeaderboardIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$4$2;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkGoogleX$4$2;-><init>(Lcom/netease/ntunisdk/SdkGoogleX$4;)V

    .line 305
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/netease/ntunisdk/SdkGoogleX$4$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/SdkGoogleX$4$1;-><init>(Lcom/netease/ntunisdk/SdkGoogleX$4;)V

    .line 311
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
