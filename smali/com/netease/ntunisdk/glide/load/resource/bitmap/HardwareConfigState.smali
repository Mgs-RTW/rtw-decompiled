.class public final Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;
.super Ljava/lang/Object;
.source "HardwareConfigState.java"


# static fields
.field public static final BLOCK_HARDWARE_BITMAPS_WHEN_GL_CONTEXT_MIGHT_NOT_BE_INITIALIZED:Z

.field private static final FD_SIZE_LIST:Ljava/io/File;

.field public static final HARDWARE_BITMAPS_SUPPORTED:Z

.field private static final MAXIMUM_FDS_FOR_HARDWARE_CONFIGS_O:I = 0x2bc

.field private static final MAXIMUM_FDS_FOR_HARDWARE_CONFIGS_P:I = 0x4e20

.field private static final MINIMUM_DECODES_BETWEEN_FD_CHECKS:I = 0x32

.field static final MIN_HARDWARE_DIMENSION_O:I = 0x80

.field private static final MIN_HARDWARE_DIMENSION_P:I = 0x0

.field public static final NO_MAX_FD_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HardwareConfig"

.field private static volatile instance:Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

.field private static volatile manualOverrideMaxFdCount:I


# instance fields
.field private decodesSinceLastFdCheck:I

.field private isFdSizeBelowHardwareLimit:Z

.field private final isHardwareConfigAllowedByAppState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isHardwareConfigAllowedByDeviceModel:Z

.field private final minHardwareDimension:I

.field private final sdkBasedMaxFdCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->BLOCK_HARDWARE_BITMAPS_WHEN_GL_CONTEXT_MIGHT_NOT_BE_INITIALIZED:Z

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->HARDWARE_BITMAPS_SUPPORTED:Z

    .line 63
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->FD_SIZE_LIST:Ljava/io/File;

    const/4 v0, -0x1

    .line 88
    sput v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->manualOverrideMaxFdCount:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit:Z

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByAppState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByDeviceModel()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByDeviceModel:Z

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    const/16 v0, 0x4e20

    .line 123
    iput v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->sdkBasedMaxFdCount:I

    .line 124
    iput v1, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->minHardwareDimension:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x2bc

    .line 126
    iput v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->sdkBasedMaxFdCount:I

    const/16 v0, 0x80

    .line 127
    iput v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->minHardwareDimension:I

    :goto_0
    return-void
.end method

.method private areHardwareBitmapsBlockedByAppState()Z
    .locals 1

    .line 205
    sget-boolean v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->BLOCK_HARDWARE_BITMAPS_WHEN_GL_CONTEXT_MIGHT_NOT_BE_INITIALIZED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByAppState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 206
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance()Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;
    .locals 2

    .line 109
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

    if-nez v0, :cond_1

    .line 110
    const-class v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

    invoke-direct {v1}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;-><init>()V

    sput-object v1, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

    .line 114
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->instance:Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;

    return-object v0
.end method

.method private getMaxFdCount()I
    .locals 2

    .line 296
    sget v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->manualOverrideMaxFdCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 297
    sget v0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->manualOverrideMaxFdCount:I

    goto :goto_0

    .line 298
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->sdkBasedMaxFdCount:I

    :goto_0
    return v0
.end method

.method private declared-synchronized isFdSizeBelowHardwareLimit()Z
    .locals 8

    monitor-enter p0

    .line 302
    :try_start_0
    iget v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->decodesSinceLastFdCheck:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->decodesSinceLastFdCheck:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->decodesSinceLastFdCheck:I

    .line 304
    sget-object v2, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->FD_SIZE_LIST:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .line 305
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->getMaxFdCount()I

    move-result v3

    int-to-long v3, v3

    int-to-long v5, v2

    cmp-long v7, v5, v3

    if-gez v7, :cond_0

    const/4 v0, 0x1

    .line 306
    :cond_0
    iput-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit:Z

    .line 308
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit:Z

    if-nez v0, :cond_1

    const-string v0, "Downsampler"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Downsampler"

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    iget-boolean v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isHardwareConfigAllowedByDeviceModel()Z
    .locals 1

    .line 227
    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigDisallowedByB112551574()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigDisallowedByB147430447()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isHardwareConfigDisallowedByB112551574()Z
    .locals 5

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "SC-04J"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "SM-N935"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "SM-J720"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "SM-G570F"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "SM-G570M"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "SM-G960"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "SM-G965"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "SM-G935"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "SM-G930"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "SM-A520"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "SM-A720F"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "moto e5"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "moto e5 play"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "moto e5 plus"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "moto e5 cruise"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "moto g(6) forge"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "moto g(6) play"

    aput-object v4, v0, v3

    .line 268
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_2
    return v1
.end method

.method private static isHardwareConfigDisallowedByB147430447()Z
    .locals 3

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "LG-M250"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LG-M320"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LG-Q710AL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LG-Q710PL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LGM-K121K"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "LGM-K121L"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LGM-K121S"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "LGM-X320K"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LGM-X320L"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LGM-X320S"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LGM-X401L"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LGM-X401S"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LM-Q610.FG"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LM-Q610.FGN"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "LM-Q617.FG"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "LM-Q617.FGN"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "LM-Q710.FG"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "LM-Q710.FGN"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "LM-X220PM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LM-X220QMA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "LM-X410PM"

    aput-object v2, v0, v1

    .line 235
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 257
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public areHardwareBitmapsBlocked()Z
    .locals 1

    .line 132
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertMainThread()V

    .line 133
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByAppState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blockHardwareBitmaps()V
    .locals 2

    .line 137
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertMainThread()V

    .line 138
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByAppState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isHardwareConfigAllowed(IIZZ)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "HardwareConfig"

    if-nez p3, :cond_1

    .line 152
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Hardware config disallowed by caller"

    .line 153
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    .line 157
    :cond_1
    iget-boolean p3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByDeviceModel:Z

    if-nez p3, :cond_3

    .line 158
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Hardware config disallowed by device model"

    .line 159
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    .line 163
    :cond_3
    sget-boolean p3, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->HARDWARE_BITMAPS_SUPPORTED:Z

    if-nez p3, :cond_5

    .line 164
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Hardware config disallowed by sdk"

    .line 165
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    .line 169
    :cond_5
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->areHardwareBitmapsBlockedByAppState()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 170
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Hardware config disallowed by app state"

    .line 171
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v0

    :cond_7
    if-eqz p4, :cond_9

    .line 176
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Hardware config disallowed because exif orientation is required"

    .line 177
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v0

    .line 181
    :cond_9
    iget p3, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->minHardwareDimension:I

    if-ge p1, p3, :cond_b

    .line 182
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "Hardware config disallowed because width is too small"

    .line 183
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v0

    :cond_b
    if-ge p2, p3, :cond_d

    .line 188
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "Hardware config disallowed because height is too small"

    .line 189
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v0

    .line 194
    :cond_d
    invoke-direct {p0}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isFdSizeBelowHardwareLimit()Z

    move-result p1

    if-nez p1, :cond_f

    .line 195
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "Hardware config disallowed because there are insufficient FDs"

    .line 196
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v0

    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method setHardwareConfigIfAllowed(IILandroid/graphics/BitmapFactory$Options;ZZ)Z
    .locals 0

    .line 217
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed(IIZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    sget-object p2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object p2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x0

    .line 221
    iput-boolean p2, p3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return p1
.end method

.method public unblockHardwareBitmaps()V
    .locals 2

    .line 142
    invoke-static {}, Lcom/netease/ntunisdk/glide/util/Util;->assertMainThread()V

    .line 143
    iget-object v0, p0, Lcom/netease/ntunisdk/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowedByAppState:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
