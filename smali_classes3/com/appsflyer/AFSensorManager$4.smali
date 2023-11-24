.class final Lcom/appsflyer/AFSensorManager$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AFSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/AFSensorManager;


# direct methods
.method constructor <init>(Lcom/appsflyer/AFSensorManager;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/appsflyer/AFSensorManager$4;->valueOf:Lcom/appsflyer/AFSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$4;->valueOf:Lcom/appsflyer/AFSensorManager;

    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->AFDateFormat:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$4;->valueOf:Lcom/appsflyer/AFSensorManager;

    iget-boolean v0, v0, Lcom/appsflyer/AFSensorManager;->$$b:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$4;->valueOf:Lcom/appsflyer/AFSensorManager;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/AFSensorManager$4;->valueOf:Lcom/appsflyer/AFSensorManager;

    iget-object v2, v2, Lcom/appsflyer/AFSensorManager;->values:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$4;->valueOf:Lcom/appsflyer/AFSensorManager;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/AFSensorManager$4;->valueOf:Lcom/appsflyer/AFSensorManager;

    iget-object v2, v2, Lcom/appsflyer/AFSensorManager;->valueOf:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$4;->valueOf:Lcom/appsflyer/AFSensorManager;

    .line 1219
    iget-object v2, v0, Lcom/appsflyer/AFSensorManager;->getInstance:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/AFSensorManager$7;

    invoke-direct {v3, v0}, Lcom/appsflyer/AFSensorManager$7;-><init>(Lcom/appsflyer/AFSensorManager;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$4;->valueOf:Lcom/appsflyer/AFSensorManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/appsflyer/AFSensorManager;->$$b:Z

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
