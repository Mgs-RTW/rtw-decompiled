.class final Lcom/appsflyer/internal/t$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/t;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic $$a:Lcom/appsflyer/internal/t;

.field private synthetic AFDateFormat:Landroid/hardware/SensorEvent;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/t;Landroid/hardware/SensorEvent;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/appsflyer/internal/t$3;->$$a:Lcom/appsflyer/internal/t;

    iput-object p2, p0, Lcom/appsflyer/internal/t$3;->AFDateFormat:Landroid/hardware/SensorEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 90
    iget-object v0, p0, Lcom/appsflyer/internal/t$3;->AFDateFormat:Landroid/hardware/SensorEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/t$3;->AFDateFormat:Landroid/hardware/SensorEvent;

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/t$3;->AFDateFormat:Landroid/hardware/SensorEvent;

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-static {v0}, Lcom/appsflyer/internal/t;->$$a(Landroid/hardware/Sensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/appsflyer/internal/t$3;->$$a:Lcom/appsflyer/internal/t;

    iget-object v1, p0, Lcom/appsflyer/internal/t$3;->AFDateFormat:Landroid/hardware/SensorEvent;

    iget-object v1, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/appsflyer/internal/t$3;->AFDateFormat:Landroid/hardware/SensorEvent;

    iget-object v2, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/t$3;->AFDateFormat:Landroid/hardware/SensorEvent;

    iget-object v3, v3, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 92
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appsflyer/internal/t$3;->AFDateFormat:Landroid/hardware/SensorEvent;

    iget-wide v4, v4, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/appsflyer/internal/t$3;->AFDateFormat:Landroid/hardware/SensorEvent;

    iget-object v6, v6, Landroid/hardware/SensorEvent;->values:[F

    .line 1107
    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/internal/t;->values(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1146
    iget-object v1, v0, Lcom/appsflyer/internal/t;->valueOf:[[F

    aget-object v1, v1, v7

    .line 1147
    if-nez v1, :cond_1

    .line 1148
    iget-object v1, v0, Lcom/appsflyer/internal/t;->valueOf:[[F

    array-length v4, v6

    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    aput-object v4, v1, v7

    .line 1149
    iget-object v0, v0, Lcom/appsflyer/internal/t;->$$b:[J

    aput-wide v2, v0, v7

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    iget-object v7, v0, Lcom/appsflyer/internal/t;->valueOf:[[F

    aget-object v7, v7, v12

    .line 1152
    if-nez v7, :cond_2

    .line 1153
    array-length v4, v6

    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    .line 1154
    iget-object v5, v0, Lcom/appsflyer/internal/t;->valueOf:[[F

    aput-object v4, v5, v12

    .line 1155
    iget-object v5, v0, Lcom/appsflyer/internal/t;->$$b:[J

    aput-wide v2, v5, v12

    .line 1156
    invoke-static {v1, v4}, Lcom/appsflyer/internal/t;->AFDateFormat([F[F)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/appsflyer/internal/t;->$$a:D

    goto :goto_0

    .line 1160
    :cond_2
    const-wide/32 v8, 0x2faf080

    iget-wide v10, v0, Lcom/appsflyer/internal/t;->AFDateFormat:J

    sub-long v10, v4, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 1161
    iput-wide v4, v0, Lcom/appsflyer/internal/t;->AFDateFormat:J

    .line 1162
    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1164
    iget-object v0, v0, Lcom/appsflyer/internal/t;->$$b:[J

    aput-wide v2, v0, v12

    goto :goto_0

    .line 1166
    :cond_3
    invoke-static {v1, v6}, Lcom/appsflyer/internal/t;->AFDateFormat([F[F)D

    move-result-wide v4

    .line 1167
    iget-wide v8, v0, Lcom/appsflyer/internal/t;->$$a:D

    cmpl-double v1, v4, v8

    if-lez v1, :cond_0

    .line 1168
    iget-object v1, v0, Lcom/appsflyer/internal/t;->valueOf:[[F

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v6

    aput-object v6, v1, v12

    .line 1169
    iget-object v1, v0, Lcom/appsflyer/internal/t;->$$b:[J

    aput-wide v2, v1, v12

    .line 1170
    iput-wide v4, v0, Lcom/appsflyer/internal/t;->$$a:D

    goto :goto_0
.end method
