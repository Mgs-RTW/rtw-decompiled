.class public Lcom/netease/ybuax/SensorUtils;
.super Ljava/lang/Object;
.source "SensorUtils.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private msyimoyqyt:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/netease/ybuax/SensorUtils;->msyimoyqyt:J

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public native onSensorChanged(Landroid/hardware/SensorEvent;)V
.end method
