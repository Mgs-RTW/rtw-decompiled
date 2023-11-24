.class Lorg/spongycastle/crypto/tls/DTLSReplayWindow;
.super Ljava/lang/Object;
.source "DTLSReplayWindow.java"


# static fields
.field private static final VALID_SEQ_MASK:J = 0xffffffffffffL

.field private static final WINDOW_SIZE:J = 0x40L


# instance fields
.field private bitmap:J

.field private latestConfirmedSeq:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 15
    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void
.end method


# virtual methods
.method reportAuthenticated(J)V
    .locals 7

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    .line 59
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v2, p1, v0

    const-wide/16 v0, 0x40

    const-wide/16 v3, 0x1

    if-gtz v2, :cond_0

    .line 61
    iget-wide v5, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long/2addr v5, p1

    cmp-long p1, v5, v0

    if-gez p1, :cond_2

    .line 64
    iget-wide p1, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v0, v5

    shl-long v0, v3, v0

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    goto :goto_1

    .line 69
    :cond_0
    iget-wide v5, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long v5, p1, v5

    cmp-long v2, v5, v0

    if-ltz v2, :cond_1

    .line 72
    iput-wide v3, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    goto :goto_0

    .line 76
    :cond_1
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v2, v5

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    .line 77
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    or-long/2addr v0, v3

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    .line 79
    :goto_0
    iput-wide p1, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    :cond_2
    :goto_1
    return-void

    .line 56
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'seq\' out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method reset()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void
.end method

.method shouldDiscard(J)Z
    .locals 5

    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p1

    cmp-long v2, v0, p1

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    return v0

    .line 31
    :cond_0
    iget-wide v1, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v3, p1, v1

    if-gtz v3, :cond_2

    .line 33
    iget-wide v1, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x40

    cmp-long v3, v1, p1

    if-ltz v3, :cond_1

    return v0

    .line 38
    :cond_1
    iget-wide p1, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    const-wide/16 v3, 0x1

    long-to-int v1, v1

    shl-long v1, v3, v1

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
