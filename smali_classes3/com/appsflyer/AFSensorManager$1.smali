.class final Lcom/appsflyer/AFSensorManager$1;
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
.field private synthetic $$a:Lcom/appsflyer/AFSensorManager;


# direct methods
.method constructor <init>(Lcom/appsflyer/AFSensorManager;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/appsflyer/AFSensorManager$1;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$1;->$$a:Lcom/appsflyer/AFSensorManager;

    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->AFDateFormat:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$1;->$$a:Lcom/appsflyer/AFSensorManager;

    .line 1190
    iget-object v2, v0, Lcom/appsflyer/AFSensorManager;->getInstance:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/AFSensorManager$5;

    invoke-direct {v3, v0}, Lcom/appsflyer/AFSensorManager$5;-><init>(Lcom/appsflyer/AFSensorManager;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$1;->$$a:Lcom/appsflyer/AFSensorManager;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/AFSensorManager$1;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-static {v2}, Lcom/appsflyer/AFSensorManager;->valueOf(Lcom/appsflyer/AFSensorManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$1;->$$a:Lcom/appsflyer/AFSensorManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/appsflyer/AFSensorManager;->$$b:Z

    .line 55
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
