.class Lcom/netease/ntunisdk/glide/RequestManager$RequestManagerConnectivityListener;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/netease/ntunisdk/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestManagerConnectivityListener"
.end annotation


# instance fields
.field private final requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

.field final synthetic this$0:Lcom/netease/ntunisdk/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/glide/RequestManager;Lcom/netease/ntunisdk/glide/manager/RequestTracker;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/netease/ntunisdk/glide/RequestManager$RequestManagerConnectivityListener;->this$0:Lcom/netease/ntunisdk/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-object p2, p0, Lcom/netease/ntunisdk/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 721
    iget-object p1, p0, Lcom/netease/ntunisdk/glide/RequestManager$RequestManagerConnectivityListener;->this$0:Lcom/netease/ntunisdk/glide/RequestManager;

    monitor-enter p1

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lcom/netease/ntunisdk/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/glide/manager/RequestTracker;->restartRequests()V

    .line 723
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
