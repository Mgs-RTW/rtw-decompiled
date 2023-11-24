.class final Lcom/appsflyer/AFSensorManager$7;
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
    .line 219
    iput-object p1, p0, Lcom/appsflyer/AFSensorManager$7;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$7;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-static {v0}, Lcom/appsflyer/AFSensorManager;->values(Lcom/appsflyer/AFSensorManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$7;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-static {v0}, Lcom/appsflyer/AFSensorManager;->values(Lcom/appsflyer/AFSensorManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/t;

    .line 226
    iget-object v2, p0, Lcom/appsflyer/AFSensorManager$7;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-static {v2}, Lcom/appsflyer/AFSensorManager;->$$a(Lcom/appsflyer/AFSensorManager;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 227
    iget-object v2, p0, Lcom/appsflyer/AFSensorManager$7;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-static {v2}, Lcom/appsflyer/AFSensorManager;->collectIntentsFromActivities(Lcom/appsflyer/AFSensorManager;)Ljava/util/Map;

    move-result-object v2

    .line 1119
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/internal/t;->valueOf(Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$7;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-static {v0, v4}, Lcom/appsflyer/AFSensorManager;->valueOf(Lcom/appsflyer/AFSensorManager;I)I

    .line 234
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$7;->$$a:Lcom/appsflyer/AFSensorManager;

    invoke-static {v0, v4}, Lcom/appsflyer/AFSensorManager;->valueOf(Lcom/appsflyer/AFSensorManager;Z)Z

    .line 235
    return-void
.end method
