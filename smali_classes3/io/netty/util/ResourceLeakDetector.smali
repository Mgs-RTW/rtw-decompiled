.class public final Lio/netty/util/ResourceLeakDetector;
.super Ljava/lang/Object;
.source "ResourceLeakDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;,
        Lio/netty/util/ResourceLeakDetector$Level;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x71

.field private static final PROP_LEVEL:Ljava/lang/String; = "io.netty.leakDetectionLevel"

.field private static final STACK_TRACE_ELEMENT_EXCLUSIONS:[Ljava/lang/String;

.field private static level:Lio/netty/util/ResourceLeakDetector$Level;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private active:J

.field private final head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>.DefaultResource",
            "Leak;"
        }
    .end annotation
.end field

.field private leakCheckCnt:J

.field private final loggedTooManyActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final maxActive:J

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final reportedLeaks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceType:Ljava/lang/String;

.field private final samplingInterval:I

.field private final tail:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/ResourceLeakDetector<",
            "TT;>.DefaultResource",
            "Leak;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 37
    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;

    sput-object v0, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    .line 66
    const-class v0, Lio/netty/util/ResourceLeakDetector;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "io.netty.noResourceLeakDetection"

    .line 70
    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "io.netty.noResourceLeakDetection"

    .line 71
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    sget-object v2, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.noResourceLeakDetection: {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object v2, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.noResourceLeakDetection is deprecated. Use \'-D{}={}\' instead."

    const-string v4, "io.netty.leakDetectionLevel"

    .line 75
    sget-object v5, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v5}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-interface {v2, v3, v4, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    goto :goto_1

    :cond_1
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    :goto_1
    const-string v2, "io.netty.leakDetectionLevel"

    .line 81
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 82
    sget-object v2, Lio/netty/util/ResourceLeakDetector;->DEFAULT_LEVEL:Lio/netty/util/ResourceLeakDetector$Level;

    .line 83
    const-class v3, Lio/netty/util/ResourceLeakDetector$Level;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 89
    sput-object v2, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    .line 90
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-D{}: {}"

    const-string v4, "io.netty.leakDetectionLevel"

    invoke-virtual {v2}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x1

    .line 355
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "io.netty.buffer.AbstractByteBufAllocator.toLeakAwareBuffer("

    aput-object v2, v0, v1

    sput-object v0, Lio/netty/util/ResourceLeakDetector;->STACK_TRACE_ELEMENT_EXCLUSIONS:[Ljava/lang/String;

    return-void

    .line 83
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/util/ResourceLeakDetector$Level;

    .line 84
    invoke-virtual {v4}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_5
    move-object v2, v4

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;IJ)V"
        }
    .end annotation

    .line 153
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x71

    const-wide v1, 0x7fffffffffffffffL

    .line 149
    invoke-direct {p0, p1, v0, v1, v2}, Lio/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Lio/netty/util/ResourceLeakDetector;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 131
    new-instance v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-direct {v0, p0, v1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Lio/netty/util/ResourceLeakDetector;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->tail:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    .line 133
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 134
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->reportedLeaks:Ljava/util/concurrent/ConcurrentMap;

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/netty/util/ResourceLeakDetector;->loggedTooManyActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_2

    if-lez p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 167
    iput-object p1, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    .line 168
    iput p2, p0, Lio/netty/util/ResourceLeakDetector;->samplingInterval:I

    .line 169
    iput-wide p3, p0, Lio/netty/util/ResourceLeakDetector;->maxActive:J

    .line 171
    iget-object p1, p0, Lio/netty/util/ResourceLeakDetector;->head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iget-object p2, p0, Lio/netty/util/ResourceLeakDetector;->tail:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-static {p1, p2}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->access$0(Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;)V

    .line 172
    iget-object p1, p0, Lio/netty/util/ResourceLeakDetector;->tail:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    iget-object p2, p0, Lio/netty/util/ResourceLeakDetector;->head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-static {p1, p2}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->access$1(Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;)V

    return-void

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "maxActive: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " (expected: 1+)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "samplingInterval: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected: 1+)"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "resourceType"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$0(Lio/netty/util/ResourceLeakDetector;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 133
    iget-object p0, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method static synthetic access$1(Lio/netty/util/ResourceLeakDetector;)Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
    .locals 0

    .line 130
    iget-object p0, p0, Lio/netty/util/ResourceLeakDetector;->head:Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    return-object p0
.end method

.method static synthetic access$2(Lio/netty/util/ResourceLeakDetector;)J
    .locals 2

    .line 139
    iget-wide v0, p0, Lio/netty/util/ResourceLeakDetector;->active:J

    return-wide v0
.end method

.method static synthetic access$3(Lio/netty/util/ResourceLeakDetector;J)V
    .locals 0

    .line 139
    iput-wide p1, p0, Lio/netty/util/ResourceLeakDetector;->active:J

    return-void
.end method

.method public static getLevel()Lio/netty/util/ResourceLeakDetector$Level;
    .locals 1

    .line 126
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 2

    .line 109
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->getLevel()Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v0

    sget-object v1, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static newRecord(I)Ljava/lang/String;
    .locals 10

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 361
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 362
    array-length v2, v1

    const/4 v3, 0x0

    move v4, p0

    const/4 p0, 0x0

    :goto_0
    if-lt p0, v2, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 362
    :cond_0
    aget-object v5, v1, p0

    if-lez v4, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 366
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    .line 370
    sget-object v6, Lio/netty/util/ResourceLeakDetector;->STACK_TRACE_ELEMENT_EXCLUSIONS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v7, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    aget-object v9, v6, v8

    .line 371
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_3

    const/16 v6, 0x9

    .line 378
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    sget-object v5, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private reportLeak(Lio/netty/util/ResourceLeakDetector$Level;)V
    .locals 6

    .line 201
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isErrorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :goto_0
    iget-object p1, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    check-cast p1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    if-nez p1, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->close()Z

    goto :goto_0

    .line 214
    :cond_1
    sget-object v0, Lio/netty/util/ResourceLeakDetector$Level;->PARANOID:Lio/netty/util/ResourceLeakDetector$Level;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    iget p1, p0, Lio/netty/util/ResourceLeakDetector;->samplingInterval:I

    .line 215
    :goto_1
    iget-wide v2, p0, Lio/netty/util/ResourceLeakDetector;->active:J

    int-to-long v4, p1

    mul-long v2, v2, v4

    iget-wide v4, p0, Lio/netty/util/ResourceLeakDetector;->maxActive:J

    const/4 p1, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector;->loggedTooManyActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LEAK: You are creating too many "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " instances.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v3, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is a shared resource that must be reused across the JVM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "so that only a few instances are created."

    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-interface {v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 224
    :cond_3
    :goto_2
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    if-nez v0, :cond_4

    return-void

    .line 229
    :cond_4
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->clear()V

    .line 231
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->close()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 235
    :cond_5
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v2, p0, Lio/netty/util/ResourceLeakDetector;->reportedLeaks:Ljava/util/concurrent/ConcurrentMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 238
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "LEAK: {}.release() was not called before it\'s garbage-collected. Enable advanced leak reporting to find out where the leak occurred. To enable advanced leak reporting, specify the JVM option \'-D{}={}\' or call {}.setLevel()"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 242
    iget-object v4, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    aput-object v4, v3, p1

    const-string v4, "io.netty.leakDetectionLevel"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    sget-object v5, Lio/netty/util/ResourceLeakDetector$Level;->ADVANCED:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v5}, Lio/netty/util/ResourceLeakDetector$Level;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 238
    invoke-interface {v0, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 244
    :cond_6
    sget-object v2, Lio/netty/util/ResourceLeakDetector;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "LEAK: {}.release() was not called before it\'s garbage-collected.{}"

    .line 246
    iget-object v4, p0, Lio/netty/util/ResourceLeakDetector;->resourceType:Ljava/lang/String;

    .line 244
    invoke-interface {v2, v3, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static setEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    .line 102
    sget-object p0, Lio/netty/util/ResourceLeakDetector$Level;->SIMPLE:Lio/netty/util/ResourceLeakDetector$Level;

    goto :goto_0

    :cond_0
    sget-object p0, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    :goto_0
    invoke-static {p0}, Lio/netty/util/ResourceLeakDetector;->setLevel(Lio/netty/util/ResourceLeakDetector$Level;)V

    return-void
.end method

.method public static setLevel(Lio/netty/util/ResourceLeakDetector$Level;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 119
    sput-object p0, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    return-void

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "level"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public open(Ljava/lang/Object;)Lio/netty/util/ResourceLeak;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/netty/util/ResourceLeak;"
        }
    .end annotation

    .line 182
    sget-object v0, Lio/netty/util/ResourceLeakDetector;->level:Lio/netty/util/ResourceLeakDetector$Level;

    .line 183
    sget-object v1, Lio/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/netty/util/ResourceLeakDetector$Level;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 187
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v1

    sget-object v3, Lio/netty/util/ResourceLeakDetector$Level;->PARANOID:Lio/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v3}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 188
    iget-wide v3, p0, Lio/netty/util/ResourceLeakDetector;->leakCheckCnt:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lio/netty/util/ResourceLeakDetector;->leakCheckCnt:J

    iget v1, p0, Lio/netty/util/ResourceLeakDetector;->samplingInterval:I

    int-to-long v5, v1

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 189
    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector;->reportLeak(Lio/netty/util/ResourceLeakDetector$Level;)V

    .line 190
    new-instance v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-direct {v0, p0, p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Lio/netty/util/ResourceLeakDetector;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    return-object v2

    .line 195
    :cond_2
    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector;->reportLeak(Lio/netty/util/ResourceLeakDetector$Level;)V

    .line 196
    new-instance v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    invoke-direct {v0, p0, p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;-><init>(Lio/netty/util/ResourceLeakDetector;Ljava/lang/Object;)V

    return-object v0
.end method
