.class final Lio/netty/util/internal/PlatformDependent0;
.super Ljava/lang/Object;
.source "PlatformDependent0.java"


# static fields
.field private static final ADDRESS_FIELD_OFFSET:J

.field private static final BIG_ENDIAN:Z

.field private static final UNALIGNED:Z

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final UNSAFE_COPY_THRESHOLD:J = 0x100000L

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 38
    const-class v0, Lio/netty/util/internal/PlatformDependent0;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 40
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    .line 57
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    :try_start_0
    const-class v4, Ljava/nio/Buffer;

    const-string v5, "address"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v5, v7

    if-nez v0, :cond_2

    :catch_0
    :goto_1
    move-object v4, v1

    .line 75
    :cond_2
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "java.nio.Buffer.address: {}"

    if-eqz v4, :cond_3

    const-string v6, "available"

    goto :goto_2

    :cond_3
    const-string v6, "unavailable"

    :goto_2
    invoke-interface {v0, v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v4, :cond_5

    .line 80
    :try_start_1
    const-class v0, Lsun/misc/Unsafe;

    const-string v5, "theUnsafe"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    .line 83
    sget-object v5, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "sun.misc.Unsafe.theUnsafe: {}"

    if-eqz v0, :cond_4

    const-string v7, "available"

    goto :goto_3

    :cond_4
    const-string v7, "unavailable"

    :goto_3
    invoke-interface {v5, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_6

    .line 90
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "copyMemory"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const/4 v8, 0x2

    const-class v9, Ljava/lang/Object;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    sget-object v5, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "sun.misc.Unsafe.copyMemory: available"

    invoke-interface {v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_1
    move-exception v0

    .line 98
    :try_start_3
    sget-object v5, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "sun.misc.Unsafe.copyMemory: unavailable"

    invoke-interface {v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 99
    throw v0

    :catch_2
    move-exception v0

    .line 95
    sget-object v5, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "sun.misc.Unsafe.copyMemory: unavailable"

    invoke-interface {v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 96
    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_5
    move-object v0, v1

    .line 111
    :cond_6
    :goto_4
    sput-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    .line 114
    sput-wide v0, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 115
    sput-boolean v2, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    goto :goto_6

    .line 117
    :cond_7
    invoke-static {v4}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    :try_start_4
    const-string v0, "java.nio.Bits"

    .line 120
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v0, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "unaligned"

    .line 121
    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 123
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    const-string v0, "os.arch"

    const-string v1, ""

    .line 126
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "^(i[3-6]86|x86(_64)?|x64|amd64)$"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 131
    :goto_5
    sput-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 132
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "java.nio.Bits.unaligned: {}"

    sget-boolean v2, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addressSize()I
    .locals 1

    .line 369
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method static allocateMemory(J)J
    .locals 1

    .line 373
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static arrayBaseOffset()J
    .locals 2

    .line 155
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method static copyMemory(JJJ)V
    .locals 9

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_0

    const-wide/32 v0, 0x100000

    .line 295
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 296
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    sub-long/2addr p4, v7

    add-long/2addr p0, v7

    add-long/2addr p2, v7

    goto :goto_0

    :cond_0
    return-void
.end method

.method static copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 17

    move-wide/from16 v11, p1

    move-wide/from16 v13, p4

    move-wide/from16 v0, p6

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0x100000

    .line 306
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 307
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v3, p0

    move-wide v4, v11

    move-object/from16 v6, p3

    move-wide v7, v13

    move-wide v9, v15

    invoke-virtual/range {v2 .. v10}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    sub-long/2addr v0, v15

    add-long/2addr v11, v15

    add-long/2addr v13, v15

    goto :goto_0

    :cond_0
    return-void
.end method

.method static directBufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 151
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 147
    invoke-static {p0}, Lio/netty/util/internal/Cleaner0;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static freeMemory(J)V
    .locals 1

    .line 377
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->freeMemory(J)V

    return-void
.end method

.method static getByte(J)B
    .locals 1

    .line 179
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    return p0
.end method

.method static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 330
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0

    .line 333
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$1;

    invoke-direct {v0, p0}, Lio/netty/util/internal/PlatformDependent0$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 343
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$2;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getInt(J)I
    .locals 7

    .line 193
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p0

    return p0

    .line 195
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    const-wide/16 v1, 0x3

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x1

    if-eqz v0, :cond_1

    .line 196
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-long/2addr v5, p0

    invoke-static {v5, v6}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    add-long/2addr v3, p0

    invoke-static {v3, v4}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-long/2addr p0, v1

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    :cond_1
    const/4 v0, 0x0

    add-long/2addr v1, p0

    .line 201
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-long/2addr v3, p0

    invoke-static {v3, v4}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-long/2addr v5, p0

    invoke-static {v5, v6}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static getInt(Ljava/lang/Object;J)I
    .locals 1

    .line 167
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static getLong(J)J
    .locals 25

    move-wide/from16 v0, p0

    .line 209
    sget-boolean v2, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v2, :cond_0

    .line 210
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, v0, v1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0

    .line 211
    :cond_0
    sget-boolean v2, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    const/16 v7, 0x10

    const-wide/16 v8, 0x5

    const/16 v10, 0x18

    const-wide/16 v11, 0x4

    const/16 v13, 0x20

    const-wide/16 v14, 0x3

    const/16 v16, 0x28

    const-wide/16 v17, 0x2

    const/16 v19, 0x30

    const-wide/16 v20, 0x1

    const/16 v22, 0x38

    const-wide/16 v23, 0xff

    if-eqz v2, :cond_1

    .line 212
    invoke-static/range {p0 .. p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v3, v2

    shl-long v2, v3, v22

    add-long v20, v0, v20

    invoke-static/range {v20 .. v21}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v5, v4

    and-long v5, v5, v23

    shl-long v4, v5, v19

    or-long/2addr v2, v4

    add-long v4, v0, v17

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    shl-long v4, v4, v16

    or-long/2addr v2, v4

    add-long v4, v0, v14

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    shl-long/2addr v4, v13

    or-long/2addr v2, v4

    add-long v4, v0, v11

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    shl-long/2addr v4, v10

    or-long/2addr v2, v4

    add-long v4, v0, v8

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    const-wide/16 v4, 0x6

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x7

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    and-long v0, v0, v23

    or-long/2addr v0, v2

    return-wide v0

    :cond_1
    const-wide/16 v4, 0x7

    const/4 v2, 0x0

    add-long v2, v0, v4

    .line 221
    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    shl-long v2, v2, v22

    const-wide/16 v4, 0x6

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    shl-long v4, v4, v19

    or-long/2addr v2, v4

    add-long v4, v0, v8

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    shl-long v4, v4, v16

    or-long/2addr v2, v4

    add-long v4, v0, v11

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    shl-long/2addr v4, v13

    or-long/2addr v2, v4

    add-long v4, v0, v14

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    shl-long/2addr v4, v10

    or-long/2addr v2, v4

    add-long v4, v0, v17

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-long v4, v0, v20

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v23

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    invoke-static/range {p0 .. p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    and-long v0, v0, v23

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static getLong(Ljava/lang/Object;J)J
    .locals 1

    .line 171
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 159
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 163
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getShort(J)S
    .locals 3

    .line 183
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getShort(J)S

    move-result p0

    return p0

    .line 185
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 186
    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-long/2addr p0, v1

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 v0, 0x0

    add-long/2addr v1, p0

    .line 188
    invoke-static {v1, v2}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-static {p0, p1}, Lio/netty/util/internal/PlatformDependent0;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 356
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 357
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$3;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static hasUnsafe()Z
    .locals 1

    .line 137
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static newAtomicIntegerFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    new-instance v0, Lio/netty/util/internal/UnsafeAtomicIntegerFieldUpdater;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1, p0, p1}, Lio/netty/util/internal/UnsafeAtomicIntegerFieldUpdater;-><init>(Lsun/misc/Unsafe;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method static newAtomicLongFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    new-instance v0, Lio/netty/util/internal/UnsafeAtomicLongFieldUpdater;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1, p0, p1}, Lio/netty/util/internal/UnsafeAtomicLongFieldUpdater;-><init>(Lsun/misc/Unsafe;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method static newAtomicReferenceFieldUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "W:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "TU;TW;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    new-instance v0, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1, p0, p1}, Lio/netty/util/internal/UnsafeAtomicReferenceFieldUpdater;-><init>(Lsun/misc/Unsafe;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    .line 175
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static putByte(JB)V
    .locals 1

    .line 237
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method static putInt(JI)V
    .locals 7

    .line 253
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    goto :goto_0

    .line 255
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    const-wide/16 v1, 0x3

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x1

    if-eqz v0, :cond_1

    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 256
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long/2addr v5, p0

    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 257
    invoke-static {v5, v6, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long/2addr v3, p0

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 258
    invoke-static {v3, v4, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long/2addr p0, v1

    int-to-byte p2, p2

    .line 259
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    add-long/2addr v1, p0

    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 261
    invoke-static {v1, v2, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long/2addr v3, p0

    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 262
    invoke-static {v3, v4, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long/2addr v5, p0

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 263
    invoke-static {v5, v6, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    int-to-byte p2, p2

    .line 264
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    :goto_0
    return-void
.end method

.method static putLong(JJ)V
    .locals 25

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    .line 269
    sget-boolean v4, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v4, :cond_0

    .line 270
    sget-object v4, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0, v1, v2, v3}, Lsun/misc/Unsafe;->putLong(JJ)V

    goto/16 :goto_0

    .line 271
    :cond_0
    sget-boolean v4, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    const/16 v9, 0x10

    const-wide/16 v10, 0x5

    const/16 v12, 0x18

    const-wide/16 v13, 0x4

    const/16 v15, 0x20

    const-wide/16 v16, 0x3

    const/16 v18, 0x28

    const-wide/16 v19, 0x2

    const/16 v21, 0x30

    const-wide/16 v22, 0x1

    const/16 v24, 0x38

    if-eqz v4, :cond_1

    ushr-long v5, v2, v24

    long-to-int v4, v5

    int-to-byte v4, v4

    .line 272
    invoke-static {v0, v1, v4}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v22

    ushr-long v7, v2, v21

    long-to-int v6, v7

    int-to-byte v6, v6

    .line 273
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v19

    ushr-long v6, v2, v18

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 274
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v16

    ushr-long v6, v2, v15

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 275
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v13

    ushr-long v6, v2, v12

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 276
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v10

    ushr-long v6, v2, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 277
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    const-wide/16 v4, 0x6

    add-long/2addr v4, v0

    const/16 v6, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 278
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    const-wide/16 v4, 0x7

    add-long/2addr v0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 279
    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x7

    const/4 v6, 0x0

    add-long/2addr v4, v0

    ushr-long v6, v2, v24

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 281
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    const-wide/16 v4, 0x6

    add-long/2addr v4, v0

    ushr-long v6, v2, v21

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 282
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v10

    ushr-long v6, v2, v18

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 283
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v13

    ushr-long v6, v2, v15

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 284
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v16

    ushr-long v6, v2, v12

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 285
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v19

    ushr-long v6, v2, v9

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 286
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long v4, v0, v22

    const/16 v6, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 287
    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 288
    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    :goto_0
    return-void
.end method

.method static putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 233
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static putShort(JS)V
    .locals 3

    .line 241
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    goto :goto_0

    .line 243
    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->BIG_ENDIAN:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 244
    invoke-static {p0, p1, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    add-long/2addr p0, v1

    int-to-byte p2, p2

    .line 245
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    add-long/2addr v1, p0

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 247
    invoke-static {v1, v2, v0}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    int-to-byte p2, p2

    .line 248
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/PlatformDependent0;->putByte(JB)V

    :goto_0
    return-void
.end method

.method static throwException(Ljava/lang/Throwable;)V
    .locals 1

    .line 141
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->throwException(Ljava/lang/Throwable;)V

    return-void
.end method
