.class public final Lio/netty/handler/ssl/OpenSslEngine;
.super Ljavax/net/ssl/SSLEngine;
.source "OpenSslEngine.java"


# static fields
.field private static final DESTROYED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/handler/ssl/OpenSslEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

.field private static final EMPTY_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

.field private static final ENCRYPTED_PACKET_OVERSIZED:Ljavax/net/ssl/SSLException;

.field private static final ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

.field private static final MAX_CIPHERTEXT_LENGTH:I = 0x4800

.field private static final MAX_COMPRESSED_LENGTH:I = 0x4400

.field static final MAX_ENCRYPTED_PACKET_LENGTH:I = 0x4919

.field static final MAX_ENCRYPTION_OVERHEAD_LENGTH:I = 0x919

.field private static final MAX_PLAINTEXT_LENGTH:I = 0x4000

.field private static final RENEGOTIATION_UNSUPPORTED:Ljavax/net/ssl/SSLException;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private accepted:I

.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private volatile applicationProtocol:Ljava/lang/String;

.field private cipher:Ljava/lang/String;

.field private volatile destroyed:I

.field private engineClosed:Z

.field private final fallbackApplicationProtocol:Ljava/lang/String;

.field private handshakeFinished:Z

.field private isInboundDone:Z

.field private isOutboundDone:Z

.field private lastPrimingReadResult:I

.field private networkBIO:J

.field private receivedShutdown:Z

.field private session:Ljavax/net/ssl/SSLSession;

.field private ssl:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Lio/netty/handler/ssl/OpenSslEngine;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v0, 0x0

    .line 49
    new-array v1, v0, [Ljava/security/cert/Certificate;

    sput-object v1, Lio/netty/handler/ssl/OpenSslEngine;->EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

    .line 50
    new-array v0, v0, [Ljavax/security/cert/X509Certificate;

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->EMPTY_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

    .line 52
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "engine closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    .line 53
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "renegotiation unsupported"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->RENEGOTIATION_UNSUPPORTED:Ljavax/net/ssl/SSLException;

    .line 54
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "encrypted packet oversized"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENCRYPTED_PACKET_OVERSIZED:Ljavax/net/ssl/SSLException;

    .line 57
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 58
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->RENEGOTIATION_UNSUPPORTED:Ljavax/net/ssl/SSLException;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 59
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENCRYPTED_PACKET_OVERSIZED:Ljavax/net/ssl/SSLException;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 71
    const-class v0, Lio/netty/handler/ssl/OpenSslEngine;

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSslEngine;->DESTROYED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLio/netty/buffer/ByteBufAllocator;Ljava/lang/String;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 108
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->ensureAvailability()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    .line 116
    iput-object p3, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    const/4 p3, 0x1

    .line 117
    invoke-static {p1, p2, p3}, Lorg/apache/tomcat/jni/SSL;->newSSL(JZ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    .line 118
    iget-wide p1, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {p1, p2}, Lorg/apache/tomcat/jni/SSL;->makeNetworkBIO(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    .line 119
    iput-object p4, p0, Lio/netty/handler/ssl/OpenSslEngine;->fallbackApplicationProtocol:Ljava/lang/String;

    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "alloc"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sslContext"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/OpenSslEngine;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    return-wide v0
.end method

.method static synthetic access$100()[Ljava/security/cert/Certificate;
    .locals 1

    .line 45
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$200()[Ljavax/security/cert/X509Certificate;
    .locals 1

    .line 45
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->EMPTY_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/ssl/OpenSslEngine;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lio/netty/handler/ssl/OpenSslEngine;->cipher:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lio/netty/handler/ssl/OpenSslEngine;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lio/netty/handler/ssl/OpenSslEngine;->applicationProtocol:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized beginHandshakeImplicitly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 775
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-nez v0, :cond_1

    .line 779
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-nez v0, :cond_0

    .line 780
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->doHandshake(J)I

    const/4 v0, 0x1

    .line 781
    iput v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :cond_0
    monitor-exit p0

    return-void

    .line 776
    :cond_1
    :try_start_1
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 774
    monitor-exit p0

    throw v0
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    .line 786
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_0
    return-object v0
.end method

.method private readEncryptedData(Ljava/nio/ByteBuffer;I)I
    .locals 6

    .line 271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 272
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 273
    invoke-static {p1}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 274
    iget-wide v4, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v4, v5, v2, v3, p2}, Lorg/apache/tomcat/jni/SSL;->readFromBIO(JJI)I

    move-result p2

    if-lez p2, :cond_3

    add-int/2addr v0, p2

    .line 276
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return p2

    .line 280
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 283
    :try_start_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 289
    :goto_0
    iget-wide v4, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v4, v5, v2, v3, p2}, Lorg/apache/tomcat/jni/SSL;->readFromBIO(JJI)I

    move-result p2

    if-lez p2, :cond_2

    .line 291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 292
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    invoke-virtual {v0, v1, p1}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 294
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    return p2

    :cond_2
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_3
    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p1
.end method

.method private readPlaintextData(Ljava/nio/ByteBuffer;)I
    .locals 9

    .line 230
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 232
    invoke-static {p1}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 233
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v0

    .line 234
    iget-wide v5, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v5, v6, v2, v3, v4}, Lorg/apache/tomcat/jni/SSL;->readFromSSL(JJI)I

    move-result v2

    if-lez v2, :cond_3

    add-int/2addr v0, v2

    .line 236
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v2

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/16 v3, 0x4919

    sub-int v4, v2, v0

    .line 242
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 243
    iget-object v4, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v4, v3}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 246
    :try_start_0
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v5

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    .line 252
    :goto_0
    iget-wide v7, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v7, v8, v5, v6, v3}, Lorg/apache/tomcat/jni/SSL;->readFromSSL(JJI)I

    move-result v3

    if-lez v3, :cond_2

    add-int/2addr v0, v3

    .line 254
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 255
    invoke-virtual {v4, v1, p1}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 256
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    return v3

    :cond_2
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_3
    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p1
.end method

.method private writeEncryptedData(Ljava/nio/ByteBuffer;)I
    .locals 8

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 190
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 191
    invoke-static {p1}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 192
    iget-wide v6, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v6, v7, v4, v5, v1}, Lorg/apache/tomcat/jni/SSL;->writeToBIO(JJI)I

    move-result v1

    if-ltz v1, :cond_3

    add-int/2addr v0, v1

    .line 194
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    iget-wide v6, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v6, v7, v4, v5, v3}, Lorg/apache/tomcat/jni/SSL;->readFromSSL(JJI)I

    move-result p1

    iput p1, p0, Lio/netty/handler/ssl/OpenSslEngine;->lastPrimingReadResult:I

    return v1

    .line 199
    :cond_0
    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v2, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 202
    :try_start_0
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v4

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 208
    :goto_0
    invoke-virtual {v2, v3, p1}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 210
    iget-wide v6, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v6, v7, v4, v5, v1}, Lorg/apache/tomcat/jni/SSL;->writeToBIO(JJI)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/2addr v0, v1

    .line 212
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    iget-wide v6, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v6, v7, v4, v5, v3}, Lorg/apache/tomcat/jni/SSL;->readFromSSL(JJI)I

    move-result p1

    iput p1, p0, Lio/netty/handler/ssl/OpenSslEngine;->lastPrimingReadResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    return v1

    .line 216
    :cond_2
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    :cond_3
    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p1
.end method

.method private writePlaintextData(Ljava/nio/ByteBuffer;)I
    .locals 8

    .line 142
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 143
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    const/16 v3, 0x4000

    .line 144
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-static {p1}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 149
    iget-wide v5, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v5, v6, v3, v4, v2}, Lorg/apache/tomcat/jni/SSL;->writeToSSL(JJI)I

    move-result v1

    if-lez v1, :cond_3

    add-int/2addr v0, v1

    .line 151
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v1

    .line 155
    :cond_0
    iget-object v3, p0, Lio/netty/handler/ssl/OpenSslEngine;->alloc:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v3, v2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 158
    :try_start_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v4

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/tomcat/jni/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    :goto_0
    add-int v6, v0, v2

    .line 164
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v6, 0x0

    .line 166
    invoke-virtual {v3, v6, p1}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 167
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 169
    iget-wide v6, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v6, v7, v4, v5, v2}, Lorg/apache/tomcat/jni/SSL;->writeToSSL(JJI)I

    move-result v1

    if-lez v1, :cond_2

    add-int/2addr v0, v1

    .line 171
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    return v1

    .line 174
    :cond_2
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 181
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSL.writeToSSL() returned a non-positive value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 177
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p1
.end method


# virtual methods
.method public declared-synchronized beginHandshake()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 749
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-nez v0, :cond_0

    .line 753
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    .line 770
    new-instance v0, Ljava/lang/Error;

    goto :goto_1

    .line 768
    :pswitch_0
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->RENEGOTIATION_UNSUPPORTED:Ljavax/net/ssl/SSLException;

    throw v0

    .line 765
    :pswitch_1
    iput v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    goto :goto_0

    .line 755
    :pswitch_2
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/SSL;->doHandshake(J)I

    .line 756
    iput v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    :goto_0
    monitor-exit p0

    return-void

    .line 770
    :goto_1
    :try_start_1
    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 750
    :cond_0
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->ENGINE_CLOSED:Ljavax/net/ssl/SSLException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 748
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized closeInbound()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 550
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 551
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 554
    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z

    .line 555
    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    .line 557
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-eqz v0, :cond_2

    .line 558
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->receivedShutdown:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V

    .line 560
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Inbound closed before receiving peer\'s close_notify: possible truncation attack?"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 549
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeOutbound()V
    .locals 3

    monitor-enter p0

    .line 576
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 577
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 580
    :try_start_1
    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z

    .line 581
    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    .line 583
    iget v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-eqz v1, :cond_1

    iget v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->destroyed:I

    if-nez v1, :cond_1

    .line 584
    iget-wide v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v1, v2}, Lorg/apache/tomcat/jni/SSL;->getShutdown(J)I

    move-result v1

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_2

    .line 586
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->shutdownSSL(J)I

    goto :goto_0

    .line 590
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 575
    monitor-exit p0

    throw v0
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 606
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .line 621
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 3

    monitor-enter p0

    .line 791
    :try_start_0
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-eqz v0, :cond_8

    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->destroyed:I

    if-eqz v0, :cond_0

    goto :goto_1

    .line 796
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->handshakeFinished:Z

    if-nez v0, :cond_5

    .line 798
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->pendingWrittenBytesInBIO(J)I

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 804
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->isInInit(J)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 805
    iput-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->handshakeFinished:Z

    .line 806
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->getCipherForSSL(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->cipher:Ljava/lang/String;

    .line 807
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 809
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->fallbackApplicationProtocol:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x3a

    const/16 v2, 0x5f

    .line 812
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->applicationProtocol:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 814
    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->applicationProtocol:Ljava/lang/String;

    .line 816
    :goto_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 821
    :cond_4
    :try_start_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 825
    :cond_5
    :try_start_3
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v0, :cond_7

    .line 827
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->pendingWrittenBytesInBIO(J)I

    move-result v0

    if-eqz v0, :cond_6

    .line 828
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 832
    :cond_6
    :try_start_4
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 835
    :cond_7
    :try_start_5
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 792
    :cond_8
    :goto_1
    :try_start_6
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 790
    monitor-exit p0

    throw v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .line 631
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->session:Ljavax/net/ssl/SSLSession;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Lio/netty/handler/ssl/OpenSslEngine$1;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/OpenSslEngine$1;-><init>(Lio/netty/handler/ssl/OpenSslEngine;)V

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->session:Ljavax/net/ssl/SSLSession;

    :cond_0
    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 601
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .line 616
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isInboundDone()Z
    .locals 1

    monitor-enter p0

    .line 571
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOutboundDone()Z
    .locals 1

    monitor-enter p0

    .line 596
    :try_start_0
    iget-boolean v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 877
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    .line 611
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    .line 626
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setNeedClientAuth(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 853
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setUseClientMode(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 841
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setWantClientAuth(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 865
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    monitor-enter p0

    .line 126
    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/OpenSslEngine;->DESTROYED_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->freeSSL(J)V

    .line 128
    iget-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v0, v1}, Lorg/apache/tomcat/jni/SSL;->freeBIO(J)V

    const-wide/16 v0, 0x0

    .line 129
    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    iput-wide v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    .line 132
    iput-boolean v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    iput-boolean v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z

    iput-boolean v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 125
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 415
    :try_start_0
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->destroyed:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 416
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    if-eqz p1, :cond_13

    if-eqz p2, :cond_12

    .line 426
    :try_start_1
    array-length v0, p2

    if-ge p3, v0, :cond_11

    add-int v0, p3, p4

    array-length v2, p2

    if-gt v0, v2, :cond_11

    move p4, p3

    const/4 v2, 0x0

    :goto_0
    if-ge p4, v0, :cond_3

    .line 435
    aget-object v3, p2, p4

    if-eqz v3, :cond_2

    .line 439
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_1

    .line 442
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 440
    :cond_1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1

    .line 437
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 446
    :cond_3
    iget p4, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-nez p4, :cond_4

    .line 447
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->beginHandshakeImplicitly()V

    .line 452
    :cond_4
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    .line 453
    iget-boolean v3, p0, Lio/netty/handler/ssl/OpenSslEngine;->handshakeFinished:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v3, :cond_6

    :cond_5
    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v3, :cond_6

    .line 454
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p2

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 458
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/16 v3, 0x4919

    const/4 v4, 0x1

    if-gt p4, v3, :cond_10

    .line 468
    iput v1, p0, Lio/netty/handler/ssl/OpenSslEngine;->lastPrimingReadResult:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    :try_start_3
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/OpenSslEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr p1, v1

    .line 476
    :try_start_4
    invoke-static {}, Lorg/apache/tomcat/jni/SSL;->getLastError()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_8

    const-string v3, "error:00000000:"

    .line 477
    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 478
    sget-object p1, Lio/netty/handler/ssl/OpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p1}, Lio/netty/util/internal/logging/InternalLogger;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 479
    sget-object p1, Lio/netty/handler/ssl/OpenSslEngine;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SSL_read failed: primingReadResult: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lio/netty/handler/ssl/OpenSslEngine;->lastPrimingReadResult:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "; OpenSSL error: \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V

    .line 485
    :cond_7
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V

    .line 486
    new-instance p1, Ljavax/net/ssl/SSLException;

    invoke-direct {p1, p4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 490
    :cond_8
    iget-wide v5, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v5, v6}, Lorg/apache/tomcat/jni/SSL;->isInInit(J)I

    move-result p4

    if-nez p4, :cond_9

    iget-wide v5, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {v5, v6}, Lorg/apache/tomcat/jni/SSL;->pendingReadableBytesInSSL(J)I

    move-result p4

    goto :goto_1

    :cond_9
    const/4 p4, 0x0

    :goto_1
    if-ge v2, p4, :cond_a

    .line 494
    new-instance p2, Ljavax/net/ssl/SSLEngineResult;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_a
    :goto_2
    if-ge p3, v0, :cond_e

    .line 501
    :try_start_5
    aget-object v2, p2, p3

    .line 502
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_b

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_b
    if-gtz p4, :cond_c

    goto :goto_3

    .line 513
    :cond_c
    :try_start_6
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/OpenSslEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_d

    goto :goto_3

    :cond_d
    add-int/2addr v1, v3

    sub-int/2addr p4, v3

    .line 525
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_a

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 515
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 531
    :cond_e
    :goto_3
    iget-boolean p2, p0, Lio/netty/handler/ssl/OpenSslEngine;->receivedShutdown:Z

    if-nez p2, :cond_f

    iget-wide p2, p0, Lio/netty/handler/ssl/OpenSslEngine;->ssl:J

    invoke-static {p2, p3}, Lorg/apache/tomcat/jni/SSL;->getShutdown(J)I

    move-result p2

    const/4 p3, 0x2

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_f

    .line 532
    iput-boolean v4, p0, Lio/netty/handler/ssl/OpenSslEngine;->receivedShutdown:Z

    .line 533
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->closeOutbound()V

    .line 534
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->closeInbound()V

    .line 537
    :cond_f
    new-instance p2, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p3

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p2

    :catch_1
    move-exception p1

    .line 472
    :try_start_8
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 459
    :cond_10
    iput-boolean v4, p0, Lio/netty/handler/ssl/OpenSslEngine;->isInboundDone:Z

    .line 460
    iput-boolean v4, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z

    .line 461
    iput-boolean v4, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    .line 462
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V

    .line 463
    sget-object p1, Lio/netty/handler/ssl/OpenSslEngine;->ENCRYPTED_PACKET_OVERSIZED:Ljavax/net/ssl/SSLException;

    throw p1

    .line 427
    :cond_11
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", length: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (expected: offset <= offset + length <= dsts.length ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "))"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dsts"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "src"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p1

    .line 414
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    monitor-enter p0

    .line 310
    :try_start_0
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->destroyed:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 311
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    if-eqz p1, :cond_e

    if-eqz p4, :cond_d

    .line 322
    :try_start_1
    array-length v0, p1

    if-ge p2, v0, :cond_c

    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_c

    .line 328
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_b

    .line 333
    iget v0, p0, Lio/netty/handler/ssl/OpenSslEngine;->accepted:I

    if-nez v0, :cond_1

    .line 334
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->beginHandshakeImplicitly()V

    .line 339
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 340
    iget-boolean v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->handshakeFinished:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->engineClosed:Z

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v2, :cond_3

    .line 341
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p2

    sget-object p3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {p1, p2, p3, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 348
    :cond_3
    :try_start_2
    iget-wide v2, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v2, v3}, Lorg/apache/tomcat/jni/SSL;->pendingWrittenBytesInBIO(J)I

    move-result v2

    if-lez v2, :cond_6

    .line 351
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-ge p1, v2, :cond_4

    .line 353
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct {p1, p2, v0, v1, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 358
    :cond_4
    :try_start_3
    invoke-direct {p0, p4, v2}, Lio/netty/handler/ssl/OpenSslEngine;->readEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr p1, v1

    .line 366
    :try_start_4
    iget-boolean p2, p0, Lio/netty/handler/ssl/OpenSslEngine;->isOutboundDone:Z

    if-eqz p2, :cond_5

    .line 367
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->shutdown()V

    .line 370
    :cond_5
    new-instance p2, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p3

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    invoke-direct {p2, p3, p4, v1, p1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p2

    :catch_0
    move-exception p1

    .line 360
    :try_start_5
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_a

    .line 376
    aget-object v2, p1, p2

    .line 377
    :cond_7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_9

    .line 381
    :try_start_6
    invoke-direct {p0, v2}, Lio/netty/handler/ssl/OpenSslEngine;->writePlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/2addr v0, v3

    .line 387
    :try_start_7
    iget-wide v3, p0, Lio/netty/handler/ssl/OpenSslEngine;->networkBIO:J

    invoke-static {v3, v4}, Lorg/apache/tomcat/jni/SSL;->pendingWrittenBytesInBIO(J)I

    move-result v3

    if-lez v3, :cond_7

    .line 390
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-ge p1, v3, :cond_8

    .line 392
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    sget-object p2, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    invoke-direct {p1, p2, p3, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object p1

    .line 397
    :cond_8
    :try_start_8
    invoke-direct {p0, p4, v3}, Lio/netty/handler/ssl/OpenSslEngine;->readEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/2addr p1, v1

    .line 402
    :try_start_9
    new-instance p2, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p3

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    invoke-direct {p2, p3, p4, v0, p1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p2

    :catch_1
    move-exception p1

    .line 399
    :try_start_a
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 383
    new-instance p2, Ljavax/net/ssl/SSLException;

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 407
    :cond_a
    new-instance p1, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object p2

    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    invoke-direct {p1, p2, p3, v0, v1}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object p1

    .line 329
    :cond_b
    :try_start_b
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1

    .line 323
    :cond_c
    new-instance p4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (expected: offset <= offset + length <= srcs.length ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "))"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 319
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dst"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "srcs"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_0
    move-exception p1

    .line 309
    monitor-exit p0

    throw p1
.end method
