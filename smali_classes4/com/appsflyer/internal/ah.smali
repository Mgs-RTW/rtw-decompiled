.class public Lcom/appsflyer/internal/ah;
.super Ljava/lang/Object;


# direct methods
.method public static AFDateFormat([BBJ)V
    .locals 6

    .prologue
    .line 1133
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1135
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1137
    aget-byte v1, p0, v0

    xor-int/2addr v1, p1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1140
    :cond_1
    return-void
.end method
