.class Lcom/netease/ntunisdk/SdkGoogleX$8;
.super Ljava/lang/Object;
.source "SdkGoogleX.java"

# interfaces
.implements Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/SdkGoogleX;

.field final synthetic val$retry:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/SdkGoogleX;IZ)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iput p2, p0, Lcom/netease/ntunisdk/SdkGoogleX$8;->val$type:I

    iput-boolean p3, p0, Lcom/netease/ntunisdk/SdkGoogleX$8;->val$retry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 3

    .line 435
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 436
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$1100(Lcom/netease/ntunisdk/SdkGoogleX;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    invoke-static {v1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$1600(Lcom/netease/ntunisdk/SdkGoogleX;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/games/Games;->getPlayersClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/PlayersClient;

    move-result-object p1

    const/16 v1, 0xc8

    const/4 v2, 0x0

    .line 441
    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/games/PlayersClient;->loadFriends(IZ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/netease/ntunisdk/SdkGoogleX$8$2;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX$8$2;-><init>(Lcom/netease/ntunisdk/SdkGoogleX$8;Ljava/util/List;)V

    .line 442
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/netease/ntunisdk/SdkGoogleX$8$1;

    invoke-direct {v1, p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX$8$1;-><init>(Lcom/netease/ntunisdk/SdkGoogleX$8;Ljava/util/List;)V

    .line 462
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8;->this$0:Lcom/netease/ntunisdk/SdkGoogleX;

    iget v1, p0, Lcom/netease/ntunisdk/SdkGoogleX$8;->val$type:I

    invoke-static {p1, v0, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->access$1500(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/util/List;I)V

    :goto_0
    return-void
.end method
