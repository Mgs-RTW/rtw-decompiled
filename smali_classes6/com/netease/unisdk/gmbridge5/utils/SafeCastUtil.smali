.class public Lcom/netease/unisdk/gmbridge5/utils/SafeCastUtil;
.super Ljava/lang/Object;
.source "SafeCastUtil.java"


# static fields
.field private static final G:J = 0x40000000L

.field private static final K:J = 0x400L

.field private static final M:J = 0x100000L

.field private static final T:J = 0x10000000000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2UnitStr(J)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x5

    .line 24
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    .line 25
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TB"

    aput-object v3, v0, v2

    const/4 v3, 0x1

    const-string v4, "GB"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "MB"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "KB"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "B"

    aput-object v4, v0, v3

    const-wide/16 v3, 0x1

    cmp-long v5, p0, v3

    if-gez v5, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/4 v3, 0x0

    .line 31
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 32
    aget-wide v4, v1, v2

    cmp-long v6, p0, v4

    if-ltz v6, :cond_1

    .line 34
    aget-object v0, v0, v2

    invoke-static {p0, p1, v4, v5, v0}, Lcom/netease/unisdk/gmbridge5/utils/SafeCastUtil;->format(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    nop

    :array_0
    .array-data 8
        0x10000000000L
        0x40000000
        0x100000
        0x400
        0x1
    .end array-data
.end method

.method private static format(JJLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    long-to-double p0, p0

    long-to-double p2, p2

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, p2

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    :goto_0
    const/4 p2, 0x2

    .line 43
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object p4, p2, p0

    const-string p0, "%.1f %s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static str2int(Ljava/lang/String;I)I
    .locals 0

    .line 17
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method
