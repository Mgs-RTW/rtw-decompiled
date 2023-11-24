.class final Lio/netty/util/internal/Cleaner0;
.super Ljava/lang/Object;
.source "Cleaner0.java"


# static fields
.field private static final CLEANER_FIELD_OFFSET:J

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    const-class v0, Lio/netty/util/internal/Cleaner0;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/Cleaner0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 40
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasUnsafe()Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "cleaner"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Cleaner;

    .line 45
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 46
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-wide v5, v3

    .line 52
    :goto_0
    sget-object v0, Lio/netty/util/internal/Cleaner0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "java.nio.ByteBuffer.cleaner(): {}"

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    const-string v3, "available"

    goto :goto_1

    :cond_1
    const-string v3, "unavailable"

    :goto_1
    invoke-interface {v0, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    sput-wide v5, Lio/netty/util/internal/Cleaner0;->CLEANER_FIELD_OFFSET:J

    .line 56
    invoke-static {v1}, Lio/netty/util/internal/Cleaner0;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 60
    sget-wide v0, Lio/netty/util/internal/Cleaner0;->CLEANER_FIELD_OFFSET:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    :try_start_0
    sget-wide v0, Lio/netty/util/internal/Cleaner0;->CLEANER_FIELD_OFFSET:J

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/misc/Cleaner;

    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p0}, Lsun/misc/Cleaner;->clean()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
