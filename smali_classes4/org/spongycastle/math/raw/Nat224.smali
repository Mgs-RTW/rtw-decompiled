.class public abstract Lorg/spongycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([II[II[II)I
    .locals 9

    add-int/lit8 v0, p1, 0x0

    .line 41
    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    .line 42
    aput v5, p4, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 44
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    .line 45
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 47
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    .line 48
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 50
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    .line 51
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 53
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    .line 54
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    .line 56
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    .line 57
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x6

    .line 59
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x6

    long-to-int p0, v0

    .line 60
    aput p0, p4, p5

    ushr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static add([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 14
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 15
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 17
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 18
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 20
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 21
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 23
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 24
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 26
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 27
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 29
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 30
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 32
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 33
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addBothTo([II[II[II)I
    .locals 10

    add-int/lit8 v0, p1, 0x0

    .line 95
    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    aget v5, p4, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 96
    aput v5, p4, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 98
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x1

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 99
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 101
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x2

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 102
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 104
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x3

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 105
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 107
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x4

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 108
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    .line 110
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x5

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 111
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x6

    .line 113
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-int/lit8 p5, p5, 0x6

    aget p2, p4, p5

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 114
    aput p0, p4, p5

    ushr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static addBothTo([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 68
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 69
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 71
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 72
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 74
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 75
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 77
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 78
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 80
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 81
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 83
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 84
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 86
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 87
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addTo([II[III)I
    .locals 9

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p4, p1, 0x0

    .line 149
    aget p4, p0, p4

    int-to-long v4, p4

    and-long/2addr v4, v2

    add-int/lit8 p4, p3, 0x0

    aget v6, p2, p4

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 150
    aput v4, p2, p4

    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x1

    .line 152
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 153
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x2

    .line 155
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 156
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x3

    .line 158
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 159
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x4

    .line 161
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 162
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x5

    .line 164
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 165
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 p1, p1, 0x6

    .line 167
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 168
    aput p0, p2, p3

    ushr-long p0, v0, p4

    long-to-int p0, p0

    return p0
.end method

.method public static addTo([I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 122
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 123
    aput v5, p1, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 125
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 126
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 128
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 129
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 131
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 132
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 134
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 135
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 137
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 138
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 140
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    add-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 141
    aput p0, p1, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static addToEachOther([II[II)I
    .locals 11

    add-int/lit8 v0, p1, 0x0

    .line 176
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p3, 0x0

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    const-wide/16 v6, 0x0

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 177
    aput v6, p0, v0

    .line 178
    aput v6, p2, v5

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x1

    .line 180
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x1

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 181
    aput v6, p0, v5

    .line 182
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x2

    .line 184
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x2

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 185
    aput v6, p0, v5

    .line 186
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x3

    .line 188
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x3

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 189
    aput v6, p0, v5

    .line 190
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x4

    .line 192
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x4

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 193
    aput v6, p0, v5

    .line 194
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 v5, p1, 0x5

    .line 196
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x5

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 197
    aput v6, p0, v5

    .line 198
    aput v6, p2, v8

    ushr-long/2addr v1, v0

    add-int/lit8 p1, p1, 0x6

    .line 200
    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p3, p3, 0x6

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v3, v1

    .line 201
    aput v3, p0, p1

    .line 202
    aput v3, p2, p3

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static copy([I[I)V
    .locals 2

    const/4 v0, 0x0

    .line 209
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 210
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 211
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 212
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x4

    .line 213
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x5

    .line 214
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x6

    .line 215
    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public static create()[I
    .locals 1

    const/4 v0, 0x7

    .line 220
    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0xe

    .line 225
    new-array v0, v0, [I

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7

    .line 230
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat224;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat224;->sub([II[II[II)I

    goto :goto_0

    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    .line 237
    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/raw/Nat224;->sub([II[II[II)I

    :goto_0
    return v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_1

    .line 246
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4

    .line 256
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_1

    .line 261
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 263
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 265
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    .line 266
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0

    .line 258
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBit([II)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 275
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_2

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 283
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static gte([II[II)Z
    .locals 5

    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    add-int v2, p1, v0

    .line 304
    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    .line 305
    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static gte([I[I)Z
    .locals 5

    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    .line 290
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 291
    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isOne([I)Z
    .locals 4

    const/4 v0, 0x0

    .line 316
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    .line 322
    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isZero([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 334
    aget v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static mul([II[II[II)V
    .locals 36

    add-int/lit8 v5, p3, 0x0

    .line 408
    aget v5, p2, v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-int/lit8 v9, p3, 0x1

    .line 409
    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    add-int/lit8 v11, p3, 0x2

    .line 410
    aget v11, p2, v11

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-int/lit8 v13, p3, 0x3

    .line 411
    aget v13, p2, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-int/lit8 v15, p3, 0x4

    move-wide/from16 v16, v13

    .line 412
    aget v13, p2, v15

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-int/lit8 v15, p3, 0x5

    move-wide/from16 v18, v13

    .line 413
    aget v13, p2, v15

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-int/lit8 v3, p3, 0x6

    .line 414
    aget v2, p2, v3

    int-to-long v2, v2

    and-long/2addr v2, v7

    add-int/lit8 v15, p1, 0x0

    .line 417
    aget v1, p0, v15

    int-to-long v0, v1

    and-long/2addr v0, v7

    mul-long v20, v0, v5

    const-wide/16 v22, 0x0

    add-long v7, v20, v22

    add-int/lit8 v15, p5, 0x0

    move-wide/from16 v26, v5

    long-to-int v5, v7

    .line 419
    aput v5, p4, v15

    const/16 v5, 0x20

    ushr-long v6, v7, v5

    mul-long v20, v0, v9

    add-long v6, v6, v20

    add-int/lit8 v8, p5, 0x1

    move-wide/from16 v28, v9

    long-to-int v9, v6

    .line 422
    aput v9, p4, v8

    ushr-long/2addr v6, v5

    mul-long v8, v0, v11

    add-long/2addr v6, v8

    add-int/lit8 v8, p5, 0x2

    long-to-int v9, v6

    .line 425
    aput v9, p4, v8

    ushr-long/2addr v6, v5

    mul-long v8, v0, v16

    add-long/2addr v6, v8

    add-int/lit8 v8, p5, 0x3

    long-to-int v9, v6

    .line 428
    aput v9, p4, v8

    ushr-long/2addr v6, v5

    mul-long v8, v0, v18

    add-long/2addr v6, v8

    add-int/lit8 v8, p5, 0x4

    long-to-int v9, v6

    .line 431
    aput v9, p4, v8

    ushr-long/2addr v6, v5

    mul-long v8, v0, v13

    add-long/2addr v6, v8

    add-int/lit8 v8, p5, 0x5

    long-to-int v9, v6

    .line 434
    aput v9, p4, v8

    ushr-long/2addr v6, v5

    mul-long v0, v0, v2

    add-long/2addr v6, v0

    add-int/lit8 v0, p5, 0x6

    long-to-int v1, v6

    .line 437
    aput v1, p4, v0

    ushr-long v0, v6, v5

    add-int/lit8 v6, p5, 0x7

    long-to-int v0, v0

    .line 439
    aput v0, p4, v6

    const/4 v0, 0x1

    move/from16 v4, p5

    const/4 v1, 0x1

    :goto_0
    const/4 v6, 0x7

    if-ge v1, v6, :cond_0

    add-int/2addr v4, v0

    add-int v7, p1, v1

    .line 445
    aget v7, p0, v7

    int-to-long v9, v7

    const-wide v20, 0xffffffffL

    and-long v9, v9, v20

    mul-long v24, v9, v26

    add-int/lit8 v7, v4, 0x0

    .line 446
    aget v0, p4, v7

    int-to-long v5, v0

    and-long v5, v5, v20

    add-long v24, v24, v5

    add-long v5, v24, v22

    long-to-int v0, v5

    .line 447
    aput v0, p4, v7

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v24, v9, v28

    add-int/lit8 v7, v4, 0x1

    .line 449
    aget v0, p4, v7

    move/from16 v30, v1

    int-to-long v0, v0

    and-long v0, v0, v20

    add-long v24, v24, v0

    add-long v5, v5, v24

    long-to-int v0, v5

    .line 450
    aput v0, p4, v7

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v24, v9, v11

    add-int/lit8 v1, v4, 0x2

    .line 452
    aget v7, p4, v1

    move/from16 v31, v1

    int-to-long v0, v7

    and-long v0, v0, v20

    add-long v24, v24, v0

    add-long v5, v5, v24

    long-to-int v0, v5

    .line 453
    aput v0, p4, v31

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v24, v9, v16

    add-int/lit8 v1, v4, 0x3

    .line 455
    aget v7, p4, v1

    move/from16 v32, v1

    int-to-long v0, v7

    and-long v0, v0, v20

    add-long v24, v24, v0

    add-long v5, v5, v24

    long-to-int v0, v5

    .line 456
    aput v0, p4, v32

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v24, v9, v18

    add-int/lit8 v1, v4, 0x4

    .line 458
    aget v7, p4, v1

    move/from16 v33, v1

    int-to-long v0, v7

    and-long v0, v0, v20

    add-long v24, v24, v0

    add-long v5, v5, v24

    long-to-int v0, v5

    .line 459
    aput v0, p4, v33

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v24, v9, v13

    add-int/lit8 v1, v4, 0x5

    .line 461
    aget v7, p4, v1

    move/from16 v34, v1

    int-to-long v0, v7

    and-long v0, v0, v20

    add-long v24, v24, v0

    add-long v5, v5, v24

    long-to-int v0, v5

    .line 462
    aput v0, p4, v34

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    mul-long v9, v9, v2

    add-int/lit8 v1, v4, 0x6

    .line 464
    aget v7, p4, v1

    move/from16 v35, v1

    int-to-long v0, v7

    and-long v0, v0, v20

    add-long/2addr v9, v0

    add-long/2addr v5, v9

    long-to-int v0, v5

    .line 465
    aput v0, p4, v35

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    add-int/lit8 v1, v4, 0x7

    long-to-int v5, v5

    .line 467
    aput v5, p4, v1

    add-int/lit8 v1, v30, 0x1

    const/4 v0, 0x1

    const/16 v5, 0x20

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 34

    const/4 v2, 0x0

    .line 344
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 v7, 0x1

    .line 345
    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/4 v10, 0x2

    .line 346
    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v5

    const/4 v13, 0x3

    .line 347
    aget v14, p1, v13

    int-to-long v13, v14

    and-long/2addr v13, v5

    const/16 v16, 0x4

    .line 348
    aget v10, p1, v16

    move-wide/from16 v19, v8

    int-to-long v7, v10

    and-long/2addr v7, v5

    const/4 v9, 0x5

    .line 349
    aget v10, p1, v9

    int-to-long v9, v10

    and-long/2addr v9, v5

    const/16 v21, 0x6

    .line 350
    aget v1, p1, v21

    move-wide/from16 v22, v9

    int-to-long v9, v1

    and-long/2addr v9, v5

    .line 353
    aget v1, p0, v2

    int-to-long v0, v1

    and-long/2addr v0, v5

    mul-long v24, v0, v3

    const-wide/16 v26, 0x0

    add-long v5, v24, v26

    move-wide/from16 v28, v3

    long-to-int v3, v5

    .line 355
    aput v3, p2, v2

    const/16 v2, 0x20

    ushr-long v3, v5, v2

    mul-long v5, v0, v19

    add-long/2addr v3, v5

    long-to-int v5, v3

    const/4 v6, 0x1

    .line 358
    aput v5, p2, v6

    ushr-long/2addr v3, v2

    mul-long v24, v0, v11

    add-long v3, v3, v24

    long-to-int v5, v3

    const/16 v17, 0x2

    .line 361
    aput v5, p2, v17

    ushr-long/2addr v3, v2

    mul-long v17, v0, v13

    add-long v3, v3, v17

    long-to-int v5, v3

    const/4 v15, 0x3

    .line 364
    aput v5, p2, v15

    ushr-long/2addr v3, v2

    mul-long v17, v0, v7

    add-long v3, v3, v17

    long-to-int v5, v3

    .line 367
    aput v5, p2, v16

    ushr-long/2addr v3, v2

    mul-long v15, v0, v22

    add-long/2addr v3, v15

    long-to-int v5, v3

    const/4 v15, 0x5

    .line 370
    aput v5, p2, v15

    ushr-long/2addr v3, v2

    mul-long v0, v0, v9

    add-long/2addr v3, v0

    long-to-int v0, v3

    .line 373
    aput v0, p2, v21

    ushr-long v0, v3, v2

    long-to-int v0, v0

    const/4 v1, 0x7

    .line 375
    aput v0, p2, v1

    :goto_0
    if-ge v6, v1, :cond_0

    .line 380
    aget v3, p0, v6

    int-to-long v3, v3

    const-wide v15, 0xffffffffL

    and-long/2addr v3, v15

    mul-long v17, v3, v28

    add-int/lit8 v5, v6, 0x0

    .line 381
    aget v1, p2, v5

    move-wide/from16 v30, v3

    int-to-long v2, v1

    and-long/2addr v2, v15

    add-long v17, v17, v2

    add-long v2, v17, v26

    long-to-int v1, v2

    .line 382
    aput v1, p2, v5

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    mul-long v4, v30, v19

    add-int/lit8 v17, v6, 0x1

    .line 384
    aget v1, p2, v17

    int-to-long v0, v1

    and-long/2addr v0, v15

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 385
    aput v0, p2, v17

    const/16 v0, 0x20

    ushr-long/2addr v2, v0

    mul-long v4, v30, v11

    add-int/lit8 v1, v6, 0x2

    .line 387
    aget v0, p2, v1

    move-wide/from16 v32, v11

    int-to-long v11, v0

    and-long/2addr v11, v15

    add-long/2addr v4, v11

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 388
    aput v0, p2, v1

    const/16 v0, 0x20

    ushr-long/2addr v2, v0

    mul-long v4, v30, v13

    add-int/lit8 v1, v6, 0x3

    .line 390
    aget v11, p2, v1

    int-to-long v11, v11

    and-long/2addr v11, v15

    add-long/2addr v4, v11

    add-long/2addr v2, v4

    long-to-int v4, v2

    .line 391
    aput v4, p2, v1

    ushr-long/2addr v2, v0

    mul-long v4, v30, v7

    add-int/lit8 v1, v6, 0x4

    .line 393
    aget v11, p2, v1

    int-to-long v11, v11

    and-long/2addr v11, v15

    add-long/2addr v4, v11

    add-long/2addr v2, v4

    long-to-int v4, v2

    .line 394
    aput v4, p2, v1

    ushr-long/2addr v2, v0

    mul-long v4, v30, v22

    add-int/lit8 v1, v6, 0x5

    .line 396
    aget v11, p2, v1

    int-to-long v11, v11

    and-long/2addr v11, v15

    add-long/2addr v4, v11

    add-long/2addr v2, v4

    long-to-int v4, v2

    .line 397
    aput v4, p2, v1

    ushr-long/2addr v2, v0

    mul-long v4, v30, v9

    add-int/lit8 v1, v6, 0x6

    .line 399
    aget v11, p2, v1

    int-to-long v11, v11

    and-long/2addr v11, v15

    add-long/2addr v4, v11

    add-long/2addr v2, v4

    long-to-int v4, v2

    .line 400
    aput v4, p2, v1

    ushr-long/2addr v2, v0

    add-int/lit8 v6, v6, 0x7

    long-to-int v1, v2

    .line 402
    aput v1, p2, v6

    move/from16 v6, v17

    move-wide/from16 v11, v32

    const/4 v1, 0x7

    const/16 v2, 0x20

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 22

    move/from16 v4, p0

    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-int/lit8 v4, p2, 0x0

    .line 561
    aget v4, p1, v4

    int-to-long v9, v4

    and-long/2addr v9, v7

    mul-long v11, v5, v9

    add-int/lit8 v4, p4, 0x0

    .line 562
    aget v4, p3, v4

    int-to-long v2, v4

    and-long/2addr v2, v7

    add-long/2addr v11, v2

    const-wide/16 v2, 0x0

    add-long/2addr v11, v2

    add-int/lit8 v2, p6, 0x0

    long-to-int v3, v11

    .line 563
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long/2addr v11, v2

    add-int/lit8 v3, p2, 0x1

    .line 565
    aget v3, p1, v3

    int-to-long v2, v3

    and-long/2addr v2, v7

    mul-long v14, v5, v2

    add-long/2addr v14, v9

    add-int/lit8 v9, p4, 0x1

    .line 566
    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    add-long/2addr v14, v9

    add-long/2addr v11, v14

    add-int/lit8 v9, p6, 0x1

    long-to-int v10, v11

    .line 567
    aput v10, p5, v9

    const/16 v9, 0x20

    ushr-long v10, v11, v9

    add-int/lit8 v9, p2, 0x2

    .line 569
    aget v9, p1, v9

    int-to-long v12, v9

    and-long v14, v12, v7

    mul-long v12, v5, v14

    add-long/2addr v12, v2

    add-int/lit8 v2, p4, 0x2

    .line 570
    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v7

    add-long/2addr v12, v2

    add-long/2addr v10, v12

    add-int/lit8 v2, p6, 0x2

    long-to-int v3, v10

    .line 571
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v9, v10, v2

    add-int/lit8 v2, p2, 0x3

    .line 573
    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v7

    mul-long v11, v5, v2

    add-long/2addr v11, v14

    add-int/lit8 v14, p4, 0x3

    .line 574
    aget v13, p3, v14

    move-wide/from16 v16, v2

    int-to-long v2, v13

    and-long/2addr v2, v7

    add-long/2addr v11, v2

    add-long/2addr v9, v11

    add-int/lit8 v2, p6, 0x3

    long-to-int v3, v9

    .line 575
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long/2addr v9, v2

    add-int/lit8 v2, p2, 0x4

    .line 577
    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v7

    mul-long v11, v5, v2

    add-long v11, v11, v16

    add-int/lit8 v14, p4, 0x4

    .line 578
    aget v13, p3, v14

    move-wide/from16 v18, v2

    int-to-long v2, v13

    and-long/2addr v2, v7

    add-long/2addr v11, v2

    add-long/2addr v9, v11

    add-int/lit8 v2, p6, 0x4

    long-to-int v3, v9

    .line 579
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long/2addr v9, v2

    add-int/lit8 v2, p2, 0x5

    .line 581
    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v7

    mul-long v11, v5, v2

    add-long v11, v11, v18

    add-int/lit8 v14, p4, 0x5

    .line 582
    aget v13, p3, v14

    move-wide/from16 v20, v2

    int-to-long v2, v13

    and-long/2addr v2, v7

    add-long/2addr v11, v2

    add-long/2addr v9, v11

    add-int/lit8 v2, p6, 0x5

    long-to-int v3, v9

    .line 583
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long/2addr v9, v2

    add-int/lit8 v1, p2, 0x6

    .line 585
    aget v0, p1, v1

    int-to-long v0, v0

    and-long/2addr v0, v7

    mul-long v5, v5, v0

    add-long v5, v5, v20

    add-int/lit8 v2, p4, 0x6

    .line 586
    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v9, v5

    add-int/lit8 v2, p6, 0x6

    long-to-int v3, v9

    .line 587
    aput v3, p5, v2

    const/16 v2, 0x20

    ushr-long v2, v9, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 16

    move-object/from16 v2, p3

    move/from16 v3, p0

    move/from16 v4, p4

    int-to-long v5, v3

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    and-long v9, p1, v7

    mul-long v11, v5, v9

    add-int/lit8 v3, v4, 0x0

    .line 681
    aget v13, v2, v3

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    const-wide/16 v13, 0x0

    add-long/2addr v11, v13

    long-to-int v15, v11

    .line 682
    aput v15, v2, v3

    const/16 v3, 0x20

    ushr-long/2addr v11, v3

    ushr-long v0, p1, v3

    mul-long v5, v5, v0

    add-long/2addr v5, v9

    add-int/lit8 v9, v4, 0x1

    .line 685
    aget v10, v2, v9

    int-to-long v13, v10

    and-long/2addr v13, v7

    add-long/2addr v5, v13

    add-long/2addr v11, v5

    long-to-int v5, v11

    .line 686
    aput v5, v2, v9

    ushr-long v5, v11, v3

    add-int/lit8 v9, v4, 0x2

    .line 688
    aget v10, v2, v9

    int-to-long v10, v10

    and-long/2addr v10, v7

    add-long/2addr v0, v10

    add-long/2addr v5, v0

    long-to-int v0, v5

    .line 689
    aput v0, v2, v9

    ushr-long v0, v5, v3

    add-int/lit8 v5, v4, 0x3

    .line 691
    aget v6, v2, v5

    int-to-long v9, v6

    and-long/2addr v7, v9

    add-long/2addr v0, v7

    long-to-int v6, v0

    .line 692
    aput v6, v2, v5

    ushr-long/2addr v0, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    const/4 v1, 0x4

    .line 694
    invoke-static {v0, v2, v4, v1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    mul-long v0, v0, p0

    add-int/lit8 v4, p3, 0x0

    .line 703
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    long-to-int v7, v0

    .line 704
    aput v7, p2, v4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v7, p3, 0x1

    .line 706
    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr p0, v8

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 707
    aput p0, p2, v7

    ushr-long p0, v0, v4

    add-int/lit8 v0, p3, 0x2

    .line 709
    aget v1, p2, v0

    int-to-long v7, v1

    and-long/2addr v2, v7

    add-long/2addr p0, v2

    long-to-int v1, p0

    .line 710
    aput v1, p2, v0

    ushr-long/2addr p0, v4

    cmp-long v0, p0, v5

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    const/4 p1, 0x3

    .line 712
    invoke-static {p0, p2, p3, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([II[II[II)I
    .locals 39

    add-int/lit8 v2, p3, 0x0

    .line 515
    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x1

    .line 516
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-int/lit8 v8, p3, 0x2

    .line 517
    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-int/lit8 v10, p3, 0x3

    .line 518
    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-int/lit8 v12, p3, 0x4

    .line 519
    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v4

    add-int/lit8 v14, p3, 0x5

    .line 520
    aget v14, p2, v14

    move-wide v15, v12

    int-to-long v12, v14

    and-long/2addr v12, v4

    add-int/lit8 v1, p3, 0x6

    .line 521
    aget v0, p2, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    const-wide/16 v17, 0x0

    const/4 v14, 0x0

    move/from16 v19, p5

    move-wide/from16 v20, v17

    :goto_0
    const/4 v4, 0x7

    if-ge v14, v4, :cond_0

    add-int v24, p1, v14

    .line 526
    aget v4, p0, v24

    int-to-long v4, v4

    const-wide v22, 0xffffffffL

    and-long v4, v4, v22

    mul-long v25, v4, v2

    add-int/lit8 v24, v19, 0x0

    move-wide/from16 v27, v2

    .line 527
    aget v2, p4, v24

    int-to-long v2, v2

    and-long v2, v2, v22

    add-long v25, v25, v2

    add-long v2, v25, v17

    move/from16 v29, v14

    long-to-int v14, v2

    .line 528
    aput v14, p4, v24

    const/16 v14, 0x20

    ushr-long/2addr v2, v14

    mul-long v25, v4, v6

    add-int/lit8 v24, v19, 0x1

    .line 530
    aget v14, p4, v24

    move-wide/from16 v30, v6

    int-to-long v6, v14

    const-wide v22, 0xffffffffL

    and-long v6, v6, v22

    add-long v25, v25, v6

    add-long v2, v2, v25

    long-to-int v6, v2

    .line 531
    aput v6, p4, v24

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    mul-long v25, v4, v8

    add-int/lit8 v7, v19, 0x2

    .line 533
    aget v14, p4, v7

    move/from16 v32, v7

    int-to-long v6, v14

    and-long v6, v6, v22

    add-long v25, v25, v6

    add-long v2, v2, v25

    long-to-int v6, v2

    .line 534
    aput v6, p4, v32

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    mul-long v25, v4, v10

    add-int/lit8 v7, v19, 0x3

    .line 536
    aget v14, p4, v7

    move/from16 v33, v7

    int-to-long v6, v14

    and-long v6, v6, v22

    add-long v25, v25, v6

    add-long v2, v2, v25

    long-to-int v6, v2

    .line 537
    aput v6, p4, v33

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    mul-long v25, v4, v15

    add-int/lit8 v7, v19, 0x4

    .line 539
    aget v14, p4, v7

    move/from16 v34, v7

    int-to-long v6, v14

    and-long v6, v6, v22

    add-long v25, v25, v6

    add-long v2, v2, v25

    long-to-int v6, v2

    .line 540
    aput v6, p4, v34

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    mul-long v25, v4, v12

    add-int/lit8 v7, v19, 0x5

    .line 542
    aget v14, p4, v7

    move/from16 v35, v7

    int-to-long v6, v14

    and-long v6, v6, v22

    add-long v25, v25, v6

    add-long v2, v2, v25

    long-to-int v6, v2

    .line 543
    aput v6, p4, v35

    const/16 v6, 0x20

    ushr-long/2addr v2, v6

    mul-long v4, v4, v0

    add-int/lit8 v7, v19, 0x6

    .line 545
    aget v14, p4, v7

    move/from16 v36, v7

    int-to-long v6, v14

    and-long v6, v6, v22

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v4, v2

    .line 546
    aput v4, p4, v36

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    const/4 v5, 0x7

    add-int/lit8 v19, v19, 0x7

    .line 548
    aget v5, p4, v19

    int-to-long v5, v5

    and-long v5, v5, v22

    move-wide/from16 v37, v0

    move-wide/from16 v0, v20

    add-long v20, v0, v5

    add-long v2, v2, v20

    long-to-int v0, v2

    .line 549
    aput v0, p4, v19

    ushr-long v20, v2, v4

    add-int/lit8 v14, v29, 0x1

    move/from16 v19, v24

    move-wide/from16 v2, v27

    move-wide/from16 v6, v30

    move-wide/from16 v0, v37

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v0, v20

    long-to-int v0, v0

    return v0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 35

    const/4 v1, 0x0

    .line 473
    aget v2, p1, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x1

    .line 474
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/4 v8, 0x2

    .line 475
    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    const/4 v10, 0x3

    .line 476
    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/4 v12, 0x4

    .line 477
    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/4 v14, 0x5

    .line 478
    aget v14, p1, v14

    move-wide/from16 v16, v2

    int-to-long v1, v14

    and-long/2addr v1, v4

    const/4 v3, 0x6

    .line 479
    aget v0, p1, v3

    move-wide/from16 v18, v1

    int-to-long v1, v0

    and-long/2addr v1, v4

    const-wide/16 v20, 0x0

    move-wide/from16 v22, v20

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    .line 484
    aget v14, p0, v0

    move-wide/from16 v24, v1

    int-to-long v1, v14

    and-long/2addr v1, v4

    mul-long v14, v1, v16

    add-int/lit8 v26, v0, 0x0

    .line 485
    aget v3, p2, v26

    move-wide/from16 v27, v12

    int-to-long v12, v3

    and-long/2addr v12, v4

    add-long/2addr v14, v12

    add-long v12, v14, v20

    long-to-int v3, v12

    .line 486
    aput v3, p2, v26

    const/16 v3, 0x20

    ushr-long/2addr v12, v3

    mul-long v14, v1, v6

    add-int/lit8 v26, v0, 0x1

    .line 488
    aget v3, p2, v26

    move-wide/from16 v29, v6

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-long/2addr v14, v6

    add-long/2addr v12, v14

    long-to-int v3, v12

    .line 489
    aput v3, p2, v26

    const/16 v3, 0x20

    ushr-long v6, v12, v3

    mul-long v12, v1, v8

    add-int/lit8 v14, v0, 0x2

    .line 491
    aget v3, p2, v14

    move-wide/from16 v31, v8

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v12, v8

    add-long/2addr v6, v12

    long-to-int v3, v6

    .line 492
    aput v3, p2, v14

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    mul-long v8, v1, v10

    add-int/lit8 v12, v0, 0x3

    .line 494
    aget v13, p2, v12

    int-to-long v13, v13

    and-long/2addr v13, v4

    add-long/2addr v8, v13

    add-long/2addr v6, v8

    long-to-int v8, v6

    .line 495
    aput v8, p2, v12

    ushr-long/2addr v6, v3

    mul-long v12, v1, v27

    add-int/lit8 v8, v0, 0x4

    .line 497
    aget v9, p2, v8

    move-wide/from16 v33, v10

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v12, v9

    add-long/2addr v6, v12

    long-to-int v9, v6

    .line 498
    aput v9, p2, v8

    ushr-long/2addr v6, v3

    mul-long v8, v1, v18

    add-int/lit8 v10, v0, 0x5

    .line 500
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v4

    add-long/2addr v8, v11

    add-long/2addr v6, v8

    long-to-int v8, v6

    .line 501
    aput v8, p2, v10

    ushr-long/2addr v6, v3

    mul-long v1, v1, v24

    add-int/lit8 v8, v0, 0x6

    .line 503
    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v1, v9

    add-long/2addr v6, v1

    long-to-int v1, v6

    .line 504
    aput v1, p2, v8

    ushr-long v1, v6, v3

    add-int/lit8 v0, v0, 0x7

    .line 506
    aget v6, p2, v0

    int-to-long v6, v6

    and-long/2addr v6, v4

    move-wide/from16 v8, v22

    add-long v22, v8, v6

    add-long v1, v1, v22

    long-to-int v6, v1

    .line 507
    aput v6, p2, v0

    ushr-long v22, v1, v3

    move-wide/from16 v1, v24

    move/from16 v0, v26

    move-wide/from16 v12, v27

    move-wide/from16 v6, v29

    move-wide/from16 v8, v31

    move-wide/from16 v10, v33

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v8, v22

    long-to-int v0, v8

    return v0
.end method

.method public static mulByWord(I[I)I
    .locals 9

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x0

    .line 596
    aget v4, p1, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v4, v4, v0

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 597
    aput v6, p1, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    const/4 v6, 0x1

    .line 599
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 600
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x2

    .line 602
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 603
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x3

    .line 605
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 606
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x4

    .line 608
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 609
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x5

    .line 611
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 612
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x6

    .line 614
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v2, v7

    mul-long v0, v0, v2

    add-long/2addr v4, v0

    long-to-int v0, v4

    .line 615
    aput v0, p1, v6

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static mulByWordAddTo(I[I[I)I
    .locals 11

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x0

    .line 623
    aget v4, p2, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v4, v4, v0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 624
    aput v6, p2, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    const/4 v6, 0x1

    .line 626
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 627
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x2

    .line 629
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 630
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x3

    .line 632
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 633
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x4

    .line 635
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 636
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x5

    .line 638
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 639
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x6

    .line 641
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v0, v0, v7

    aget p1, p1, v6

    int-to-long v7, p1

    and-long/2addr v2, v7

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    long-to-int p1, v4

    .line 642
    aput p1, p2, v6

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static mulWord(I[I[II)I
    .locals 8

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p0, 0x0

    .line 737
    :cond_0
    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    add-long/2addr v4, v6

    add-int v6, p3, p0

    long-to-int v7, v4

    .line 738
    aput v7, p2, v6

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p0, p0, 0x1

    const/4 v6, 0x7

    if-lt p0, v6, :cond_0

    long-to-int p0, v4

    return p0
.end method

.method public static mulWordAddTo(I[II[II)I
    .locals 11

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p0, p2, 0x0

    .line 650
    aget p0, p1, p0

    int-to-long v4, p0

    and-long/2addr v4, v2

    mul-long v4, v4, v0

    add-int/lit8 p0, p4, 0x0

    aget v6, p3, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 651
    aput v6, p3, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x1

    .line 653
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    add-int/lit8 v8, p4, 0x1

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 654
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x2

    .line 656
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    add-int/lit8 v8, p4, 0x2

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 657
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x3

    .line 659
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    add-int/lit8 v8, p4, 0x3

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 660
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x4

    .line 662
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    add-int/lit8 v8, p4, 0x4

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 663
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x5

    .line 665
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v6, v6, v0

    add-int/lit8 v8, p4, 0x5

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 666
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 p2, p2, 0x6

    .line 668
    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    mul-long v0, v0, p1

    add-int/lit8 p4, p4, 0x6

    aget p1, p3, p4

    int-to-long p1, p1

    and-long/2addr p1, v2

    add-long/2addr v0, p1

    add-long/2addr v4, v0

    long-to-int p1, v4

    .line 669
    aput p1, p3, p4

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static mulWordDwordAdd(IJ[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    mul-long v4, v4, v0

    add-int/lit8 p0, p4, 0x0

    .line 719
    aget v6, p3, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    long-to-int v8, v4

    .line 720
    aput v8, p3, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    ushr-long/2addr p1, p0

    mul-long v0, v0, p1

    add-int/lit8 p1, p4, 0x1

    .line 722
    aget p2, p3, p1

    int-to-long v8, p2

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v4, v0

    long-to-int p2, v4

    .line 723
    aput p2, p3, p1

    ushr-long p1, v4, p0

    add-int/lit8 v0, p4, 0x2

    .line 725
    aget v1, p3, v0

    int-to-long v4, v1

    and-long/2addr v2, v4

    add-long/2addr p1, v2

    long-to-int v1, p1

    .line 726
    aput v1, p3, v0

    ushr-long p0, p1, p0

    cmp-long p2, p0, v6

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    const/4 p1, 0x3

    .line 728
    invoke-static {p0, p3, p4, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static square([II[II)V
    .locals 49

    add-int/lit8 v3, p1, 0x0

    .line 886
    aget v3, p0, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v8, 0x6

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v11, v8, -0x1

    add-int v8, p1, v8

    .line 894
    aget v8, p0, v8

    int-to-long v12, v8

    and-long/2addr v12, v5

    mul-long v12, v12, v12

    add-int/lit8 v9, v9, -0x1

    add-int v8, p3, v9

    shl-int/lit8 v10, v10, 0x1f

    const/16 v14, 0x21

    ushr-long v5, v12, v14

    long-to-int v5, v5

    or-int/2addr v5, v10

    .line 896
    aput v5, p2, v8

    add-int/lit8 v9, v9, -0x1

    add-int v5, p3, v9

    const/4 v6, 0x1

    ushr-long v7, v12, v6

    long-to-int v7, v7

    .line 897
    aput v7, p2, v5

    long-to-int v10, v12

    if-gtz v11, :cond_0

    mul-long v7, v3, v3

    shl-int/lit8 v5, v10, 0x1f

    int-to-long v9, v5

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    ushr-long v11, v7, v14

    or-long/2addr v9, v11

    add-int/lit8 v5, p3, 0x0

    long-to-int v11, v7

    .line 905
    aput v11, p2, v5

    const/16 v5, 0x20

    ushr-long/2addr v7, v5

    long-to-int v7, v7

    and-int/2addr v7, v6

    add-int/lit8 v8, p1, 0x1

    .line 910
    aget v8, p0, v8

    int-to-long v11, v8

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    add-int/lit8 v8, p3, 0x2

    .line 911
    aget v6, p2, v8

    int-to-long v5, v6

    and-long/2addr v5, v13

    mul-long v13, v11, v3

    add-long/2addr v9, v13

    long-to-int v13, v9

    add-int/lit8 v14, p3, 0x1

    shl-int/lit8 v19, v13, 0x1

    or-int v7, v19, v7

    .line 916
    aput v7, p2, v14

    ushr-int/lit8 v7, v13, 0x1f

    const/16 v13, 0x20

    ushr-long/2addr v9, v13

    add-long/2addr v5, v9

    add-int/lit8 v9, p1, 0x2

    .line 921
    aget v9, p0, v9

    int-to-long v9, v9

    const-wide v13, 0xffffffffL

    and-long/2addr v9, v13

    add-int/lit8 v19, p3, 0x3

    .line 922
    aget v0, p2, v19

    int-to-long v0, v0

    and-long/2addr v0, v13

    add-int/lit8 v20, p3, 0x4

    .line 923
    aget v2, p2, v20

    move-wide/from16 v21, v0

    int-to-long v0, v2

    and-long/2addr v0, v13

    mul-long v13, v9, v3

    add-long/2addr v5, v13

    long-to-int v2, v5

    shl-int/lit8 v13, v2, 0x1

    or-int/2addr v7, v13

    .line 927
    aput v7, p2, v8

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    mul-long v13, v9, v11

    add-long/2addr v5, v13

    add-long v5, v21, v5

    ushr-long v13, v5, v7

    add-long/2addr v0, v13

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-int/lit8 v14, p1, 0x3

    .line 934
    aget v14, p0, v14

    int-to-long v13, v14

    and-long/2addr v13, v7

    add-int/lit8 v23, p3, 0x5

    move-wide/from16 v24, v9

    .line 935
    aget v9, p2, v23

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v18, 0x20

    ushr-long v15, v0, v18

    add-long/2addr v9, v15

    and-long/2addr v0, v7

    add-int/lit8 v26, p3, 0x6

    move-wide/from16 v27, v0

    .line 936
    aget v0, p2, v26

    int-to-long v0, v0

    and-long/2addr v0, v7

    ushr-long v15, v9, v18

    add-long/2addr v0, v15

    and-long/2addr v9, v7

    mul-long v7, v13, v3

    add-long/2addr v5, v7

    long-to-int v7, v5

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v2, v8

    .line 940
    aput v2, p2, v19

    ushr-int/lit8 v2, v7, 0x1f

    ushr-long v5, v5, v18

    mul-long v7, v13, v11

    add-long/2addr v5, v7

    add-long v5, v27, v5

    ushr-long v7, v5, v18

    mul-long v27, v13, v24

    add-long v7, v7, v27

    add-long/2addr v9, v7

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    ushr-long v15, v9, v18

    add-long/2addr v0, v15

    and-long/2addr v9, v7

    add-int/lit8 v15, p1, 0x4

    move-wide/from16 v29, v13

    .line 949
    aget v13, p0, v15

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-int/lit8 v27, p3, 0x7

    move-wide/from16 v31, v9

    .line 950
    aget v9, p2, v27

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v18, 0x20

    ushr-long v15, v0, v18

    add-long/2addr v9, v15

    and-long/2addr v0, v7

    add-int/lit8 v28, p3, 0x8

    move-wide/from16 v33, v0

    .line 951
    aget v0, p2, v28

    int-to-long v0, v0

    and-long/2addr v0, v7

    ushr-long v15, v9, v18

    add-long/2addr v0, v15

    and-long/2addr v9, v7

    mul-long v7, v13, v3

    add-long/2addr v5, v7

    long-to-int v7, v5

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v2, v8

    .line 955
    aput v2, p2, v20

    ushr-int/lit8 v2, v7, 0x1f

    ushr-long v5, v5, v18

    mul-long v7, v13, v11

    add-long/2addr v5, v7

    add-long v5, v31, v5

    ushr-long v7, v5, v18

    mul-long v31, v13, v24

    add-long v7, v7, v31

    add-long v7, v33, v7

    const-wide v15, 0xffffffffL

    and-long/2addr v5, v15

    ushr-long v31, v7, v18

    mul-long v33, v13, v29

    add-long v31, v31, v33

    add-long v9, v9, v31

    and-long/2addr v7, v15

    ushr-long v31, v9, v18

    add-long v0, v0, v31

    and-long/2addr v9, v15

    add-int/lit8 v20, p1, 0x5

    move-wide/from16 v35, v13

    .line 966
    aget v13, p0, v20

    int-to-long v13, v13

    and-long/2addr v13, v15

    add-int/lit8 v20, p3, 0x9

    move-wide/from16 v37, v9

    .line 967
    aget v9, p2, v20

    int-to-long v9, v9

    and-long/2addr v9, v15

    const/16 v18, 0x20

    ushr-long v31, v0, v18

    add-long v9, v9, v31

    and-long/2addr v0, v15

    add-int/lit8 v31, p3, 0xa

    move-wide/from16 v39, v0

    .line 968
    aget v0, p2, v31

    int-to-long v0, v0

    and-long/2addr v0, v15

    ushr-long v32, v9, v18

    add-long v0, v0, v32

    and-long/2addr v9, v15

    mul-long v32, v13, v3

    add-long v5, v5, v32

    move-wide/from16 v41, v3

    long-to-int v3, v5

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 972
    aput v2, p2, v23

    ushr-int/lit8 v2, v3, 0x1f

    ushr-long v3, v5, v18

    mul-long v5, v13, v11

    add-long/2addr v3, v5

    add-long/2addr v7, v3

    ushr-long v3, v7, v18

    mul-long v5, v13, v24

    add-long/2addr v3, v5

    add-long v3, v37, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v7, v5

    ushr-long v15, v3, v18

    mul-long v32, v13, v29

    add-long v15, v15, v32

    add-long v15, v39, v15

    and-long/2addr v3, v5

    ushr-long v32, v15, v18

    mul-long v37, v13, v35

    add-long v32, v32, v37

    add-long v9, v9, v32

    and-long/2addr v15, v5

    ushr-long v32, v9, v18

    add-long v0, v0, v32

    and-long/2addr v9, v5

    const/16 v17, 0x6

    add-int/lit8 v17, p1, 0x6

    move-wide/from16 v43, v13

    .line 985
    aget v13, p0, v17

    int-to-long v13, v13

    and-long/2addr v13, v5

    add-int/lit8 v17, p3, 0xb

    move-wide/from16 v45, v9

    .line 986
    aget v9, p2, v17

    int-to-long v9, v9

    and-long/2addr v9, v5

    const/16 v18, 0x20

    ushr-long v32, v0, v18

    add-long v9, v9, v32

    and-long/2addr v0, v5

    add-int/lit8 v19, p3, 0xc

    move-wide/from16 v47, v0

    .line 987
    aget v0, p2, v19

    int-to-long v0, v0

    and-long/2addr v0, v5

    ushr-long v32, v9, v18

    add-long v0, v0, v32

    and-long/2addr v5, v9

    mul-long v9, v13, v41

    add-long/2addr v7, v9

    long-to-int v9, v7

    shl-int/lit8 v10, v9, 0x1

    or-int/2addr v2, v10

    .line 991
    aput v2, p2, v26

    ushr-int/lit8 v2, v9, 0x1f

    ushr-long v7, v7, v18

    mul-long v11, v11, v13

    add-long/2addr v7, v11

    add-long/2addr v3, v7

    ushr-long v7, v3, v18

    mul-long v9, v13, v24

    add-long/2addr v7, v9

    add-long/2addr v7, v15

    ushr-long v9, v7, v18

    mul-long v11, v13, v29

    add-long/2addr v9, v11

    add-long v9, v45, v9

    ushr-long v11, v9, v18

    mul-long v15, v13, v35

    add-long/2addr v11, v15

    add-long v11, v47, v11

    ushr-long v15, v11, v18

    mul-long v13, v13, v43

    add-long/2addr v15, v13

    add-long/2addr v5, v15

    ushr-long v13, v5, v18

    add-long/2addr v0, v13

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1002
    aput v2, p2, v27

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v7

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1005
    aput v2, p2, v28

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v9

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1008
    aput v2, p2, v20

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v11

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1011
    aput v2, p2, v31

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v5

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1014
    aput v2, p2, v17

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v0

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1017
    aput v2, p2, v19

    ushr-int/lit8 v2, v3, 0x1f

    add-int/lit8 v3, p3, 0xd

    .line 1019
    aget v4, p2, v3

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    long-to-int v0, v0

    add-int/2addr v4, v0

    const/4 v0, 0x1

    shl-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v2

    .line 1020
    aput v0, p2, v3

    return-void

    :cond_0
    const/16 v17, 0x6

    move v8, v11

    const-wide v5, 0xffffffffL

    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 51

    const/4 v1, 0x0

    .line 747
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v7, 0xe

    const/4 v7, 0x6

    const/16 v8, 0xe

    const/4 v9, 0x0

    :goto_0
    add-int/lit8 v10, v7, -0x1

    .line 755
    aget v7, p0, v7

    int-to-long v11, v7

    and-long/2addr v11, v4

    mul-long v11, v11, v11

    add-int/lit8 v8, v8, -0x1

    shl-int/lit8 v7, v9, 0x1f

    const/16 v9, 0x21

    ushr-long v13, v11, v9

    long-to-int v13, v13

    or-int/2addr v7, v13

    .line 757
    aput v7, p1, v8

    add-int/lit8 v8, v8, -0x1

    const/4 v7, 0x1

    ushr-long v13, v11, v7

    long-to-int v13, v13

    .line 758
    aput v13, p1, v8

    long-to-int v11, v11

    if-gtz v10, :cond_0

    mul-long v12, v2, v2

    shl-int/lit8 v8, v11, 0x1f

    int-to-long v10, v8

    and-long/2addr v10, v4

    ushr-long v8, v12, v9

    or-long/2addr v8, v10

    long-to-int v10, v12

    .line 766
    aput v10, p1, v1

    const/16 v1, 0x20

    ushr-long v10, v12, v1

    long-to-int v10, v10

    and-int/2addr v10, v7

    .line 771
    aget v11, p0, v7

    int-to-long v11, v11

    and-long/2addr v11, v4

    const/4 v13, 0x2

    .line 772
    aget v14, p1, v13

    int-to-long v13, v14

    and-long/2addr v13, v4

    mul-long v16, v11, v2

    add-long v8, v8, v16

    long-to-int v6, v8

    shl-int/lit8 v16, v6, 0x1

    or-int v10, v16, v10

    .line 777
    aput v10, p1, v7

    ushr-int/lit8 v6, v6, 0x1f

    ushr-long/2addr v8, v1

    add-long/2addr v13, v8

    const/4 v8, 0x2

    .line 782
    aget v9, p0, v8

    int-to-long v8, v9

    and-long/2addr v8, v4

    const/4 v10, 0x3

    .line 783
    aget v7, p1, v10

    move-wide/from16 v19, v11

    int-to-long v10, v7

    and-long/2addr v10, v4

    const/4 v7, 0x4

    .line 784
    aget v12, p1, v7

    move-wide/from16 v22, v10

    int-to-long v10, v12

    and-long/2addr v10, v4

    mul-long v16, v8, v2

    add-long v13, v13, v16

    long-to-int v12, v13

    shl-int/lit8 v16, v12, 0x1

    or-int v6, v16, v6

    const/4 v15, 0x2

    .line 788
    aput v6, p1, v15

    ushr-int/lit8 v6, v12, 0x1f

    ushr-long v12, v13, v1

    mul-long v14, v8, v19

    add-long/2addr v12, v14

    add-long v12, v22, v12

    ushr-long v14, v12, v1

    add-long/2addr v10, v14

    and-long/2addr v12, v4

    const/4 v14, 0x3

    .line 795
    aget v7, p0, v14

    move-wide/from16 v25, v2

    int-to-long v1, v7

    and-long/2addr v1, v4

    const/4 v3, 0x5

    .line 796
    aget v7, p1, v3

    move-wide/from16 v27, v8

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/16 v9, 0x20

    ushr-long v14, v10, v9

    add-long/2addr v7, v14

    and-long/2addr v10, v4

    const/4 v14, 0x6

    .line 797
    aget v3, p1, v14

    move-wide/from16 v29, v10

    int-to-long v10, v3

    and-long/2addr v10, v4

    ushr-long v14, v7, v9

    add-long/2addr v10, v14

    and-long/2addr v7, v4

    mul-long v14, v1, v25

    add-long/2addr v12, v14

    long-to-int v3, v12

    shl-int/lit8 v14, v3, 0x1

    or-int/2addr v6, v14

    const/4 v14, 0x3

    .line 801
    aput v6, p1, v14

    ushr-int/lit8 v3, v3, 0x1f

    ushr-long/2addr v12, v9

    mul-long v14, v1, v19

    add-long/2addr v12, v14

    add-long v12, v29, v12

    ushr-long v14, v12, v9

    mul-long v16, v1, v27

    add-long v14, v14, v16

    add-long/2addr v7, v14

    and-long/2addr v12, v4

    ushr-long v14, v7, v9

    add-long/2addr v10, v14

    and-long/2addr v7, v4

    const/4 v6, 0x4

    .line 810
    aget v14, p0, v6

    move-wide/from16 v31, v10

    int-to-long v9, v14

    and-long/2addr v9, v4

    const/4 v6, 0x7

    .line 811
    aget v11, p1, v6

    move-wide/from16 v33, v7

    int-to-long v6, v11

    and-long/2addr v6, v4

    const/16 v8, 0x20

    ushr-long v14, v31, v8

    add-long/2addr v6, v14

    and-long v14, v31, v4

    const/16 v11, 0x8

    .line 812
    aget v8, p1, v11

    move-wide/from16 v35, v12

    int-to-long v11, v8

    and-long/2addr v11, v4

    const/16 v8, 0x20

    ushr-long v16, v6, v8

    add-long v11, v11, v16

    and-long/2addr v6, v4

    mul-long v16, v9, v25

    add-long v4, v35, v16

    long-to-int v13, v4

    shl-int/lit8 v16, v13, 0x1

    or-int v3, v16, v3

    const/16 v16, 0x4

    .line 816
    aput v3, p1, v16

    ushr-int/lit8 v3, v13, 0x1f

    ushr-long/2addr v4, v8

    mul-long v16, v9, v19

    add-long v4, v4, v16

    add-long v4, v33, v4

    ushr-long v16, v4, v8

    mul-long v21, v9, v27

    add-long v16, v16, v21

    add-long v14, v14, v16

    const-wide v16, 0xffffffffL

    and-long v4, v4, v16

    ushr-long v21, v14, v8

    mul-long v23, v9, v1

    add-long v21, v21, v23

    add-long v6, v6, v21

    and-long v14, v14, v16

    ushr-long v21, v6, v8

    add-long v11, v11, v21

    and-long v6, v6, v16

    const/4 v13, 0x5

    .line 827
    aget v8, p0, v13

    move-wide/from16 v37, v9

    int-to-long v8, v8

    and-long v8, v8, v16

    const/16 v10, 0x9

    .line 828
    aget v13, p1, v10

    move-wide/from16 v39, v1

    int-to-long v1, v13

    and-long v1, v1, v16

    const/16 v13, 0x20

    ushr-long v21, v11, v13

    add-long v1, v1, v21

    and-long v11, v11, v16

    const/16 v21, 0xa

    .line 829
    aget v10, p1, v21

    move-wide/from16 v41, v11

    int-to-long v10, v10

    and-long v10, v10, v16

    ushr-long v21, v1, v13

    add-long v10, v10, v21

    and-long v1, v1, v16

    mul-long v16, v8, v25

    add-long v4, v4, v16

    long-to-int v12, v4

    shl-int/lit8 v16, v12, 0x1

    or-int v3, v16, v3

    const/16 v16, 0x5

    .line 833
    aput v3, p1, v16

    ushr-int/lit8 v3, v12, 0x1f

    ushr-long/2addr v4, v13

    mul-long v16, v8, v19

    add-long v4, v4, v16

    add-long/2addr v14, v4

    ushr-long v4, v14, v13

    mul-long v16, v8, v27

    add-long v4, v4, v16

    add-long/2addr v6, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v14, v4

    ushr-long v16, v6, v13

    mul-long v21, v8, v39

    add-long v16, v16, v21

    add-long v16, v41, v16

    and-long/2addr v6, v4

    ushr-long v21, v16, v13

    mul-long v23, v8, v37

    add-long v21, v21, v23

    add-long v1, v1, v21

    and-long v16, v16, v4

    ushr-long v21, v1, v13

    add-long v10, v10, v21

    and-long/2addr v1, v4

    const/4 v12, 0x6

    .line 846
    aget v0, p0, v12

    move-wide/from16 v43, v14

    int-to-long v13, v0

    and-long/2addr v13, v4

    const/16 v0, 0xb

    .line 847
    aget v0, p1, v0

    move-wide/from16 v45, v8

    int-to-long v8, v0

    and-long/2addr v8, v4

    const/16 v0, 0x20

    ushr-long v21, v10, v0

    add-long v8, v8, v21

    and-long/2addr v10, v4

    const/16 v12, 0xc

    .line 848
    aget v12, p1, v12

    move-wide/from16 v47, v10

    int-to-long v10, v12

    and-long/2addr v10, v4

    ushr-long v21, v8, v0

    add-long v10, v10, v21

    and-long/2addr v4, v8

    mul-long v8, v13, v25

    add-long v8, v43, v8

    long-to-int v12, v8

    shl-int/lit8 v15, v12, 0x1

    or-int/2addr v3, v15

    const/4 v15, 0x6

    .line 852
    aput v3, p1, v15

    ushr-int/lit8 v3, v12, 0x1f

    ushr-long/2addr v8, v0

    mul-long v19, v19, v13

    add-long v8, v8, v19

    add-long/2addr v6, v8

    ushr-long v8, v6, v0

    mul-long v19, v13, v27

    add-long v8, v8, v19

    add-long v8, v16, v8

    ushr-long v15, v8, v0

    mul-long v17, v13, v39

    add-long v15, v15, v17

    add-long/2addr v1, v15

    ushr-long v15, v1, v0

    mul-long v17, v13, v37

    add-long v15, v15, v17

    move-wide/from16 v49, v1

    add-long v1, v47, v15

    ushr-long v15, v1, v0

    mul-long v13, v13, v45

    add-long/2addr v15, v13

    add-long/2addr v4, v15

    ushr-long v12, v4, v0

    add-long/2addr v10, v12

    long-to-int v0, v6

    shl-int/lit8 v6, v0, 0x1

    or-int/2addr v3, v6

    const/4 v6, 0x7

    .line 863
    aput v3, p1, v6

    ushr-int/lit8 v0, v0, 0x1f

    long-to-int v3, v8

    shl-int/lit8 v6, v3, 0x1

    or-int/2addr v0, v6

    const/16 v6, 0x8

    .line 866
    aput v0, p1, v6

    ushr-int/lit8 v0, v3, 0x1f

    move-wide/from16 v6, v49

    long-to-int v3, v6

    shl-int/lit8 v6, v3, 0x1

    or-int/2addr v0, v6

    const/16 v6, 0x9

    .line 869
    aput v0, p1, v6

    ushr-int/lit8 v0, v3, 0x1f

    long-to-int v1, v1

    const/16 v2, 0xa

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 872
    aput v0, p1, v2

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v4

    const/16 v2, 0xb

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 875
    aput v0, p1, v2

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v10

    const/16 v2, 0xc

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v0, v3

    .line 878
    aput v0, p1, v2

    ushr-int/lit8 v0, v1, 0x1f

    const/16 v1, 0xd

    .line 880
    aget v1, p1, v1

    const/16 v2, 0x20

    ushr-long v2, v10, v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    const/16 v2, 0xd

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 881
    aput v0, p1, v2

    return-void

    :cond_0
    move v7, v10

    move v9, v11

    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 9

    add-int/lit8 v0, p1, 0x0

    .line 1053
    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    .line 1054
    aput v5, p4, v4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 1056
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    .line 1057
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 1059
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    .line 1060
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 1062
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    .line 1063
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 1065
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    .line 1066
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    .line 1068
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    .line 1069
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x6

    .line 1071
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x6

    long-to-int p0, v0

    .line 1072
    aput p0, p4, p5

    shr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static sub([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 1026
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 1027
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1029
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1030
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1032
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1033
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1035
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1036
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1038
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1039
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1041
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1042
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1044
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1045
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subBothFrom([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 1080
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 1081
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1083
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1084
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1086
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1087
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1089
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1090
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1092
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1093
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1095
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1096
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1098
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1099
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subFrom([II[II)I
    .locals 10

    add-int/lit8 v0, p3, 0x0

    .line 1134
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 1135
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x1

    .line 1137
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x1

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1138
    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x2

    .line 1140
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x2

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1141
    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x3

    .line 1143
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x3

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1144
    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x4

    .line 1146
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x4

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1147
    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 v5, p3, 0x5

    .line 1149
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x5

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1150
    aput v6, p2, v5

    shr-long/2addr v1, v0

    add-int/lit8 p3, p3, 0x6

    .line 1152
    aget v5, p2, p3

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v5, p0

    add-long/2addr v1, v5

    long-to-int p0, v1

    .line 1153
    aput p0, p2, p3

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static subFrom([I[I)I
    .locals 10

    const/4 v0, 0x0

    .line 1107
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 1108
    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1110
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1111
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1113
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1114
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1116
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1117
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1119
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1120
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1122
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1123
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1125
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1126
    aput p0, p1, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x1c

    .line 1160
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 1163
    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    .line 1166
    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1174
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 1175
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 1176
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 1177
    aput v0, p0, v1

    const/4 v1, 0x4

    .line 1178
    aput v0, p0, v1

    const/4 v1, 0x5

    .line 1179
    aput v0, p0, v1

    const/4 v1, 0x6

    .line 1180
    aput v0, p0, v1

    return-void
.end method
