.class public Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "ScreenOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener$OnOrientationChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOrientationListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFieldRotation:Ljava/lang/reflect/Field;

.field private mOLegacy:Ljava/lang/Object;

.field private mOnOrientationChangedListener:Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener$OnOrientationChangedListener;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener$OnOrientationChangedListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mOnOrientationChangedListener:Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener$OnOrientationChangedListener;

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 31
    :try_start_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mFieldRotation:Ljava/lang/reflect/Field;

    if-nez v3, :cond_0

    .line 32
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    const-string v4, "android.hardware.LegacySensorManager"

    .line 33
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 34
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/hardware/SensorManager;

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 36
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mOLegacy:Ljava/lang/Object;

    const-string v3, "sRotation"

    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iput-object v3, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mFieldRotation:Ljava/lang/reflect/Field;

    .line 38
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mFieldRotation:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mFieldRotation:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mOLegacy:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 42
    sget-object v4, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRotation e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, -0x1

    :goto_0
    if-eqz v3, :cond_4

    if-eq v3, v2, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10e

    goto :goto_1

    :cond_2
    const/16 v0, 0xb4

    goto :goto_1

    :cond_3
    const/16 v0, 0x5a

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15e

    if-gt p1, v0, :cond_5

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    if-le p1, v0, :cond_2

    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    const/16 p1, 0x5a

    goto :goto_1

    :cond_2
    const/16 v0, 0xaa

    if-le p1, v0, :cond_3

    const/16 v0, 0xbe

    if-ge p1, v0, :cond_3

    const/16 p1, 0xb4

    goto :goto_1

    :cond_3
    const/16 v0, 0x104

    if-le p1, v0, :cond_4

    const/16 v0, 0x118

    if-ge p1, v0, :cond_4

    const/16 p1, 0x10e

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 93
    :goto_1
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->mOnOrientationChangedListener:Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener$OnOrientationChangedListener;

    invoke-interface {v0, p1}, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener$OnOrientationChangedListener;->onGBOrientationChanged(I)V

    .line 94
    sget-object v0, Lcom/netease/unisdk/gmbridge5/ScreenOrientationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenOrientationListener onOrientationChanged orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/unisdk/gmbridge5/log/NgLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
