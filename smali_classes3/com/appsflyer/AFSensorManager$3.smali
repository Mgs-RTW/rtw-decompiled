.class final Lcom/appsflyer/AFSensorManager$3;
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
    .line 83
    iput-object p1, p0, Lcom/appsflyer/AFSensorManager$3;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 86
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$3;->$$a:Lcom/appsflyer/AFSensorManager;

    iget-object v1, v0, Lcom/appsflyer/AFSensorManager;->AFDateFormat:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$3;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-static {v0}, Lcom/appsflyer/AFSensorManager;->AFDateFormat(Lcom/appsflyer/AFSensorManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$3;->$$a:Lcom/appsflyer/AFSensorManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/appsflyer/AFSensorManager;->valueOf(Lcom/appsflyer/AFSensorManager;I)I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$3;->$$a:Lcom/appsflyer/AFSensorManager;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->$$a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/AFSensorManager$3;->$$a:Lcom/appsflyer/AFSensorManager;

    iget-object v2, v2, Lcom/appsflyer/AFSensorManager;->valueOf:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    iget-object v3, p0, Lcom/appsflyer/AFSensorManager$3;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-static {v3}, Lcom/appsflyer/AFSensorManager;->AFDateFormat(Lcom/appsflyer/AFSensorManager;)I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
