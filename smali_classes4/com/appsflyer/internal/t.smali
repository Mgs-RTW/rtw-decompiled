.class public final Lcom/appsflyer/internal/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field $$a:D

.field final $$b:[J

.field AFDateFormat:J

.field private final AFDeepLinkManager:I

.field private final collectIntentsFromActivities:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final dateFormatUTC:Ljava/util/concurrent/Executor;

.field private final getInstance:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final valueOf:[[F

.field private final values:I


# direct methods
.method static synthetic $$a(Landroid/hardware/Sensor;)Z
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/appsflyer/internal/t;->$$b(Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method private static $$b([F)Ljava/util/List;
    .locals 4
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    .line 80
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-object v1
.end method

.method private static $$b(Landroid/hardware/Sensor;)Z
    .locals 1

    .prologue
    .line 73
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/hardware/Sensor;Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-array v0, v1, [[F

    iput-object v0, p0, Lcom/appsflyer/internal/t;->valueOf:[[F

    .line 32
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/appsflyer/internal/t;->$$b:[J

    .line 39
    iput-object p2, p0, Lcom/appsflyer/internal/t;->dateFormatUTC:Ljava/util/concurrent/Executor;

    .line 40
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/t;->values:I

    .line 41
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1048
    if-nez v0, :cond_0

    const-string v0, ""

    .line 41
    :cond_0
    iput-object v0, p0, Lcom/appsflyer/internal/t;->getInstance:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    .line 2048
    if-nez v0, :cond_1

    const-string v0, ""

    .line 42
    :cond_1
    iput-object v0, p0, Lcom/appsflyer/internal/t;->collectIntentsFromActivities:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/appsflyer/internal/t;->values:I

    iget-object v1, p0, Lcom/appsflyer/internal/t;->getInstance:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/internal/t;->collectIntentsFromActivities:Ljava/lang/String;

    .line 2053
    add-int/lit8 v0, v0, 0x1f

    .line 2054
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2055
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Lcom/appsflyer/internal/t;->AFDeepLinkManager:I

    .line 44
    return-void
.end method

.method static AFDateFormat([F[F)D
    .locals 8
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 65
    const-wide/16 v2, 0x0

    .line 66
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 67
    aget v4, p0, v0

    aget v5, p1, v0

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private valueOf()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 223
    iget-object v1, p0, Lcom/appsflyer/internal/t;->valueOf:[[F

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private values()Ljava/util/Map;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 188
    const-string v1, "sT"

    iget v2, p0, Lcom/appsflyer/internal/t;->values:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "sN"

    iget-object v2, p0, Lcom/appsflyer/internal/t;->getInstance:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "sV"

    iget-object v2, p0, Lcom/appsflyer/internal/t;->collectIntentsFromActivities:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/appsflyer/internal/t;->valueOf:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 192
    if-eqz v1, :cond_0

    .line 193
    const-string v2, "sVS"

    invoke-static {v1}, Lcom/appsflyer/internal/t;->$$b([F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/t;->valueOf:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 196
    if-eqz v1, :cond_1

    .line 197
    const-string v2, "sVE"

    invoke-static {v1}, Lcom/appsflyer/internal/t;->$$b([F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 237
    if-ne p1, p0, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    .line 240
    :cond_0
    instance-of v0, p1, Lcom/appsflyer/internal/t;

    if-eqz v0, :cond_1

    .line 241
    check-cast p1, Lcom/appsflyer/internal/t;

    .line 242
    iget v0, p1, Lcom/appsflyer/internal/t;->values:I

    iget-object v1, p1, Lcom/appsflyer/internal/t;->getInstance:Ljava/lang/String;

    iget-object v2, p1, Lcom/appsflyer/internal/t;->collectIntentsFromActivities:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/appsflyer/internal/t;->values(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/appsflyer/internal/t;->AFDeepLinkManager:I

    return v0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/appsflyer/internal/t;->dateFormatUTC:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/t$3;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/t$3;-><init>(Lcom/appsflyer/internal/t;Landroid/hardware/SensorEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public final valueOf(Ljava/util/Map;Z)V
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/appsflyer/internal/t;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Lcom/appsflyer/internal/t;->valueOf()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/appsflyer/internal/t;->values()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    if-eqz p2, :cond_2

    .line 2207
    iget-object v1, p0, Lcom/appsflyer/internal/t;->valueOf:[[F

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2208
    iget-object v3, p0, Lcom/appsflyer/internal/t;->valueOf:[[F

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 2207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2210
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/t;->$$b:[J

    array-length v1, v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2211
    iget-object v2, p0, Lcom/appsflyer/internal/t;->$$b:[J

    aput-wide v6, v2, v0

    .line 2210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2213
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appsflyer/internal/t;->$$a:D

    .line 2214
    iput-wide v6, p0, Lcom/appsflyer/internal/t;->AFDateFormat:J

    .line 135
    :cond_2
    :goto_2
    return-void

    .line 132
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/appsflyer/internal/t;->values()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method final values(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    iget v0, p0, Lcom/appsflyer/internal/t;->values:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/t;->getInstance:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsflyer/internal/t;->collectIntentsFromActivities:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 138
    goto :goto_0
.end method
